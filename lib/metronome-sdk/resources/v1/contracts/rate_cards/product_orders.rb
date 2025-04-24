# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          class ProductOrders
            # Updates ordering of specified products
            #
            # @param params [MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams, Hash{Symbol=>Object}] .
            #
            #   @option params [Array<MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>] :product_moves
            #
            #   @option params [String] :rate_card_id ID of the rate card to update
            #
            #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse]
            #
            def update(params)
              parsed, options = MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "v1/contract-pricing/rate-cards/moveRateCardProducts",
                body: parsed,
                model: MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse,
                options: options
              )
            end

            # Sets the ordering of products within a rate card
            #
            # @param params [MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetParams, Hash{Symbol=>Object}] .
            #
            #   @option params [Array<String>] :product_order
            #
            #   @option params [String] :rate_card_id ID of the rate card to update
            #
            #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
            #
            # @return [MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetResponse]
            #
            def set(params)
              parsed, options = MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetParams.dump_request(params)
              @client.request(
                method: :post,
                path: "v1/contract-pricing/rate-cards/setRateCardProductsOrder",
                body: parsed,
                model: MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetResponse,
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
  end
end
