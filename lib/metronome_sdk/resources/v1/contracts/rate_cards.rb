# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          # @return [MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders]
          attr_reader :product_orders

          # @return [MetronomeSDK::Resources::V1::Contracts::RateCards::Rates]
          attr_reader :rates

          # @return [MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules]
          attr_reader :named_schedules

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Contracts::RateCardCreateParams} for more details.
          #
          # Create a new rate card
          #
          # @overload create(name:, aliases: nil, credit_type_conversions: nil, custom_fields: nil, description: nil, fiat_credit_type_id: nil, request_options: {})
          #
          # @param name [String] Used only in UI/API. It is not exposed to end customers.
          #
          # @param aliases [Array<MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::Alias>] Reference this alias when creating a contract. If the same alias is assigned to
          # ...
          #
          # @param credit_type_conversions [Array<MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::CreditTypeConversion>] Required when using custom pricing units in rates.
          #
          # @param custom_fields [Hash{Symbol=>String}]
          #
          # @param description [String]
          #
          # @param fiat_credit_type_id [String] The Metronome ID of the credit type to associate with the rate card, defaults to
          # ...
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardCreateParams
          def create(params)
            parsed, options = MetronomeSDK::Models::V1::Contracts::RateCardCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/create",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse,
              options: options
            )
          end

          # Get a specific rate card NOTE: Use `/contract-pricing/rate-cards/getRates` to
          # retrieve rate card rates.
          #
          # @overload retrieve(id:, request_options: {})
          #
          # @param id [String]
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardRetrieveParams
          def retrieve(params)
            parsed, options = MetronomeSDK::Models::V1::Contracts::RateCardRetrieveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/get",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams} for more details.
          #
          # Update a rate card
          #
          # @overload update(rate_card_id:, aliases: nil, description: nil, name: nil, request_options: {})
          #
          # @param rate_card_id [String] ID of the rate card to update
          #
          # @param aliases [Array<MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams::Alias>] Reference this alias when creating a contract. If the same alias is assigned to
          # ...
          #
          # @param description [String]
          #
          # @param name [String] Used only in UI/API. It is not exposed to end customers.
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardUpdateResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams
          def update(params)
            parsed, options = MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/update",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::RateCardUpdateResponse,
              options: options
            )
          end

          # List rate cards NOTE: Use `/contract-pricing/rate-cards/getRates` to retrieve
          # rate card rates.
          #
          # @overload list(limit: nil, next_page: nil, body: nil, request_options: {})
          #
          # @param limit [Integer] Query param: Max number of results that should be returned
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param body [Object] Body param:
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::Contracts::RateCardListResponse>]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardListParams
          def list(params = {})
            parsed, options = MetronomeSDK::Models::V1::Contracts::RateCardListParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/list",
              query: parsed.except(:body),
              body: parsed[:body],
              page: MetronomeSDK::Internal::CursorPage,
              model: MetronomeSDK::Models::V1::Contracts::RateCardListResponse,
              options: options
            )
          end

          # Archive a rate card
          #
          # @overload archive(id:, request_options: {})
          #
          # @param id [String]
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardArchiveResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardArchiveParams
          def archive(params)
            parsed, options = MetronomeSDK::Models::V1::Contracts::RateCardArchiveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/archive",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::RateCardArchiveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams} for
          # more details.
          #
          # Get all rates for a rate card from starting_at (either in perpetuity or until
          # ending_before, if provided)
          #
          # @overload retrieve_rate_schedule(rate_card_id:, starting_at:, limit: nil, next_page: nil, ending_before: nil, selectors: nil, request_options: {})
          #
          # @param rate_card_id [String] Body param: ID of the rate card to get the schedule for
          #
          # @param starting_at [Time] Body param: inclusive starting point for the rates schedule
          #
          # @param limit [Integer] Query param: Max number of results that should be returned
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param ending_before [Time] Body param: optional exclusive end date for the rates schedule. When not specifi
          # ...
          #
          # @param selectors [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector>] Body param: List of rate selectors, rates matching ANY of the selector will be i
          # ...
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams
          def retrieve_rate_schedule(params)
            parsed, options =
              MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams.dump_request(params)
            query_params = [:limit, :next_page]
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/getRateSchedule",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [MetronomeSDK::Client]
          def initialize(client:)
            @client = client
            @product_orders = MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders.new(client: client)
            @rates = MetronomeSDK::Resources::V1::Contracts::RateCards::Rates.new(client: client)
            @named_schedules = MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules.new(client: client)
          end
        end
      end
    end
  end
end
