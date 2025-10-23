# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Notifications#edit
      class NotificationEditResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig, MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig]
        required :data, union: -> { MetronomeSDK::Models::V2::NotificationEditResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig, MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig]

        # @see MetronomeSDK::Models::V2::NotificationEditResponse#data
        module Data
          extend MetronomeSDK::Internal::Type::Union

          variant -> { MetronomeSDK::V2::LifecycleEventSystemNotificationConfig }

          variant -> { MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig }

          # @!method self.variants
          #   @return [Array(MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig, MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig)]
        end
      end
    end
  end
end
