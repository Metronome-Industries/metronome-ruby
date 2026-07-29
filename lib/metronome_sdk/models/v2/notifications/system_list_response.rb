# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      module Notifications
        # @see MetronomeSDK::Resources::V2::Notifications::System#list
        class SystemListResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig>]
          required :data,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::LifecycleEventSystemNotificationConfig] }

          # @!attribute cursor
          #
          #   @return [String, nil]
          optional :cursor, String, nil?: true

          # @!method initialize(data:, cursor: nil)
          #   @param data [Array<MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig>]
          #   @param cursor [String, nil]
        end
      end
    end
  end
end
