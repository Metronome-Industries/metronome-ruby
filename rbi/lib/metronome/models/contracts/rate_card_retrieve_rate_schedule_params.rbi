# typed: strong

module Metronome
  module Models
    module Contracts
      class RateCardRetrieveRateScheduleParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        def rate_card_id
        end

        sig { params(_: String).returns(String) }
        def rate_card_id=(_)
        end

        sig { returns(Time) }
        def starting_at
        end

        sig { params(_: Time).returns(Time) }
        def starting_at=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: String).returns(String) }
        def next_page=(_)
        end

        sig { returns(T.nilable(Time)) }
        def ending_before
        end

        sig { params(_: Time).returns(Time) }
        def ending_before=(_)
        end

        sig { returns(T.nilable(T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector])) }
        def selectors
        end

        sig do
          params(_: T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector])
            .returns(T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector])
        end
        def selectors=(_)
        end

        sig do
          params(
            rate_card_id: String,
            starting_at: Time,
            limit: Integer,
            next_page: String,
            ending_before: Time,
            selectors: T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector],
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          rate_card_id:,
          starting_at:,
          limit: nil,
          next_page: nil,
          ending_before: nil,
          selectors: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
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
        def to_hash
        end

        class Selector < Metronome::BaseModel
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def partial_pricing_group_values
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def partial_pricing_group_values=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def pricing_group_values
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def pricing_group_values=(_)
          end

          sig { returns(T.nilable(String)) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig do
            params(
              partial_pricing_group_values: T::Hash[Symbol, String],
              pricing_group_values: T::Hash[Symbol, String],
              product_id: String
            )
              .void
          end
          def initialize(partial_pricing_group_values: nil, pricing_group_values: nil, product_id: nil)
          end

          sig do
            override
              .returns(
                {
                  partial_pricing_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String
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
