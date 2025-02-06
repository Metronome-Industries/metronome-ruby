# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardRetrieveRateScheduleParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        attr_accessor :rate_card_id

        sig { returns(Time) }
        attr_accessor :starting_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig do
          returns(T.nilable(T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector]))
        end
        attr_reader :selectors

        sig do
          params(selectors: T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector]).void
        end
        attr_writer :selectors

        sig do
          params(
            rate_card_id: String,
            starting_at: Time,
            limit: Integer,
            next_page: String,
            ending_before: Time,
            selectors: T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector],
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          rate_card_id:,
          starting_at:,
          limit: nil,
          next_page: nil,
          ending_before: nil,
          selectors: nil,
          request_options: {}
        ); end

        sig do
          override.returns(
            {
              rate_card_id: String,
              starting_at: Time,
              limit: Integer,
              next_page: String,
              ending_before: Time,
              selectors: T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector],
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash; end

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

          sig do
            params(
              partial_pricing_group_values: T::Hash[Symbol, String],
              pricing_group_values: T::Hash[Symbol, String],
              product_id: String
            ).void
          end
          def initialize(partial_pricing_group_values: nil, pricing_group_values: nil, product_id: nil); end

          sig do
            override.returns(
              {
                partial_pricing_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String
              }
            )
          end
          def to_hash; end
        end
      end
    end
  end
end
