# typed: strong

module Metronome
  module Models
    module Contracts
      module RateCards
        class ProductOrderSetParams < Metronome::BaseModel
          extend Metronome::RequestParameters::Converter
          include Metronome::RequestParameters

          Shape = T.type_alias do
            T.all(
              {product_order: T::Array[String], rate_card_id: String},
              Metronome::RequestParameters::Shape
            )
          end

          sig { returns(T::Array[String]) }
          attr_accessor :product_order

          sig { returns(String) }
          attr_accessor :rate_card_id

          sig do
            params(
              product_order: T::Array[String],
              rate_card_id: String,
              request_options: Metronome::RequestOpts
            ).void
          end
          def initialize(product_order:, rate_card_id:, request_options: {}); end

          sig { returns(Metronome::Models::Contracts::RateCards::ProductOrderSetParams::Shape) }
          def to_h; end
        end
      end
    end
  end
end
