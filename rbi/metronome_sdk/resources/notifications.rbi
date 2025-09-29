# typed: strong

module MetronomeSDK
  module Resources
    class Notifications
      sig { returns(MetronomeSDK::Resources::Notifications::Offset) }
      attr_reader :offset

      sig { returns(MetronomeSDK::Resources::Notifications::System) }
      attr_reader :system_

      # Create an offset lifecycle event notification configuration. The lifecycle event
      # type is inferred from the policy.type field.
      sig do
        params(
          name: String,
          policy: MetronomeSDK::NotificationCreateParams::Policy::OrHash,
          uniqueness_key: String,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(MetronomeSDK::Models::NotificationCreateResponse)
      end
      def create(
        # The name for this offset notification configuration.
        name:,
        # The offset lifecycle event policy that defines when and how this notification
        # should be triggered. The lifecycle event type is inferred from the policy.type
        # field.
        policy:,
        # Optional uniqueness key to prevent duplicate notification configurations.
        uniqueness_key: nil,
        request_options: {}
      )
      end

      # Retrieve a specific offset lifecycle event notification configuration by ID.
      sig do
        params(
          id: String,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(MetronomeSDK::Models::NotificationRetrieveResponse)
      end
      def retrieve(
        # The ID of the notification configuration to retrieve
        id:,
        request_options: {}
      )
      end

      # Edit an existing offset lifecycle event notification configuration.
      sig do
        params(
          policy:
            T.any(
              MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy::OrHash,
              MetronomeSDK::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy::OrHash
            ),
          id: String,
          is_enabled: T::Boolean,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(MetronomeSDK::Models::NotificationUpdateResponse)
      end
      def update(
        # Updated policy configuration. The policy.type must match the existing lifecycle
        # event type.
        policy:,
        # The ID of the notification configuration to edit. Not provided when updating the
        # configuration for system events
        id: nil,
        # Set to true to enable webhook messages for the notification indicated in the
        # policy, false to disable. Only supported by system lifecycle events.
        is_enabled: nil,
        request_options: {}
      )
      end

      # Archive an offset lifecycle event notification configuration. Archived
      # notifications are not processed.
      sig do
        params(
          id: String,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(MetronomeSDK::Models::NotificationArchiveResponse)
      end
      def archive(
        # The ID of the offset lifecycle event notification configuration to archive.
        id:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
