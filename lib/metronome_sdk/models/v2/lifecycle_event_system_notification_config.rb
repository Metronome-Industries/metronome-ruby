# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class LifecycleEventSystemNotificationConfig < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute policy
        #
        #   @return [MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig::Policy]
        required :policy, -> { MetronomeSDK::V2::LifecycleEventSystemNotificationConfig::Policy }

        # @!attribute type
        #   Indicates this is a system lifecycle event notification
        #
        #   @return [String]
        required :type, String

        # @!attribute is_enabled
        #   Whether or not webhook publishing for this lifecycle event is enabled
        #
        #   @return [Boolean, nil]
        optional :is_enabled, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(policy:, type:, is_enabled: nil)
        #   @param policy [MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig::Policy]
        #
        #   @param type [String] Indicates this is a system lifecycle event notification
        #
        #   @param is_enabled [Boolean] Whether or not webhook publishing for this lifecycle event is enabled

        # @see MetronomeSDK::Models::V2::LifecycleEventSystemNotificationConfig#policy
        class Policy < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute type
          #   The type of lifecycle event (e.g., "contract.create", "contract.start")
          #
          #   @return [String]
          required :type, String

          # @!method initialize(type:)
          #   @param type [String] The type of lifecycle event (e.g., "contract.create", "contract.start")
        end
      end
    end
  end
end
