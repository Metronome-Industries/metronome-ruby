# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Services
        # Fetches a list of services used by Metronome and the associated IP addresses. IP
        #   addresses are not necessarily unique between services. In most cases, IP
        #   addresses will appear in the list at least 30 days before they are used for the
        #   first time.
        #
        # @param params [MetronomeSDK::Models::V1::ServiceListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::ServiceListResponse]
        #
        def list(params = {})
          @client.request(
            method: :get,
            path: "v1/services",
            model: MetronomeSDK::Models::V1::ServiceListResponse,
            options: params[:request_options]
          )
        end

        # @param client [MetronomeSDK::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
