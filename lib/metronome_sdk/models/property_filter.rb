# frozen_string_literal: true

module MetronomeSDK
  module Models
    class PropertyFilter < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute name
      #   The name of the event property.
      #
      #   @return [String]
      required :name, String

      # @!attribute exists
      #   Determines whether the property must exist in the event. If true, only events
      #   with this property will pass the filter. If false, only events without this
      #   property will pass the filter. If null or omitted, the existence of the property
      #   is optional.
      #
      #   @return [Boolean, nil]
      optional :exists, MetronomeSDK::Internal::Type::Boolean

      # @!attribute in_values
      #   Specifies the allowed values for the property to match an event. An event will
      #   pass the filter only if its property value is included in this list. If
      #   undefined, all property values will pass the filter. Must be non-empty if
      #   present.
      #
      #   @return [Array<String>, nil]
      optional :in_values, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!attribute not_in_values
      #   Specifies the values that prevent an event from matching the filter. An event
      #   will not pass the filter if its property value is included in this list. If null
      #   or empty, all property values will pass the filter. Must be non-empty if
      #   present.
      #
      #   @return [Array<String>, nil]
      optional :not_in_values, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(name:, exists: nil, in_values: nil, not_in_values: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::PropertyFilter} for more details.
      #
      #   @param name [String] The name of the event property.
      #
      #   @param exists [Boolean] Determines whether the property must exist in the event. If true, only events wi
      #   ...
      #
      #   @param in_values [Array<String>] Specifies the allowed values for the property to match an event. An event will p
      #   ...
      #
      #   @param not_in_values [Array<String>] Specifies the values that prevent an event from matching the filter. An event wi
      #   ...
    end
  end
end
