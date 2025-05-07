# frozen_string_literal: true

module MetronomeSDK
  module Models
    class EventTypeFilter < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute in_values
      #   A list of event types that are explicitly included in the billable metric. If
      #   specified, only events of these types will match the billable metric. Must be
      #   non-empty if present.
      #
      #   @return [Array<String>, nil]
      optional :in_values, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!attribute not_in_values
      #   A list of event types that are explicitly excluded from the billable metric. If
      #   specified, events of these types will not match the billable metric. Must be
      #   non-empty if present.
      #
      #   @return [Array<String>, nil]
      optional :not_in_values, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(in_values: nil, not_in_values: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::EventTypeFilter} for more details.
      #
      #   An optional filtering rule to match the 'event_type' property of an event.
      #
      #   @param in_values [Array<String>] A list of event types that are explicitly included in the billable metric. If sp
      #
      #   @param not_in_values [Array<String>] A list of event types that are explicitly excluded from the billable metric. If
    end
  end
end
