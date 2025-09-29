# frozen_string_literal: true

module MetronomeSDK
  module Models
    # @see MetronomeSDK::Resources::Notifications#update
    class NotificationUpdateParams < MetronomeSDK::Internal::Type::BaseModel
      extend MetronomeSDK::Internal::Type::RequestParameters::Converter
      include MetronomeSDK::Internal::Type::RequestParameters

      # @!attribute policy
      #   Updated policy configuration. The policy.type must match the existing lifecycle
      #   event type.
      #
      #   @return [MetronomeSDK::Models::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy, MetronomeSDK::Models::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy]
      required :policy, union: -> { MetronomeSDK::NotificationUpdateParams::Policy }

      # @!attribute id
      #   The ID of the notification configuration to edit. Not provided when updating the
      #   configuration for system events
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute is_enabled
      #   Set to true to enable webhook messages for the notification indicated in the
      #   policy, false to disable. Only supported by system lifecycle events.
      #
      #   @return [Boolean, nil]
      optional :is_enabled, MetronomeSDK::Internal::Type::Boolean

      # @!method initialize(policy:, id: nil, is_enabled: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::NotificationUpdateParams} for more details.
      #
      #   @param policy [MetronomeSDK::Models::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy, MetronomeSDK::Models::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy] Updated policy configuration. The policy.type must match the existing lifecycle
      #
      #   @param id [String] The ID of the notification configuration to edit. Not provided when updating the
      #
      #   @param is_enabled [Boolean] Set to true to enable webhook messages for the notification indicated in the pol
      #
      #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

      # Updated policy configuration. The policy.type must match the existing lifecycle
      # event type.
      module Policy
        extend MetronomeSDK::Internal::Type::Union

        variant -> { MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy }

        variant -> { MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy }

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
          #   {MetronomeSDK::Models::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy}
          #   for more details.
          #
          #   @param offset [String] ISO-8601 duration string indicating how much time before or after the base event
          #
          #   @param type [String] The type of lifecycle event that this offset is based on.
        end

        class LifecycleEventSystemPolicy < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute type
          #   The type of lifecycle event (e.g., "contract.create", "contract.start")
          #
          #   @return [String]
          required :type, String

          # @!method initialize(type:)
          #   @param type [String] The type of lifecycle event (e.g., "contract.create", "contract.start")
        end

        # @!method self.variants
        #   @return [Array(MetronomeSDK::Models::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy, MetronomeSDK::Models::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy)]
      end
    end
  end
end
