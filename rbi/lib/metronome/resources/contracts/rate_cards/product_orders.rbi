# typed: strong

module Metronome
  module Resources
    class Contracts
      class RateCards
        class ProductOrders
          sig do
            params(
              product_moves: T::Array[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove],
              rate_card_id: String,
              request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
            ).returns(Metronome::Models::Contracts::RateCards::ProductOrderUpdateResponse)
          end
          def update(product_moves:, rate_card_id:, request_options: {}); end

          sig do
            params(
              product_order: T::Array[String],
              rate_card_id: String,
              request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
            ).returns(Metronome::Models::Contracts::RateCards::ProductOrderSetResponse)
          end
          def set(product_order:, rate_card_id:, request_options: {}); end

          sig { params(client: Metronome::Client).void }
          def initialize(client:); end
        end
      end
    end
  end
end
