# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class LifecycleEventSystemNotificationConfig < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute policy
        #
        #   @return [MetronomeSDK::Models::V2::LifecycleEventSystemPolicy]
        required :policy, -> { MetronomeSDK::V2::LifecycleEventSystemPolicy }

        # @!attribute type
        #   Indicates this is a system lifecycle event notification
        #
        #   @return [Symbol, MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig::Type]
        required :type, enum: -> { MetronomeSDK::V2::LifecycleEventSystemNotificationConfig::Type }

        # @!attribute is_enabled
        #   Whether or not webhook publishing for this lifecycle event is enabled
        #
        #   @return [Boolean, nil]
        optional :is_enabled, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(policy:, type:, is_enabled: nil)
        #   @param policy [MetronomeSDK::Models::V2::LifecycleEventSystemPolicy]
        #
        #   @param type [Symbol, MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig::Type] Indicates this is a system lifecycle event notification
        #
        #   @param is_enabled [Boolean] Whether or not webhook publishing for this lifecycle event is enabled

        # Indicates this is a system lifecycle event notification
        #
        # @see MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          SYSTEM_LIFECYCLE_EVENT = :SYSTEM_LIFECYCLE_EVENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
