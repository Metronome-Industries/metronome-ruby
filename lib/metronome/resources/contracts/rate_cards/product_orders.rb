# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      class RateCards
        class ProductOrders
          # @param client [Metronome::Client]
          def initialize(client:)
            @client = client
          end

          # Updates ordering of specified products
          #
          # @param params [Hash{Symbol => Object}] Attributes to send in this request.
          #   @option params [Array<ProductMove>] :product_moves
          #   @option params [String] :rate_card_id ID of the rate card to update
          #
          # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Metronome::Models::ProductOrderUpdateResponse]
          def update(params = {}, opts = {})
            req = {
              method: :post,
              path: "/contract-pricing/rate-cards/moveRateCardProducts",
              headers: {"Content-Type" => "application/json"},
              body: params,
              model: Metronome::Models::ProductOrderUpdateResponse
            }
            @client.request(req, opts)
          end

          # Sets the ordering of products within a rate card
          #
          # @param params [Hash{Symbol => Object}] Attributes to send in this request.
          #   @option params [Array<String>] :product_order
          #   @option params [String] :rate_card_id ID of the rate card to update
          #
          # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Metronome::Models::ProductOrderSetResponse]
          def set(params = {}, opts = {})
            req = {
              method: :post,
              path: "/contract-pricing/rate-cards/setRateCardProductsOrder",
              headers: {"Content-Type" => "application/json"},
              body: params,
              model: Metronome::Models::ProductOrderSetResponse
            }
            @client.request(req, opts)
          end
        end
      end
    end
  end
end
