# typed: strong

module Metronome
  module Resources
    class Contracts
      class RateCards
        class Rates
          sig do
            params(
              at: Time,
              rate_card_id: String,
              limit: Integer,
              next_page: String,
              selectors: T::Array[Metronome::Models::Contracts::RateCards::RateListParams::Selector],
              request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
            ).returns(Metronome::CursorPage[Metronome::Models::Contracts::RateCards::RateListResponse])
          end
          def list(at:, rate_card_id:, limit: nil, next_page: nil, selectors: nil, request_options: {}); end

          sig do
            params(
              entitled: T::Boolean,
              product_id: String,
              rate_card_id: String,
              rate_type: Symbol,
              starting_at: Time,
              commit_rate: Metronome::Models::Contracts::RateCards::RateAddParams::CommitRate,
              credit_type_id: String,
              custom_rate: T::Hash[Symbol, T.anything],
              ending_before: Time,
              is_prorated: T::Boolean,
              price: Float,
              pricing_group_values: T::Hash[Symbol, String],
              quantity: Float,
              tiers: T::Array[Metronome::Models::Tier],
              use_list_prices: T::Boolean,
              request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
            ).returns(Metronome::Models::Contracts::RateCards::RateAddResponse)
          end
          def add(
            entitled:,
            product_id:,
            rate_card_id:,
            rate_type:,
            starting_at:,
            commit_rate: nil,
            credit_type_id: nil,
            custom_rate: nil,
            ending_before: nil,
            is_prorated: nil,
            price: nil,
            pricing_group_values: nil,
            quantity: nil,
            tiers: nil,
            use_list_prices: nil,
            request_options: {}
          ); end

          sig do
            params(
              rate_card_id: String,
              rates: T::Array[Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate],
              request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
            ).returns(Metronome::Models::Contracts::RateCards::RateAddManyResponse)
          end
          def add_many(rate_card_id:, rates:, request_options: {}); end

          sig { params(client: Metronome::Client).void }
          def initialize(client:); end
        end
      end
    end
  end
end
