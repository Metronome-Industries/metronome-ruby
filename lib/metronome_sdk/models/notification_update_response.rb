# frozen_string_literal: true

module MetronomeSDK
  module Models
    # @see MetronomeSDK::Resources::Notifications#update
    class NotificationUpdateResponse < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig, MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig]
      required :data, union: -> { MetronomeSDK::Models::NotificationUpdateResponse::Data }

      # @!method initialize(data:)
      #   @param data [MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig, MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig]

      # @see MetronomeSDK::Models::NotificationUpdateResponse#data
      module Data
        extend MetronomeSDK::Internal::Type::Union

        variant -> { MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig }

        variant -> { MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig }

        class LifecycleEventSystemNotificationConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute policy
          #
          #   @return [MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig::Policy]
          required :policy,
                   -> { MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig::Policy }

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
          #   @param policy [MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig::Policy]
          #
          #   @param type [String] Indicates this is a system lifecycle event notification
          #
          #   @param is_enabled [Boolean] Whether or not webhook publishing for this lifecycle event is enabled

          # @see MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig#policy
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

        class LifecycleEventOffsetNotificationConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #   ID for this offset notification configuration
          #
          #   @return [String]
          required :id, String

          # @!attribute archived_at
          #   When this notification configuration was archived
          #
          #   @return [Time, nil]
          required :archived_at, Time, nil?: true

          # @!attribute created_at
          #   RFC 3339 timestamp when this notification configuration was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute created_by
          #   Who created this notification configuration
          #
          #   @return [String]
          required :created_by, String

          # @!attribute environment_type
          #   The environment type where this notification configuration was created.
          #
          #   @return [String]
          required :environment_type, String

          # @!attribute name
          #   The name for this offset notification configuration.
          #
          #   @return [String]
          required :name, String

          # @!attribute policy
          #
          #   @return [MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig::Policy]
          required :policy,
                   -> { MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig::Policy }

          # @!attribute type
          #   Indicates this is an offset lifecycle event notification
          #
          #   @return [String]
          required :type, String

          # @!method initialize(id:, archived_at:, created_at:, created_by:, environment_type:, name:, policy:, type:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig}
          #   for more details.
          #
          #   @param id [String] ID for this offset notification configuration
          #
          #   @param archived_at [Time, nil] When this notification configuration was archived
          #
          #   @param created_at [Time] RFC 3339 timestamp when this notification configuration was created.
          #
          #   @param created_by [String] Who created this notification configuration
          #
          #   @param environment_type [String] The environment type where this notification configuration was created.
          #
          #   @param name [String] The name for this offset notification configuration.
          #
          #   @param policy [MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig::Policy]
          #
          #   @param type [String] Indicates this is an offset lifecycle event notification

          # @see MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig#policy
          class Policy < MetronomeSDK::Internal::Type::BaseModel
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
            #   {MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig::Policy}
            #   for more details.
            #
            #   @param offset [String] ISO-8601 duration string indicating how much time before or after the base event
            #
            #   @param type [String] The type of lifecycle event that this offset is based on.
          end
        end

        # @!method self.variants
        #   @return [Array(MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventSystemNotificationConfig, MetronomeSDK::Models::NotificationUpdateResponse::Data::LifecycleEventOffsetNotificationConfig)]
      end
    end
  end
end
