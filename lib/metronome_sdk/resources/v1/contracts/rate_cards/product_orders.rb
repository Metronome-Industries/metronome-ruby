# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          class ProductOrders
            # The ordering of products on a rate card determines the order in which the
            # products will appear on customers' invoices. Use this endpoint to set the order
            # of specific products on the rate card by moving them relative to their current
            # location.
            #
            # @overload update(product_moves:, rate_card_id:, request_options: {})
            #
            # @param product_moves [Array<MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>]
            #
            # @param rate_card_id [String] ID of the rate card to update
            #
            # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse]
            #
            # @see MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams
            def update(params)
              parsed, options = MetronomeSDK::V1::Contracts::RateCards::ProductOrderUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "v1/contract-pricing/rate-cards/moveRateCardProducts",
                body: parsed,
                model: MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse,
                options: options
              )
            end

            # The ordering of products on a rate card determines the order in which the
            # products will appear on customers' invoices. Use this endpoint to set the order
            # of products on the rate card.
            #
            # @overload set(product_order:, rate_card_id:, request_options: {})
            #
            # @param product_order [Array<String>]
            #
            # @param rate_card_id [String] ID of the rate card to update
            #
            # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetResponse]
            #
            # @see MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetParams
            def set(params)
              parsed, options = MetronomeSDK::V1::Contracts::RateCards::ProductOrderSetParams.dump_request(params)
              @client.request(
                method: :post,
                path: "v1/contract-pricing/rate-cards/setRateCardProductsOrder",
                body: parsed,
                model: MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetResponse,
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
  end
end
