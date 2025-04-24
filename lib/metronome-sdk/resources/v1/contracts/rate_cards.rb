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

          # Create a new rate card
          #
          # @param params [MetronomeSDK::Models::V1::Contracts::RateCardCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :name Used only in UI/API. It is not exposed to end customers.
          #
          #   @option params [Array<MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::Alias>] :aliases Reference this alias when creating a contract. If the same alias is assigned to
          #     multiple rate cards, it will reference the rate card to which it was most
          #     recently assigned. It is not exposed to end customers.
          #
          #   @option params [Array<MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::CreditTypeConversion>] :credit_type_conversions Required when using custom pricing units in rates.
          #
          #   @option params [Hash{Symbol=>String}] :custom_fields
          #
          #   @option params [String] :description
          #
          #   @option params [String] :fiat_credit_type_id The Metronome ID of the credit type to associate with the rate card, defaults to
          #     USD (cents) if not passed.
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse]
          #
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
          #   retrieve rate card rates.
          #
          # @param params [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :id
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse]
          #
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

          # Update a rate card
          #
          # @param params [MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :rate_card_id ID of the rate card to update
          #
          #   @option params [Array<MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams::Alias>] :aliases Reference this alias when creating a contract. If the same alias is assigned to
          #     multiple rate cards, it will reference the rate card to which it was most
          #     recently assigned. It is not exposed to end customers.
          #
          #   @option params [String] :description
          #
          #   @option params [String] :name Used only in UI/API. It is not exposed to end customers.
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardUpdateResponse]
          #
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
          #   rate card rates.
          #
          # @param params [MetronomeSDK::Models::V1::Contracts::RateCardListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Integer] :limit Query param: Max number of results that should be returned
          #
          #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
          #
          #   @option params [Object] :body Body param:
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::Contracts::RateCardListResponse>]
          #
          def list(params = {})
            parsed, options = MetronomeSDK::Models::V1::Contracts::RateCardListParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/list",
              query: parsed.except(:body),
              body: parsed[:body],
              page: MetronomeSDK::CursorPage,
              model: MetronomeSDK::Models::V1::Contracts::RateCardListResponse,
              options: options
            )
          end

          # Get all rates for a rate card from starting_at (either in perpetuity or until
          #   ending_before, if provided)
          #
          # @param params [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :rate_card_id Body param: ID of the rate card to get the schedule for
          #
          #   @option params [Time] :starting_at Body param: inclusive starting point for the rates schedule
          #
          #   @option params [Integer] :limit Query param: Max number of results that should be returned
          #
          #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
          #
          #   @option params [Time] :ending_before Body param: optional exclusive end date for the rates schedule. When not
          #     specified rates will show all future schedule segments.
          #
          #   @option params [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector>] :selectors Body param: List of rate selectors, rates matching ANY of the selector will be
          #     included in the response Passing no selectors will result in all rates being
          #     returned.
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse]
          #
          def retrieve_rate_schedule(params)
            parsed, options = MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams.dump_request(params)
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

          # @param client [MetronomeSDK::Client]
          #
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
