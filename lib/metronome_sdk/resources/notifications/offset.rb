# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class Notifications
      class Offset
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::Notifications::OffsetListParams} for more details.
        #
        # List offset lifecycle event notification configurations. These are user-created
        # notifications that trigger at a specified time offset relative to lifecycle
        # events. Returns a maximum of 400 results per request.
        #
        # @overload list(archive_filter: nil, cursor: nil, limit: nil, request_options: {})
        #
        # @param archive_filter [Symbol, MetronomeSDK::Models::Notifications::OffsetListParams::ArchiveFilter] Filter options for the notification configurations. If not provided, defaults to
        #
        # @param cursor [String]
        #
        # @param limit [Float]
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::Notifications::OffsetListResponse]
        #
        # @see MetronomeSDK::Models::Notifications::OffsetListParams
        def list(params = {})
          parsed, options = MetronomeSDK::Notifications::OffsetListParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/notifications/offset/list",
            body: parsed,
            model: MetronomeSDK::Models::Notifications::OffsetListResponse,
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
