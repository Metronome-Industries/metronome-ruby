# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      module Notifications
        # @see MetronomeSDK::Resources::V2::Notifications::Offset#archive
        class OffsetArchiveResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig]
          required :data, -> { MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig]
        end
      end
    end
  end
end
