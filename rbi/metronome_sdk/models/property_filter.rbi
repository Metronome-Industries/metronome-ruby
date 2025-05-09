# typed: strong

module MetronomeSDK
  module Models
    class PropertyFilter < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

      # The name of the event property.
      sig { returns(String) }
      attr_accessor :name

      # Determines whether the property must exist in the event. If true, only events
      # with this property will pass the filter. If false, only events without this
      # property will pass the filter. If null or omitted, the existence of the property
      # is optional.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :exists

      sig { params(exists: T::Boolean).void }
      attr_writer :exists

      # Specifies the allowed values for the property to match an event. An event will
      # pass the filter only if its property value is included in this list. If
      # undefined, all property values will pass the filter. Must be non-empty if
      # present.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :in_values

      sig { params(in_values: T::Array[String]).void }
      attr_writer :in_values

      # Specifies the values that prevent an event from matching the filter. An event
      # will not pass the filter if its property value is included in this list. If null
      # or empty, all property values will pass the filter. Must be non-empty if
      # present.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :not_in_values

      sig { params(not_in_values: T::Array[String]).void }
      attr_writer :not_in_values

      sig do
        params(
          name: String,
          exists: T::Boolean,
          in_values: T::Array[String],
          not_in_values: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the event property.
        name:,
        # Determines whether the property must exist in the event. If true, only events
        # with this property will pass the filter. If false, only events without this
        # property will pass the filter. If null or omitted, the existence of the property
        # is optional.
        exists: nil,
        # Specifies the allowed values for the property to match an event. An event will
        # pass the filter only if its property value is included in this list. If
        # undefined, all property values will pass the filter. Must be non-empty if
        # present.
        in_values: nil,
        # Specifies the values that prevent an event from matching the filter. An event
        # will not pass the filter if its property value is included in this list. If null
        # or empty, all property values will pass the filter. Must be non-empty if
        # present.
        not_in_values: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            exists: T::Boolean,
            in_values: T::Array[String],
            not_in_values: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
