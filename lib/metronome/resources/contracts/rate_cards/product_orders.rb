# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      class RateCards
        class ProductOrders
          # Updates ordering of specified products
          #
          # @param params [Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove>] :product_moves
          #
          #   @option params [String] :rate_card_id ID of the rate card to update
          #
          #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Metronome::Models::Contracts::RateCards::ProductOrderUpdateResponse]
          #
          def update(params)
            parsed, options = Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "contract-pricing/rate-cards/moveRateCardProducts",
              body: parsed,
              model: Metronome::Models::Contracts::RateCards::ProductOrderUpdateResponse,
              options: options
            )
          end

          # Sets the ordering of products within a rate card
          #
          # @param params [Metronome::Models::Contracts::RateCards::ProductOrderSetParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Array<String>] :product_order
          #
          #   @option params [String] :rate_card_id ID of the rate card to update
          #
          #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Metronome::Models::Contracts::RateCards::ProductOrderSetResponse]
          #
          def set(params)
            parsed, options = Metronome::Models::Contracts::RateCards::ProductOrderSetParams.dump_request(params)
            @client.request(
              method: :post,
              path: "contract-pricing/rate-cards/setRateCardProductsOrder",
              body: parsed,
              model: Metronome::Models::Contracts::RateCards::ProductOrderSetResponse,
              options: options
            )
          end

          # @param client [Metronome::Client]
          #
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
