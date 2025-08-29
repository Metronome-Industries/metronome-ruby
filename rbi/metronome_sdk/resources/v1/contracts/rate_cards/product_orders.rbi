# typed: strong

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
            sig do
              params(
                product_moves:
                  T::Array[
                    MetronomeSDK::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove::OrHash
                  ],
                rate_card_id: String,
                request_options: MetronomeSDK::RequestOptions::OrHash
              ).returns(
                MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateResponse
              )
            end
            def update(
              product_moves:,
              # ID of the rate card to update
              rate_card_id:,
              request_options: {}
            )
            end

            # The ordering of products on a rate card determines the order in which the
            # products will appear on customers' invoices. Use this endpoint to set the order
            # of products on the rate card.
            sig do
              params(
                product_order: T::Array[String],
                rate_card_id: String,
                request_options: MetronomeSDK::RequestOptions::OrHash
              ).returns(
                MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderSetResponse
              )
            end
            def set(
              product_order:,
              # ID of the rate card to update
              rate_card_id:,
              request_options: {}
            )
            end

            # @api private
            sig do
              params(client: MetronomeSDK::Client).returns(T.attached_class)
            end
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
