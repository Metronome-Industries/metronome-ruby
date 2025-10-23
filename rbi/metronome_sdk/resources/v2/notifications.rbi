# typed: strong

module MetronomeSDK
  module Resources
    class V2
      class Notifications
        # Create an offset lifecycle event notification configuration. The lifecycle event
        # type is inferred from the policy.type field.
        sig do
          params(
            name: String,
            policy: MetronomeSDK::V2::LifecycleEventOffsetPolicy::OrHash,
            uniqueness_key: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V2::NotificationCreateResponse)
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
          ).returns(MetronomeSDK::Models::V2::NotificationRetrieveResponse)
        end
        def retrieve(
          # The ID of the notification configuration to retrieve
          id:,
          request_options: {}
        )
        end

        # Archive an offset lifecycle event notification configuration. Archived
        # notifications are not processed.
        sig do
          params(
            id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V2::NotificationArchiveResponse)
        end
        def archive(
          # The ID of the offset lifecycle event notification configuration to archive.
          id:,
          request_options: {}
        )
        end

        # Edit an existing offset lifecycle event notification configuration.
        sig do
          params(
            policy: MetronomeSDK::V2::LifecycleEventOffsetPolicy::OrHash,
            type: MetronomeSDK::V2::NotificationEditParams::Type::OrSymbol,
            id: String,
            is_enabled: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V2::NotificationEditResponse)
        end
        def edit(
          policy:,
          # Indicates this is an offset lifecycle event notification
          type:,
          # The ID of the notification configuration to edit.
          id:,
          # Set to true to enable webhook messages for the notification indicated in the
          # policy, false to disable. Only supported by system lifecycle events.
          is_enabled: nil,
          request_options: {}
        )
        end

        # List offset lifecycle event notification configurations. These are user-created
        # notifications that trigger at a specified time offset relative to lifecycle
        # events. Returns a maximum of 400 results per request.
        sig do
          params(
            archive_filter:
              MetronomeSDK::V2::NotificationListOffsetParams::ArchiveFilter::OrSymbol,
            cursor: String,
            limit: Float,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V2::NotificationListOffsetResponse)
        end
        def list_offset(
          # Filter options for the notification configurations. If not provided, defaults to
          # NOT_ARCHIVED.
          archive_filter: nil,
          cursor: nil,
          limit: nil,
          request_options: {}
        )
        end

        # List available system lifecycle event types for notifications. These are
        # read-only event types that can be used when creating offset notifications.
        sig do
          params(request_options: MetronomeSDK::RequestOptions::OrHash).returns(
            MetronomeSDK::Models::V2::NotificationListSystemResponse
          )
        end
        def list_system(request_options: {})
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
