# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          class ProductOrders
            sig do
              params(
                product_moves: T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove],
                rate_card_id: String,
                request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse)
            end
            def update(product_moves:, rate_card_id:, request_options: {})
            end

            sig do
              params(
                product_order: T::Array[String],
                rate_card_id: String,
                request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
              )
                .returns(MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetResponse)
            end
            def set(product_order:, rate_card_id:, request_options: {})
            end

            sig { params(client: MetronomeSDK::Client).void }
            def initialize(client:)
            end
          end
        end
      end
    end
  end
end
