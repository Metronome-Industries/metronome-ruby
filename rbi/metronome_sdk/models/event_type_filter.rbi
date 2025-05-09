# typed: strong

module MetronomeSDK
  module Models
    class EventTypeFilter < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

      # A list of event types that are explicitly included in the billable metric. If
      # specified, only events of these types will match the billable metric. Must be
      # non-empty if present.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :in_values

      sig { params(in_values: T::Array[String]).void }
      attr_writer :in_values

      # A list of event types that are explicitly excluded from the billable metric. If
      # specified, events of these types will not match the billable metric. Must be
      # non-empty if present.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :not_in_values

      sig { params(not_in_values: T::Array[String]).void }
      attr_writer :not_in_values

      # An optional filtering rule to match the 'event_type' property of an event.
      sig do
        params(
          in_values: T::Array[String],
          not_in_values: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of event types that are explicitly included in the billable metric. If
        # specified, only events of these types will match the billable metric. Must be
        # non-empty if present.
        in_values: nil,
        # A list of event types that are explicitly excluded from the billable metric. If
        # specified, events of these types will not match the billable metric. Must be
        # non-empty if present.
        not_in_values: nil
      )
      end

      sig do
        override.returns(
          { in_values: T::Array[String], not_in_values: T::Array[String] }
        )
      end
      def to_hash
      end
    end
  end
end
