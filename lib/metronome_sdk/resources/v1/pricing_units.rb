# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class PricingUnits
        # List all pricing units (known in the API by the legacy term "credit types").
        #
        # @overload list(limit: nil, next_page: nil, request_options: {})
        #
        # @param limit [Integer] Max number of results that should be returned
        #
        # @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::PricingUnitListResponse>]
        #
        # @see MetronomeSDK::Models::V1::PricingUnitListParams
        def list(params = {})
          parsed, options = MetronomeSDK::V1::PricingUnitListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/credit-types/list",
            query: parsed,
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::PricingUnitListResponse,
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
