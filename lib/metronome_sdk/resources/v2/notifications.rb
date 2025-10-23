# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V2
      class Notifications
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V2::NotificationCreateParams} for more details.
        #
        # Create an offset lifecycle event notification configuration. The lifecycle event
        # type is inferred from the policy.type field.
        #
        # @overload create(name:, policy:, uniqueness_key: nil, request_options: {})
        #
        # @param name [String] The name for this offset notification configuration.
        #
        # @param policy [MetronomeSDK::Models::V2::LifecycleEventOffsetPolicy] The offset lifecycle event policy that defines when and how this notification sh
        #
        # @param uniqueness_key [String] Optional uniqueness key to prevent duplicate notification configurations.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::NotificationCreateResponse]
        #
        # @see MetronomeSDK::Models::V2::NotificationCreateParams
        def create(params)
          parsed, options = MetronomeSDK::V2::NotificationCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/notifications/create",
            body: parsed,
            model: MetronomeSDK::Models::V2::NotificationCreateResponse,
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
        # @return [MetronomeSDK::Models::V2::NotificationRetrieveResponse]
        #
        # @see MetronomeSDK::Models::V2::NotificationRetrieveParams
        def retrieve(params)
          parsed, options = MetronomeSDK::V2::NotificationRetrieveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/notifications/get",
            body: parsed,
            model: MetronomeSDK::Models::V2::NotificationRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V2::NotificationArchiveParams} for more details.
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
        # @return [MetronomeSDK::Models::V2::NotificationArchiveResponse]
        #
        # @see MetronomeSDK::Models::V2::NotificationArchiveParams
        def archive(params)
          parsed, options = MetronomeSDK::V2::NotificationArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/notifications/archive",
            body: parsed,
            model: MetronomeSDK::Models::V2::NotificationArchiveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V2::NotificationEditParams} for more details.
        #
        # Edit an existing offset lifecycle event notification configuration.
        #
        # @overload edit(policy:, type:, id:, is_enabled: nil, request_options: {})
        #
        # @param policy [MetronomeSDK::Models::V2::LifecycleEventOffsetPolicy]
        #
        # @param type [Symbol, MetronomeSDK::Models::V2::NotificationEditParams::Type] Indicates this is an offset lifecycle event notification
        #
        # @param id [String] The ID of the notification configuration to edit.
        #
        # @param is_enabled [Boolean] Set to true to enable webhook messages for the notification indicated in the pol
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::NotificationEditResponse]
        #
        # @see MetronomeSDK::Models::V2::NotificationEditParams
        def edit(params)
          parsed, options = MetronomeSDK::V2::NotificationEditParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/notifications/edit",
            body: parsed,
            model: MetronomeSDK::Models::V2::NotificationEditResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V2::NotificationListOffsetParams} for more details.
        #
        # List offset lifecycle event notification configurations. These are user-created
        # notifications that trigger at a specified time offset relative to lifecycle
        # events. Returns a maximum of 400 results per request.
        #
        # @overload list_offset(archive_filter: nil, cursor: nil, limit: nil, request_options: {})
        #
        # @param archive_filter [Symbol, MetronomeSDK::Models::V2::NotificationListOffsetParams::ArchiveFilter] Filter options for the notification configurations. If not provided, defaults to
        #
        # @param cursor [String]
        #
        # @param limit [Float]
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::NotificationListOffsetResponse]
        #
        # @see MetronomeSDK::Models::V2::NotificationListOffsetParams
        def list_offset(params = {})
          parsed, options = MetronomeSDK::V2::NotificationListOffsetParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/notifications/offset/list",
            body: parsed,
            model: MetronomeSDK::Models::V2::NotificationListOffsetResponse,
            options: options
          )
        end

        # List available system lifecycle event types for notifications. These are
        # read-only event types that can be used when creating offset notifications.
        #
        # @overload list_system(request_options: {})
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V2::NotificationListSystemResponse]
        #
        # @see MetronomeSDK::Models::V2::NotificationListSystemParams
        def list_system(params = {})
          @client.request(
            method: :post,
            path: "v2/notifications/system/list",
            model: MetronomeSDK::Models::V2::NotificationListSystemResponse,
            options: params[:request_options]
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
