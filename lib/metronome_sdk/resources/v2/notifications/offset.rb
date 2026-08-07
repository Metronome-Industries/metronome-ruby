# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V2
      class Notifications
        class Offset
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V2::Notifications::OffsetCreateParams} for more details.
          #
          # Create an offset lifecycle event notification configuration. The lifecycle event
          # type is inferred from the policy.type field.
          #
          # @overload create(name:, policy:, uniqueness_key: nil, request_options: {})
          #
          # @param name [String] The name for this offset notification configuration.
          #
          # @param policy [MetronomeSDK::Models::V2::Notifications::OffsetCreateParams::Policy] The offset lifecycle event policy that defines when and how this notification sh
          #
          # @param uniqueness_key [String] Optional uniqueness key to prevent duplicate notification configurations.
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V2::Notifications::OffsetCreateResponse]
          #
          # @see MetronomeSDK::Models::V2::Notifications::OffsetCreateParams
          def create(params)
            parsed, options = MetronomeSDK::V2::Notifications::OffsetCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v2/notifications/create",
              body: parsed,
              model: MetronomeSDK::Models::V2::Notifications::OffsetCreateResponse,
              options: options
            )
          end

          # Retrieve a specific offset lifecycle event notification configuration by ID.
          #
          # @overload retrieve(id:, request_options: {})
          #
          # @param id [String] The ID of the notification configuration to retrieve
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V2::Notifications::OffsetRetrieveResponse]
          #
          # @see MetronomeSDK::Models::V2::Notifications::OffsetRetrieveParams
          def retrieve(params)
            parsed, options = MetronomeSDK::V2::Notifications::OffsetRetrieveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v2/notifications/get",
              body: parsed,
              model: MetronomeSDK::Models::V2::Notifications::OffsetRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V2::Notifications::OffsetListParams} for more details.
          #
          # List offset lifecycle event notification configurations. These are user-created
          # notifications that trigger at a specified time offset relative to lifecycle
          # events. Returns a maximum of 400 results per request.
          #
          # @overload list(archive_filter: nil, cursor: nil, limit: nil, request_options: {})
          #
          # @param archive_filter [Symbol, MetronomeSDK::Models::V2::Notifications::OffsetListParams::ArchiveFilter] Filter options for the notification configurations. If not provided, defaults to
          #
          # @param cursor [String]
          #
          # @param limit [Float]
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::BodyCursorPageCursorField<MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig>]
          #
          # @see MetronomeSDK::Models::V2::Notifications::OffsetListParams
          def list(params = {})
            parsed, options = MetronomeSDK::V2::Notifications::OffsetListParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v2/notifications/offset/list",
              body: parsed,
              page: MetronomeSDK::Internal::BodyCursorPageCursorField,
              model: MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V2::Notifications::OffsetArchiveParams} for more details.
          #
          # Archive an offset lifecycle event notification configuration. Archived
          # notifications are not processed.
          #
          # @overload archive(id:, request_options: {})
          #
          # @param id [String] The ID of the offset lifecycle event notification configuration to archive.
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V2::Notifications::OffsetArchiveResponse]
          #
          # @see MetronomeSDK::Models::V2::Notifications::OffsetArchiveParams
          def archive(params)
            parsed, options = MetronomeSDK::V2::Notifications::OffsetArchiveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v2/notifications/archive",
              body: parsed,
              model: MetronomeSDK::Models::V2::Notifications::OffsetArchiveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V2::Notifications::OffsetEditParams} for more details.
          #
          # Edit an existing offset lifecycle event notification configuration.
          #
          # @overload edit(policy:, id: nil, is_enabled: nil, request_options: {})
          #
          # @param policy [MetronomeSDK::Models::V2::Notifications::OffsetEditParams::Policy::LifecycleEventOffsetPolicy, MetronomeSDK::Models::V2::Notifications::OffsetEditParams::Policy::LifecycleEventSystemPolicy] Updated policy configuration. The policy.type must match the existing lifecycle
          #
          # @param id [String] The ID of the notification configuration to edit. Not provided when updating the
          #
          # @param is_enabled [Boolean] Set to true to enable webhook messages for the notification indicated in the pol
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V2::Notifications::OffsetEditResponse]
          #
          # @see MetronomeSDK::Models::V2::Notifications::OffsetEditParams
          def edit(params)
            parsed, options = MetronomeSDK::V2::Notifications::OffsetEditParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v2/notifications/edit",
              body: parsed,
              model: MetronomeSDK::Models::V2::Notifications::OffsetEditResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [MetronomeSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
