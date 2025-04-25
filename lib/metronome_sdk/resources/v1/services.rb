# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Services
        # Fetches a list of services used by Metronome and the associated IP addresses. IP
        # addresses are not necessarily unique between services. In most cases, IP
        # addresses will appear in the list at least 30 days before they are used for the
        # first time.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::ServiceListResponse]
        #
        # @see MetronomeSDK::Models::V1::ServiceListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "v1/services",
            model: MetronomeSDK::Models::V1::ServiceListResponse,
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
