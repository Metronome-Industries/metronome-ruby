# typed: strong

module Metronome
  module Models
    module Contracts
      module RateCards
        class RateListParams < Metronome::BaseModel
          extend Metronome::RequestParameters::Converter
          include Metronome::RequestParameters

          sig { returns(Time) }
          attr_accessor :at

          sig { returns(String) }
          attr_accessor :rate_card_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(String)) }
          attr_reader :next_page

          sig { params(next_page: String).void }
          attr_writer :next_page

          sig do
            returns(T.nilable(T::Array[Metronome::Models::Contracts::RateCards::RateListParams::Selector]))
          end
          attr_reader :selectors

          sig do
            params(selectors: T::Array[Metronome::Models::Contracts::RateCards::RateListParams::Selector]).void
          end
          attr_writer :selectors

          sig do
            params(
              at: Time,
              rate_card_id: String,
              limit: Integer,
              next_page: String,
              selectors: T::Array[Metronome::Models::Contracts::RateCards::RateListParams::Selector],
              request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
            ).void
          end
          def initialize(at:, rate_card_id:, limit: nil, next_page: nil, selectors: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                at: Time,
                rate_card_id: String,
                limit: Integer,
                next_page: String,
                selectors: T::Array[Metronome::Models::Contracts::RateCards::RateListParams::Selector],
                request_options: Metronome::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Selector < Metronome::BaseModel
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :partial_pricing_group_values

            sig { params(partial_pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :partial_pricing_group_values

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :pricing_group_values

            sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
            attr_writer :pricing_group_values

            sig { returns(T.nilable(String)) }
            attr_reader :product_id

            sig { params(product_id: String).void }
            attr_writer :product_id

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :product_tags

            sig { params(product_tags: T::Array[String]).void }
            attr_writer :product_tags

            sig do
              params(
                partial_pricing_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String]
              ).void
            end
            def initialize(
              partial_pricing_group_values: nil,
              pricing_group_values: nil,
              product_id: nil,
              product_tags: nil
            )
            end

            sig do
              override.returns(
                {
                  partial_pricing_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
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
