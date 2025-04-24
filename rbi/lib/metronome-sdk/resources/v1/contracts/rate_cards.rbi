# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          sig { returns(MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders) }
          def product_orders
          end

          sig { returns(MetronomeSDK::Resources::V1::Contracts::RateCards::Rates) }
          def rates
          end

          sig { returns(MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules) }
          def named_schedules
          end

          sig do
            params(
              name: String,
              aliases: T::Array[MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::Alias],
              credit_type_conversions: T::Array[MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::CreditTypeConversion],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              fiat_credit_type_id: String,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse)
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
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse)
          end
          def retrieve(id:, request_options: {})
          end

          sig do
            params(
              rate_card_id: String,
              aliases: T::Array[MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams::Alias],
              description: String,
              name: String,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Contracts::RateCardUpdateResponse)
          end
          def update(rate_card_id:, aliases: nil, description: nil, name: nil, request_options: {})
          end

          sig do
            params(
              limit: Integer,
              next_page: String,
              body: T.anything,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::CursorPage[MetronomeSDK::Models::V1::Contracts::RateCardListResponse])
          end
          def list(limit: nil, next_page: nil, body: nil, request_options: {})
          end

          sig do
            params(
              rate_card_id: String,
              starting_at: Time,
              limit: Integer,
              next_page: String,
              ending_before: Time,
              selectors: T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector],
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse)
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

          sig { params(client: MetronomeSDK::Client).void }
          def initialize(client:)
          end
        end
      end
    end
  end
end
