# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class LifecycleEventOffsetPolicy < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute offset
        #   ISO-8601 duration string indicating how much time before or after the base event
        #   this notification should be sent. Positive values indicate notifications after
        #   the event, negative values indicate notifications before the event. Examples:
        #   "P1D" (1 day after), "-PT2H" (2 hours before)
        #
        #   @return [String]
        required :offset, String

        # @!attribute type
        #   The type of lifecycle event that this offset is based on.
        #
        #   @return [String]
        required :type, String

        # @!method initialize(offset:, type:)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V2::LifecycleEventOffsetPolicy} for more details.
        #
        #   @param offset [String] ISO-8601 duration string indicating how much time before or after the base event
        #
        #   @param type [String] The type of lifecycle event that this offset is based on.
      end
    end
  end
end
