# typed: strong

module Metronome
  module Models
    module Contracts
      module RateCards
        class ProductOrderSetParams < Metronome::BaseModel
          extend Metronome::RequestParameters::Converter
          include Metronome::RequestParameters

          sig { returns(T::Array[String]) }
          attr_accessor :product_order

          sig { returns(String) }
          attr_accessor :rate_card_id

          sig do
            params(
              product_order: T::Array[String],
              rate_card_id: String,
              request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
            ).void
          end
          def initialize(product_order:, rate_card_id:, request_options: {}); end

          sig do
            override.returns(
              {
                product_order: T::Array[String],
                rate_card_id: String,
                request_options: Metronome::RequestOptions
              }
            )
          end
          def to_hash; end
        end
      end
    end
  end
end
