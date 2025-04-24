# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class PricingUnits
        # List all pricing units (known in the API by the legacy term "credit types").
        #
        # @param params [MetronomeSDK::Models::V1::PricingUnitListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Integer] :limit Max number of results that should be returned
        #
        #   @option params [String] :next_page Cursor that indicates where the next page of results should start.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::PricingUnitListResponse>]
        #
        def list(params = {})
          parsed, options = MetronomeSDK::Models::V1::PricingUnitListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/credit-types/list",
            query: parsed,
            page: MetronomeSDK::CursorPage,
            model: MetronomeSDK::Models::V1::PricingUnitListResponse,
            options: options
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
