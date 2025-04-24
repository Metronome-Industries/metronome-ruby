# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class ProductOrderUpdateParams < MetronomeSDK::BaseModel
            extend MetronomeSDK::RequestParameters::Converter
            include MetronomeSDK::RequestParameters

            sig { returns(T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove]) }
            def product_moves
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove])
                .returns(T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove])
            end
            def product_moves=(_)
            end

            sig { returns(String) }
            def rate_card_id
            end

            sig { params(_: String).returns(String) }
            def rate_card_id=(_)
            end

            sig do
              params(
                product_moves: T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove],
                rate_card_id: String,
                request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
              )
                .void
            end
            def initialize(product_moves:, rate_card_id:, request_options: {})
            end

            sig do
              override
                .returns(
                  {
                    product_moves: T::Array[MetronomeSDK::Models::V1::Contracts::RateCards::ProductOrderUpdateParams::ProductMove],
                    rate_card_id: String,
                    request_options: MetronomeSDK::RequestOptions
                  }
                )
            end
            def to_hash
            end

            class ProductMove < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def position
              end

              sig { params(_: Float).returns(Float) }
              def position=(_)
              end

              sig { returns(String) }
              def product_id
              end

              sig { params(_: String).returns(String) }
              def product_id=(_)
              end

              sig { params(position: Float, product_id: String).void }
              def initialize(position:, product_id:)
              end

              sig { override.returns({position: Float, product_id: String}) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
