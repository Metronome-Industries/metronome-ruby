# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      class RateCards
        # @return [Metronome::Resources::Contracts::RateCards::ProductOrders]
        attr_reader :product_orders

        # @return [Metronome::Resources::Contracts::RateCards::Rates]
        attr_reader :rates

        # @return [Metronome::Resources::Contracts::RateCards::NamedSchedules]
        attr_reader :named_schedules

        # @param client [Metronome::Client]
        def initialize(client:)
          @client = client
          @product_orders = Metronome::Resources::Contracts::RateCards::ProductOrders.new(client: client)
          @rates = Metronome::Resources::Contracts::RateCards::Rates.new(client: client)
          @named_schedules = Metronome::Resources::Contracts::RateCards::NamedSchedules.new(client: client)
        end

        # Create a new rate card
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :name Used only in UI/API. It is not exposed to end customers.
        #   @option params [Array<Alias>, nil] :aliases Reference this alias when creating a contract. If the same alias is assigned to
        #     multiple rate cards, it will reference the rate card to which it was most
        #     recently assigned. It is not exposed to end customers.
        #   @option params [Array<CreditTypeConversion>, nil] :credit_type_conversions Required when using custom pricing units in rates.
        #   @option params [Hash, nil] :custom_fields
        #   @option params [String, nil] :description
        #   @option params [String, nil] :fiat_credit_type_id The Metronome ID of the credit type to associate with the rate card, defaults to
        #     USD (cents) if not passed.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::RateCardCreateResponse]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/contract-pricing/rate-cards/create",
            headers: {"Content-Type" => "application/json"},
            body: params,
            model: Metronome::Models::RateCardCreateResponse
          }
          @client.request(req, opts)
        end

        # Get a specific rate card NOTE: Use `/contract-pricing/rate-cards/getRates` to
        #   retrieve rate card rates.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :id
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::RateCardRetrieveResponse]
        def retrieve(params = {}, opts = {})
          req = {
            method: :post,
            path: "/contract-pricing/rate-cards/get",
            headers: {"Content-Type" => "application/json"},
            body: params,
            model: Metronome::Models::RateCardRetrieveResponse
          }
          @client.request(req, opts)
        end

        # Update a rate card
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :rate_card_id ID of the rate card to update
        #   @option params [Array<Alias>, nil] :aliases Reference this alias when creating a contract. If the same alias is assigned to
        #     multiple rate cards, it will reference the rate card to which it was most
        #     recently assigned. It is not exposed to end customers.
        #   @option params [Hash, nil] :custom_fields
        #   @option params [String, nil] :description
        #   @option params [String, nil] :name Used only in UI/API. It is not exposed to end customers.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::RateCardUpdateResponse]
        def update(params = {}, opts = {})
          req = {
            method: :post,
            path: "/contract-pricing/rate-cards/update",
            headers: {"Content-Type" => "application/json"},
            body: params,
            model: Metronome::Models::RateCardUpdateResponse
          }
          @client.request(req, opts)
        end

        # List rate cards NOTE: Use `/contract-pricing/rate-cards/getRates` to retrieve
        #   rate card rates.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [Object] :body Body param:
        #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
        #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::CursorPage<Metronome::Models::RateCardListResponse>]
        def list(params = {}, opts = {})
          req = {
            method: :post,
            path: "/contract-pricing/rate-cards/list",
            query: params.except(:body),
            headers: {"Content-Type" => "application/json"},
            body: params[:body],
            page: Metronome::CursorPage,
            model: Metronome::Models::RateCardListResponse
          }
          @client.request(req, opts)
        end

        # Get all rates for a rate card from starting_at (either in perpetuity or until
        #   ending_before, if provided)
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :rate_card_id Body param: ID of the rate card to get the schedule for
        #   @option params [Time] :starting_at Body param: inclusive starting point for the rates schedule
        #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
        #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
        #   @option params [Time, nil] :ending_before Body param: optional exclusive end date for the rates schedule. When not
        #     specified rates will show all future schedule segments.
        #   @option params [Array<Selector>, nil] :selectors Body param: List of rate selectors, rates matching ANY of the selector will be
        #     included in the response Passing no selectors will result in all rates being
        #     returned.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::RateCardRetrieveRateScheduleResponse]
        def retrieve_rate_schedule(params = {}, opts = {})
          query_params = [:limit, :next_page]
          req = {
            method: :post,
            path: "/contract-pricing/rate-cards/getRateSchedule",
            query: params.slice(*query_params),
            headers: {"Content-Type" => "application/json"},
            body: params.except(*query_params),
            model: Metronome::Models::RateCardRetrieveRateScheduleResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
