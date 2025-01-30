# typed: strong

module Metronome
  module Models
    module Contracts
      module RateCards
        class ProductOrderUpdateParams < Metronome::BaseModel
          extend Metronome::RequestParameters::Converter
          include Metronome::RequestParameters

          Shape = T.type_alias do
            T.all(
              {
                product_moves: T::Array[Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove],
                rate_card_id: String
              },
              Metronome::RequestParameters::Shape
            )
          end

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
              request_options: Metronome::RequestOpts
            ).void
          end
          def initialize(product_moves:, rate_card_id:, request_options: {}); end

          sig { returns(Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::Shape) }
          def to_h; end

          class ProductMove < Metronome::BaseModel
            Shape = T.type_alias { {position: Float, product_id: String} }

            sig { returns(Float) }
            attr_accessor :position

            sig { returns(String) }
            attr_accessor :product_id

            sig { params(position: Float, product_id: String).void }
            def initialize(position:, product_id:); end

            sig do
              returns(Metronome::Models::Contracts::RateCards::ProductOrderUpdateParams::ProductMove::Shape)
            end
            def to_h; end
          end
        end
      end
    end
  end
end
