# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          sig { returns(MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders) }
          attr_reader :product_orders

          sig { returns(MetronomeSDK::Resources::V1::Contracts::RateCards::Rates) }
          attr_reader :rates

          sig { returns(MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules) }
          attr_reader :named_schedules

          # Create a new rate card
          sig do
            params(
              name: String,
              aliases: T::Array[T.any(MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::Alias, MetronomeSDK::Internal::AnyHash)],
              credit_type_conversions: T::Array[
                T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::CreditTypeConversion,
                  MetronomeSDK::Internal::AnyHash
                )
              ],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              fiat_credit_type_id: String,
              request_options: MetronomeSDK::RequestOpts
            )
              .returns(MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse)
          end
          def create(
            # Used only in UI/API. It is not exposed to end customers.
            name:,
            # Reference this alias when creating a contract. If the same alias is assigned to
            # multiple rate cards, it will reference the rate card to which it was most
            # recently assigned. It is not exposed to end customers.
            aliases: nil,
            # Required when using custom pricing units in rates.
            credit_type_conversions: nil,
            custom_fields: nil,
            description: nil,
            # The Metronome ID of the credit type to associate with the rate card, defaults to
            # USD (cents) if not passed.
            fiat_credit_type_id: nil,
            request_options: {}
          ); end
          # Get a specific rate card NOTE: Use `/contract-pricing/rate-cards/getRates` to
          # retrieve rate card rates.
          sig do
            params(id: String, request_options: MetronomeSDK::RequestOpts)
              .returns(MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse)
          end
          def retrieve(id:, request_options: {}); end

          # Update a rate card
          sig do
            params(
              rate_card_id: String,
              aliases: T::Array[T.any(MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams::Alias, MetronomeSDK::Internal::AnyHash)],
              description: String,
              name: String,
              request_options: MetronomeSDK::RequestOpts
            )
              .returns(MetronomeSDK::Models::V1::Contracts::RateCardUpdateResponse)
          end
          def update(
            # ID of the rate card to update
            rate_card_id:,
            # Reference this alias when creating a contract. If the same alias is assigned to
            # multiple rate cards, it will reference the rate card to which it was most
            # recently assigned. It is not exposed to end customers.
            aliases: nil,
            description: nil,
            # Used only in UI/API. It is not exposed to end customers.
            name: nil,
            request_options: {}
          ); end
          # List rate cards NOTE: Use `/contract-pricing/rate-cards/getRates` to retrieve
          # rate card rates.
          sig do
            params(
              limit: Integer,
              next_page: String,
              body: T.anything,
              request_options: MetronomeSDK::RequestOpts
            )
              .returns(MetronomeSDK::Internal::CursorPage[MetronomeSDK::Models::V1::Contracts::RateCardListResponse])
          end
          def list(
            # Query param: Max number of results that should be returned
            limit: nil,
            # Query param: Cursor that indicates where the next page of results should start.
            next_page: nil,
            # Body param:
            body: nil,
            request_options: {}
          ); end
          # Archive a rate card
          sig do
            params(id: String, request_options: MetronomeSDK::RequestOpts)
              .returns(MetronomeSDK::Models::V1::Contracts::RateCardArchiveResponse)
          end
          def archive(id:, request_options: {}); end

          # Get all rates for a rate card from starting_at (either in perpetuity or until
          # ending_before, if provided)
          sig do
            params(
              rate_card_id: String,
              starting_at: Time,
              limit: Integer,
              next_page: String,
              ending_before: Time,
              selectors: T::Array[
                T.any(
                  MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector,
                  MetronomeSDK::Internal::AnyHash
                )
              ],
              request_options: MetronomeSDK::RequestOpts
            )
              .returns(MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse)
          end
          def retrieve_rate_schedule(
            # Body param: ID of the rate card to get the schedule for
            rate_card_id:,
            # Body param: inclusive starting point for the rates schedule
            starting_at:,
            # Query param: Max number of results that should be returned
            limit: nil,
            # Query param: Cursor that indicates where the next page of results should start.
            next_page: nil,
            # Body param: optional exclusive end date for the rates schedule. When not
            # specified rates will show all future schedule segments.
            ending_before: nil,
            # Body param: List of rate selectors, rates matching ANY of the selector will be
            # included in the response Passing no selectors will result in all rates being
            # returned.
            selectors: nil,
            request_options: {}
          ); end
          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:); end
        end
      end
    end
  end
end
