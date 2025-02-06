# typed: strong

module Metronome
  module Models
    module Contracts
      module RateCards
        class ProductOrderUpdateParams < Metronome::BaseModel
          extend Metronome::RequestParameters::Converter
          include Metronome::RequestParameters

          sig do
            returns(T::Array[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove])
          end
          attr_accessor :product_moves

          sig { returns(String) }
          attr_accessor :rate_card_id

          sig do
            params(
              product_moves: T::Array[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove],
              rate_card_id: String,
              request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
            ).void
          end
          def initialize(product_moves:, rate_card_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                product_moves: T::Array[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove], rate_card_id: String, request_options: Metronome::RequestOptions
              }
            )
          end
          def to_hash
          end

          class ProductMove < Metronome::BaseModel
            sig { returns(Float) }
            attr_accessor :position

            sig { returns(String) }
            attr_accessor :product_id

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
