# typed: strong

module Metronome
  module Models
    module Contracts
      module RateCards
        class ProductOrderUpdateParams < Metronome::BaseModel
          extend Metronome::RequestParameters::Converter
          include Metronome::RequestParameters

          sig { returns(T::Array[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove]) }
          def product_moves
          end

          sig do
            params(_: T::Array[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove])
              .returns(T::Array[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove])
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
              product_moves: T::Array[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove],
              rate_card_id: String,
              request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(product_moves:, rate_card_id:, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  product_moves: T::Array[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove],
                  rate_card_id: String,
                  request_options: Metronome::RequestOptions
                }
              )
          end
          def to_hash
          end

          class ProductMove < Metronome::BaseModel
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
