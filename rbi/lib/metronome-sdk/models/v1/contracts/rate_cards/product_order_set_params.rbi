# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class ProductOrderSetParams < MetronomeSDK::BaseModel
            extend MetronomeSDK::RequestParameters::Converter
            include MetronomeSDK::RequestParameters

            sig { returns(T::Array[String]) }
            def product_order
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def product_order=(_)
            end

            sig { returns(String) }
            def rate_card_id
            end

            sig { params(_: String).returns(String) }
            def rate_card_id=(_)
            end

            sig do
              params(
                product_order: T::Array[String],
                rate_card_id: String,
                request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .void
            end
            def initialize(product_order:, rate_card_id:, request_options: {})
            end

            sig do
              override
                .returns(
                  {
                    product_order: T::Array[String],
                    rate_card_id: String,
                    request_options: MetronomeSDK::RequestOptions
                  }
                )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
