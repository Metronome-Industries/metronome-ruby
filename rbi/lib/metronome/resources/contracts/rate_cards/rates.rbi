# typed: strong

module Metronome
  module Resources
    class Contracts
      class RateCards
        class Rates
          sig do
            params(
              params: T.any(
                Metronome::Models::Contracts::RateCards::RateListParams,
                T::Hash[Symbol, T.anything]
              ),
              at: Time,
              rate_card_id: String,
              limit: Integer,
              next_page: String,
              selectors: T::Array[Metronome::Models::Contracts::RateCards::RateListParams::Selector],
              request_options: Metronome::RequestOpts
            ).returns(Metronome::CursorPage[Metronome::Models::Contracts::RateCards::RateListResponse])
          end
          def list(params, at:, rate_card_id:, limit:, next_page:, selectors:, request_options: {}); end

          sig do
            params(
              params: T.any(
                Metronome::Models::Contracts::RateCards::RateAddParams,
                T::Hash[Symbol, T.anything]
              ),
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
              request_options: Metronome::RequestOpts
            ).returns(Metronome::Models::Contracts::RateCards::RateAddResponse)
          end
          def add(
            params,
            entitled:,
            product_id:,
            rate_card_id:,
            rate_type:,
            starting_at:,
            commit_rate:,
            credit_type_id:,
            custom_rate:,
            ending_before:,
            is_prorated:,
            price:,
            pricing_group_values:,
            quantity:,
            tiers:,
            use_list_prices:,
            request_options: {}
          ); end

          sig do
            params(
              params: T.any(
                Metronome::Models::Contracts::RateCards::RateAddManyParams,
                T::Hash[Symbol, T.anything]
              ),
              rate_card_id: String,
              rates: T::Array[Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate],
              request_options: Metronome::RequestOpts
            ).returns(Metronome::Models::Contracts::RateCards::RateAddManyResponse)
          end
          def add_many(params, rate_card_id:, rates:, request_options: {}); end

          sig { params(client: Metronome::Client).void }
          def initialize(client:); end
        end
      end
    end
  end
end
