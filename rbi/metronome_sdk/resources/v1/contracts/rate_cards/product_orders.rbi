# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          class ProductOrders
            # Updates ordering of specified products
            sig do
              params(
                product_moves: T::Array[
                  T.any(
                    MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove,
                    MetronomeSDK::Internal::AnyHash
                  )
                ],
                rate_card_id: String,
                request_options: T.nilable(
                  T.any(
                    MetronomeSDK::RequestOptions,
                    MetronomeSDK::Internal::AnyHash
                  )
                )
              )
                .returns(MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse)
            end
            def update(
              product_moves:,
              # ID of the rate card to update
              rate_card_id:,
              request_options: {}
            ); end
            # Sets the ordering of products within a rate card
            sig do
              params(
                product_order: T::Array[String],
                rate_card_id: String,
                request_options: T.nilable(
                  T.any(
                    MetronomeSDK::RequestOptions,
                    MetronomeSDK::Internal::AnyHash
                  )
                )
              )
                .returns(MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetResponse)
            end
            def set(
              product_order:,
              # ID of the rate card to update
              rate_card_id:,
              request_options: {}
            ); end
            # @api private
            sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
            def self.new(client:); end
          end
        end
      end
    end
  end
end
