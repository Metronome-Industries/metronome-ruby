# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class Notifications
      # @return [MetronomeSDK::Resources::Notifications::Offset]
      attr_reader :offset

      # @return [MetronomeSDK::Resources::Notifications::System]
      attr_reader :system_

      # Some parameter documentations has been truncated, see
      # {MetronomeSDK::Models::NotificationCreateParams} for more details.
      #
      # Create an offset lifecycle event notification configuration. The lifecycle event
      # type is inferred from the policy.type field.
      #
      # @overload create(name:, policy:, uniqueness_key: nil, request_options: {})
      #
      # @param name [String] The name for this offset notification configuration.
      #
      # @param policy [MetronomeSDK::Models::NotificationCreateParams::Policy] The offset lifecycle event policy that defines when and how this notification sh
      #
      # @param uniqueness_key [String] Optional uniqueness key to prevent duplicate notification configurations.
      #
      # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MetronomeSDK::Models::NotificationCreateResponse]
      #
      # @see MetronomeSDK::Models::NotificationCreateParams
      def create(params)
        parsed, options = MetronomeSDK::NotificationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/notifications/create",
          body: parsed,
          model: MetronomeSDK::Models::NotificationCreateResponse,
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
      # @return [MetronomeSDK::Models::NotificationRetrieveResponse]
      #
      # @see MetronomeSDK::Models::NotificationRetrieveParams
      def retrieve(params)
        parsed, options = MetronomeSDK::NotificationRetrieveParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/notifications/get",
          body: parsed,
          model: MetronomeSDK::Models::NotificationRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {MetronomeSDK::Models::NotificationUpdateParams} for more details.
      #
      # Edit an existing offset lifecycle event notification configuration.
      #
      # @overload update(policy:, id: nil, is_enabled: nil, request_options: {})
      #
      # @param policy [MetronomeSDK::Models::NotificationUpdateParams::Policy::LifecycleEventOffsetPolicy, MetronomeSDK::Models::NotificationUpdateParams::Policy::LifecycleEventSystemPolicy] Updated policy configuration. The policy.type must match the existing lifecycle
      #
      # @param id [String] The ID of the notification configuration to edit. Not provided when updating the
      #
      # @param is_enabled [Boolean] Set to true to enable webhook messages for the notification indicated in the pol
      #
      # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MetronomeSDK::Models::NotificationUpdateResponse]
      #
      # @see MetronomeSDK::Models::NotificationUpdateParams
      def update(params)
        parsed, options = MetronomeSDK::NotificationUpdateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/notifications/edit",
          body: parsed,
          model: MetronomeSDK::Models::NotificationUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {MetronomeSDK::Models::NotificationArchiveParams} for more details.
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
      # @return [MetronomeSDK::Models::NotificationArchiveResponse]
      #
      # @see MetronomeSDK::Models::NotificationArchiveParams
      def archive(params)
        parsed, options = MetronomeSDK::NotificationArchiveParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/notifications/archive",
          body: parsed,
          model: MetronomeSDK::Models::NotificationArchiveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [MetronomeSDK::Client]
      def initialize(client:)
        @client = client
        @offset = MetronomeSDK::Resources::Notifications::Offset.new(client: client)
        @system_ = MetronomeSDK::Resources::Notifications::System.new(client: client)
      end
    end
  end
end
