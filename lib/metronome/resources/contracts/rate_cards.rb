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

        def initialize(client:)
          @client = client
          @product_orders = Metronome::Resources::Contracts::RateCards::ProductOrders.new(client: client)
          @rates = Metronome::Resources::Contracts::RateCards::Rates.new(client: client)
          @named_schedules = Metronome::Resources::Contracts::RateCards::NamedSchedules.new(client: client)
        end

        # Create a new rate card
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :name Used only in UI/API. It is not exposed to end customers.
        # @option params [Array<Alias>] :aliases Reference this alias when creating a contract. If the same alias is assigned to
        #   multiple rate cards, it will reference the rate card to which it was most
        #   recently assigned. It is not exposed to end customers.
        # @option params [Array<CreditTypeConversion>] :credit_type_conversions Required when using custom pricing units in rates.
        # @option params [Hash] :custom_fields
        # @option params [String] :description
        # @option params [String] :fiat_credit_type_id "The Metronome ID of the credit type to associate with the rate card, defaults
        #   to USD (cents) if not passed."
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Metronome::Models::RateCardCreateResponse]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/contract-pricing/rate-cards/create"
          req[:body] = params
          req[:model] = Metronome::Models::RateCardCreateResponse
          @client.request(req, opts)
        end

        # Get a specific rate card NOTE: Use `/contract-pricing/rate-cards/getRates` to
        #   retrieve rate card rates.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :id
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Metronome::Models::RateCardRetrieveResponse]
        def retrieve(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/contract-pricing/rate-cards/get"
          req[:body] = params
          req[:model] = Metronome::Models::RateCardRetrieveResponse
          @client.request(req, opts)
        end

        # Update a rate card
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :rate_card_id ID of the rate card to update
        # @option params [Array<Alias>] :aliases Reference this alias when creating a contract. If the same alias is assigned to
        #   multiple rate cards, it will reference the rate card to which it was most
        #   recently assigned. It is not exposed to end customers.
        # @option params [Hash] :custom_fields
        # @option params [String] :description
        # @option params [String] :name Used only in UI/API. It is not exposed to end customers.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Metronome::Models::RateCardUpdateResponse]
        def update(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/contract-pricing/rate-cards/update"
          req[:body] = params
          req[:model] = Metronome::Models::RateCardUpdateResponse
          @client.request(req, opts)
        end

        # List rate cards NOTE: Use `/contract-pricing/rate-cards/getRates` to retrieve
        #   rate card rates.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [Object] :body Body param:
        # @option params [Integer] :limit Query param: Max number of results that should be returned
        # @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Metronome::CursorPage<Metronome::Models::RateCardListResponse>]
        def list(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/contract-pricing/rate-cards/list"
          req[:body] = params[:body]
          req[:query] = params.except(:body)
          req[:page] = Metronome::CursorPage
          req[:model] = Metronome::Models::RateCardListResponse
          @client.request(req, opts)
        end

        # Get a specific rate schedule including all rate card entries
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :rate_card_id Body param: ID of the rate card to get the schedule for
        # @option params [DateTime] :starting_at Body param: inclusive starting point for the rates schedule
        # @option params [Integer] :limit Query param: Max number of results that should be returned
        # @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
        # @option params [DateTime] :ending_before Body param: optional exclusive end date for the rates schedule. When not
        #   specified rates will show all future schedule segments.
        # @option params [Array<Selector>] :selectors Body param: List of rate selectors, rates matching ANY of the selector will be
        #   included in the response Passing no selectors will result in all rates being
        #   returned.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Metronome::Models::RateCardRetrieveRateScheduleResponse]
        def retrieve_rate_schedule(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/contract-pricing/rate-cards/getRateSchedule"
          query_params = [:limit, :next_page]
          req[:query] = params.slice(*query_params)
          req[:body] = params.except(*query_params)
          req[:model] = Metronome::Models::RateCardRetrieveRateScheduleResponse
          @client.request(req, opts)
        end
      end
    end
  end
end
