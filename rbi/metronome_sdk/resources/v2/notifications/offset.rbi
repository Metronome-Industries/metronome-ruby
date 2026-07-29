# typed: strong

module MetronomeSDK
  module Resources
    class V2
      class Notifications
        class Offset
          # Create an offset lifecycle event notification configuration. The lifecycle event
          # type is inferred from the policy.type field.
          sig do
            params(
              name: String,
              policy:
                MetronomeSDK::V2::Notifications::OffsetCreateParams::Policy::OrHash,
              uniqueness_key: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V2::Notifications::OffsetCreateResponse
            )
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
            ).returns(
              MetronomeSDK::Models::V2::Notifications::OffsetRetrieveResponse
            )
          end
          def retrieve(
            # The ID of the notification configuration to retrieve
            id:,
            request_options: {}
          )
          end

          # List offset lifecycle event notification configurations. These are user-created
          # notifications that trigger at a specified time offset relative to lifecycle
          # events. Returns a maximum of 400 results per request.
          sig do
            params(
              archive_filter:
                MetronomeSDK::V2::Notifications::OffsetListParams::ArchiveFilter::OrSymbol,
              cursor: String,
              limit: Float,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Internal::BodyCursorPageCursorField[
                MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig
              ]
            )
          end
          def list(
            # Filter options for the notification configurations. If not provided, defaults to
            # NOT_ARCHIVED.
            archive_filter: nil,
            cursor: nil,
            limit: nil,
            request_options: {}
          )
          end

          # Archive an offset lifecycle event notification configuration. Archived
          # notifications are not processed.
          sig do
            params(
              id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V2::Notifications::OffsetArchiveResponse
            )
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
              policy:
                T.any(
                  MetronomeSDK::V2::Notifications::OffsetEditParams::Policy::LifecycleEventOffsetPolicy::OrHash,
                  MetronomeSDK::V2::Notifications::OffsetEditParams::Policy::LifecycleEventSystemPolicy::OrHash
                ),
              id: String,
              is_enabled: T::Boolean,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V2::Notifications::OffsetEditResponse
            )
          end
          def edit(
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

          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
