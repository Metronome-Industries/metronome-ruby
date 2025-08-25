# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Services
        # Gets Metronome's service registry with associated IP addresses for security
        # allowlisting and firewall configuration. Use this endpoint to maintain an
        # up-to-date list of IPs that your systems should trust for Metronome
        # communications. Returns service names and their current IP ranges, with new IPs
        # typically appearing 30+ days before first use to ensure smooth allowlist
        # updates.
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
