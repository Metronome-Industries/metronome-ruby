# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class Notifications
      class System
        # List available system lifecycle event types for notifications. These are
        # read-only event types that can be used when creating offset notifications.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::Notifications::SystemListResponse]
        #
        # @see MetronomeSDK::Models::Notifications::SystemListParams
        def list(params = {})
          @client.request(
            method: :post,
            path: "v2/notifications/system/list",
            model: MetronomeSDK::Models::Notifications::SystemListResponse,
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
