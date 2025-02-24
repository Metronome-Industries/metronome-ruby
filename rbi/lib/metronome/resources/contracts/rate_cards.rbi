# typed: strong

module Metronome
  module Resources
    class Contracts
      class RateCards
        sig { returns(Metronome::Resources::Contracts::RateCards::ProductOrders) }
        def product_orders
        end

        sig { returns(Metronome::Resources::Contracts::RateCards::Rates) }
        def rates
        end

        sig { returns(Metronome::Resources::Contracts::RateCards::NamedSchedules) }
        def named_schedules
        end

        sig do
          params(
            name: String,
            aliases: T::Array[Metronome::Models::Contracts::RateCardCreateParams::Alias],
            credit_type_conversions: T::Array[Metronome::Models::Contracts::RateCardCreateParams::CreditTypeConversion],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            fiat_credit_type_id: String,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Metronome::Models::Contracts::RateCardCreateResponse)
        end
        def create(
          name:,
          aliases: nil,
          credit_type_conversions: nil,
          custom_fields: nil,
          description: nil,
          fiat_credit_type_id: nil,
          request_options: {}
        )
        end

        sig do
          params(
            id: String,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Metronome::Models::Contracts::RateCardRetrieveResponse)
        end
        def retrieve(id:, request_options: {})
        end

        sig do
          params(
            rate_card_id: String,
            aliases: T::Array[Metronome::Models::Contracts::RateCardUpdateParams::Alias],
            description: String,
            name: String,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Metronome::Models::Contracts::RateCardUpdateResponse)
        end
        def update(rate_card_id:, aliases: nil, description: nil, name: nil, request_options: {})
        end

        sig do
          params(
            body: T.anything,
            limit: Integer,
            next_page: String,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Metronome::CursorPage[Metronome::Models::Contracts::RateCardListResponse])
        end
        def list(body:, limit: nil, next_page: nil, request_options: {})
        end

        sig do
          params(
            rate_card_id: String,
            starting_at: Time,
            limit: Integer,
            next_page: String,
            ending_before: Time,
            selectors: T::Array[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector],
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse)
        end
        def retrieve_rate_schedule(
          rate_card_id:,
          starting_at:,
          limit: nil,
          next_page: nil,
          ending_before: nil,
          selectors: nil,
          request_options: {}
        )
        end

        sig { params(client: Metronome::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
