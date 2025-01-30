# typed: strong

module Metronome
  module Resources
    class Contracts
      class RateCards
        sig { returns(Metronome::Resources::Contracts::RateCards::ProductOrders) }
        attr_reader :product_orders

        sig { returns(Metronome::Resources::Contracts::RateCards::Rates) }
        attr_reader :rates

        sig { returns(Metronome::Resources::Contracts::RateCards::NamedSchedules) }
        attr_reader :named_schedules

        sig do
          params(
            params: T.any(Metronome::Models::Contracts::RateCardCreateParams, T::Hash[Symbol, T.anything]),
            name: String,
            aliases: T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias],
            credit_type_conversions: T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            fiat_credit_type_id: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Contracts::RateCardCreateResponse)
        end
        def create(
          params,
          name:,
          aliases:,
          credit_type_conversions:,
          custom_fields:,
          description:,
          fiat_credit_type_id:,
          request_options: {}
        ); end

        sig do
          params(
            params: T.any(Metronome::Models::Contracts::RateCardRetrieveParams, T::Hash[Symbol, T.anything]),
            id: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Contracts::RateCardRetrieveResponse)
        end
        def retrieve(params, id:, request_options: {}); end

        sig do
          params(
            params: T.any(Metronome::Models::Contracts::RateCardUpdateParams, T::Hash[Symbol, T.anything]),
            rate_card_id: String,
            aliases: T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias],
            description: String,
            name: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Contracts::RateCardUpdateResponse)
        end
        def update(params, rate_card_id:, aliases:, description:, name:, request_options: {}); end

        sig do
          params(
            params: T.any(Metronome::Models::Contracts::RateCardListParams, T::Hash[Symbol, T.anything]),
            body: T.anything,
            limit: Integer,
            next_page: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::CursorPage[Metronome::Models::Contracts::RateCardListResponse])
        end
        def list(params, body:, limit:, next_page:, request_options: {}); end

        sig do
          params(
            params: T.any(
              Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams,
              T::Hash[Symbol, T.anything]
            ),
            rate_card_id: String,
            starting_at: Time,
            limit: Integer,
            next_page: String,
            ending_before: Time,
            selectors: T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector],
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse)
        end
        def retrieve_rate_schedule(
          params,
          rate_card_id:,
          starting_at:,
          limit:,
          next_page:,
          ending_before:,
          selectors:,
          request_options: {}
        )
        end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end
