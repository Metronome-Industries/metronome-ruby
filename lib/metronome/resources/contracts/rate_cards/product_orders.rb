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
          # @param params [Hash{Symbol => Object}, Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams] Attributes to send in this request.
          #   @option params [Array<Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>] :product_moves
          #   @option params [String] :rate_card_id ID of the rate card to update
          #
          # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Metronome::Models::Contracts::RateCards::ProductOrderUpdateResponse]
          def update(params = {}, opts = {})
            parsed = Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams.dump(params)
            req = {
              method: :post,
              path: "/contract-pricing/rate-cards/moveRateCardProducts",
              body: parsed,
              model: Metronome::Models::Contracts::RateCards::ProductOrderUpdateResponse
            }
            @client.request(req, opts)
          end

          # Sets the ordering of products within a rate card
          #
          # @param params [Hash{Symbol => Object}, Metronome::Models::Contracts::RateCards::ProductOrderSetParams] Attributes to send in this request.
          #   @option params [Array<String>] :product_order
          #   @option params [String] :rate_card_id ID of the rate card to update
          #
          # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Metronome::Models::Contracts::RateCards::ProductOrderSetResponse]
          def set(params = {}, opts = {})
            parsed = Metronome::Models::Contracts::RateCards::ProductOrderSetParams.dump(params)
            req = {
              method: :post,
              path: "/contract-pricing/rate-cards/setRateCardProductsOrder",
              body: parsed,
              model: Metronome::Models::Contracts::RateCards::ProductOrderSetResponse
            }
            @client.request(req, opts)
          end
        end
      end
    end
  end
end
