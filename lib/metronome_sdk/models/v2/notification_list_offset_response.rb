# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Notifications#list_offset
      class NotificationListOffsetResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig] }

        # @!attribute cursor
        #
        #   @return [String, nil]
        optional :cursor, String, nil?: true

        # @!method initialize(data:, cursor: nil)
        #   @param data [Array<MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig>]
        #   @param cursor [String, nil]
      end
    end
  end
end
