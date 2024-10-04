# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      class RateCards
        class Rates
          def initialize(client:)
            @client = client
          end

          # Get all rates for a rate card at a point in time
          #
          # @param params [Hash] Attributes to send in this request.
          # @option params [DateTime] :at Body param: inclusive starting point for the rates schedule
          # @option params [String] :rate_card_id Body param: ID of the rate card to get the schedule for
          # @option params [Integer, nil] :limit Query param: Max number of results that should be returned
          # @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
          # @option params [Array<Selector>, nil] :selectors Body param: List of rate selectors, rates matching ANY of the selector will be
          #   included in the response Passing no selectors will result in all rates being
          #   returned.
          #
          # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Metronome::CursorPage<Metronome::Models::RateListResponse>]
          def list(params = {}, opts = {})
            req = {}
            req[:method] = :post
            req[:path] = "/contract-pricing/rate-cards/getRates"
            query_params = [:limit, :next_page]
            req[:query] = params.slice(*query_params)
            req[:body] = params.except(*query_params)
            req[:page] = Metronome::CursorPage
            req[:model] = Metronome::Models::RateListResponse
            @client.request(req, opts)
          end

          # Add a new rate
          #
          # @param params [Hash] Attributes to send in this request.
          # @option params [Boolean] :entitled
          # @option params [String] :product_id ID of the product to add a rate for
          # @option params [String] :rate_card_id ID of the rate card to update
          # @option params [Symbol, RateType] :rate_type
          # @option params [DateTime] :starting_at inclusive effective date
          # @option params [CommitRate, nil] :commit_rate The rate that will be used to rate a product when it is paid for by a commit.
          #   This feature requires opt-in before it can be used. Please contact Metronome
          #   support to enable this feature.
          # @option params [String, nil] :credit_type_id "The Metronome ID of the credit type to associate with price, defaults to USD
          #   (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE
          #   rates use the credit type of associated rates."
          # @option params [Hash, nil] :custom_rate Only set for CUSTOM rate_type. This field is interpreted by custom rate
          #   processors.
          # @option params [DateTime, nil] :ending_before exclusive end date
          # @option params [Boolean, nil] :is_prorated Default proration configuration. Only valid for SUBSCRIPTION rate_type.
          # @option params [Float, nil] :price Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For
          #   PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this
          #   must be >=0 and <=1.
          # @option params [Hash, nil] :pricing_group_values Optional. List of pricing group key value pairs which will be used to calculate
          #   the price.
          # @option params [Float, nil] :quantity Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
          # @option params [Array<Metronome::Models::Tier>, nil] :tiers Only set for TIERED rate_type.
          # @option params [Boolean, nil] :use_list_prices Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
          #   using list prices rather than the standard rates for this product on the
          #   contract.
          #
          # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Metronome::Models::RateAddResponse]
          def add(params = {}, opts = {})
            req = {}
            req[:method] = :post
            req[:path] = "/contract-pricing/rate-cards/addRate"
            req[:body] = params
            req[:model] = Metronome::Models::RateAddResponse
            @client.request(req, opts)
          end

          # Add new rates
          #
          # @param params [Hash] Attributes to send in this request.
          # @option params [String, nil] :rate_card_id
          # @option params [Array<Rate>, nil] :rates
          #
          # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
          #
          # @return [Metronome::Models::RateAddManyResponse]
          def add_many(params = {}, opts = {})
            req = {}
            req[:method] = :post
            req[:path] = "/contract-pricing/rate-cards/addRates"
            req[:body] = params
            req[:model] = Metronome::Models::RateAddManyResponse
            @client.request(req, opts)
          end
        end
      end
    end
  end
end
