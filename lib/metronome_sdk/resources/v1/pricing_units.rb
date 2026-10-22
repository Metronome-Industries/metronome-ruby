# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      # Use these endpoints to configure a billing API key, a webhook secret, or invoice
      # finalization behavior.
      class PricingUnits
        # Create a custom pricing unit. Custom pricing units can be used to charge for
        # usage in a non-fiat pricing unit, for example AI credits.
        #
        # @overload create(name:, request_options: {})
        #
        # @param name [String] The name of the custom pricing unit. This will appear on invoices.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::PricingUnitCreateResponse]
        #
        # @see MetronomeSDK::Models::V1::PricingUnitCreateParams
        def create(params)
          parsed, options = MetronomeSDK::V1::PricingUnitCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/credit-types/create",
            body: parsed,
            model: MetronomeSDK::Models::V1::PricingUnitCreateResponse,
            options: options
          )
        end

        # List all pricing units. All fiat currency types (for example, USD or GBP) will
        # be included, as well as any custom pricing units that were configured. Custom
        # pricing units can be used to charge for usage in a non-fiat pricing unit, for
        # example AI credits.
        #
        # Note: The USD (cents) pricing unit is 2714e483-4ff1-48e4-9e25-ac732e8f24f2.
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
          query = MetronomeSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "v1/credit-types/list",
            query: query,
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::PricingUnitListResponse,
            options: options
          )
        end

        # Archive a custom pricing unit. Once archived, it will no longer appear in
        # pricing unit selectors by default.
        #
        # @overload archive(id:, request_options: {})
        #
        # @param id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::PricingUnitArchiveResponse]
        #
        # @see MetronomeSDK::Models::V1::PricingUnitArchiveParams
        def archive(params)
          parsed, options = MetronomeSDK::V1::PricingUnitArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/credit-types/archive",
            body: parsed,
            model: MetronomeSDK::Models::V1::PricingUnitArchiveResponse,
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
