# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      class RateCards
        class Rates
          # Get all rates for a rate card at a point in time
          #
          # @param params [Metronome::Models::Contracts::RateCards::RateListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Time] :at Body param: inclusive starting point for the rates schedule
          #
          #   @option params [String] :rate_card_id Body param: ID of the rate card to get the schedule for
          #
          #   @option params [Integer] :limit Query param: Max number of results that should be returned
          #
          #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
          #
          #   @option params [Array<Metronome::Models::Contracts::RateCards::RateListParams::Selector>] :selectors Body param: List of rate selectors, rates matching ANY of the selector will be
          #     included in the response Passing no selectors will result in all rates being
          #     returned.
          #
          #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
          #
          # @return [Metronome::CursorPage<Metronome::Models::Contracts::RateCards::RateListResponse>]
          #
          def list(params)
            parsed, options = Metronome::Models::Contracts::RateCards::RateListParams.dump_request(params)
            query_params = [:limit, :next_page]
            @client.request(
              method: :post,
              path: "contract-pricing/rate-cards/getRates",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              page: Metronome::CursorPage,
              model: Metronome::Models::Contracts::RateCards::RateListResponse,
              options: options
            )
          end

          # Add a new rate
          #
          # @param params [Metronome::Models::Contracts::RateCards::RateAddParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Boolean] :entitled
          #
          #   @option params [String] :product_id ID of the product to add a rate for
          #
          #   @option params [String] :rate_card_id ID of the rate card to update
          #
          #   @option params [Symbol, Metronome::Models::Contracts::RateCards::RateAddParams::RateType] :rate_type
          #
          #   @option params [Time] :starting_at inclusive effective date
          #
          #   @option params [Metronome::Models::Contracts::RateCards::RateAddParams::CommitRate] :commit_rate A distinct rate on the rate card. You can choose to use this rate rather than
          #     list rate when consuming a credit or commit.
          #
          #   @option params [String] :credit_type_id The Metronome ID of the credit type to associate with price, defaults to USD
          #     (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE
          #     rates use the credit type of associated rates.
          #
          #   @option params [Hash{Symbol=>Object}] :custom_rate Only set for CUSTOM rate_type. This field is interpreted by custom rate
          #     processors.
          #
          #   @option params [Time] :ending_before exclusive end date
          #
          #   @option params [Boolean] :is_prorated Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
          #     set to true.
          #
          #   @option params [Float] :price Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For
          #     PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this
          #     must be >=0 and <=1.
          #
          #   @option params [Hash{Symbol=>String}] :pricing_group_values Optional. List of pricing group key value pairs which will be used to calculate
          #     the price.
          #
          #   @option params [Float] :quantity Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
          #
          #   @option params [Array<Metronome::Models::Tier>] :tiers Only set for TIERED rate_type.
          #
          #   @option params [Boolean] :use_list_prices Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
          #     using list prices rather than the standard rates for this product on the
          #     contract.
          #
          #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
          #
          # @return [Metronome::Models::Contracts::RateCards::RateAddResponse]
          #
          def add(params)
            parsed, options = Metronome::Models::Contracts::RateCards::RateAddParams.dump_request(params)
            @client.request(
              method: :post,
              path: "contract-pricing/rate-cards/addRate",
              body: parsed,
              model: Metronome::Models::Contracts::RateCards::RateAddResponse,
              options: options
            )
          end

          # Add new rates
          #
          # @param params [Metronome::Models::Contracts::RateCards::RateAddManyParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :rate_card_id
          #
          #   @option params [Array<Metronome::Models::Contracts::RateCards::RateAddManyParams::Rate>] :rates
          #
          #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
          #
          # @return [Metronome::Models::Contracts::RateCards::RateAddManyResponse]
          #
          def add_many(params)
            parsed, options = Metronome::Models::Contracts::RateCards::RateAddManyParams.dump_request(params)
            @client.request(
              method: :post,
              path: "contract-pricing/rate-cards/addRates",
              body: parsed,
              model: Metronome::Models::Contracts::RateCards::RateAddManyResponse,
              options: options
            )
          end

          # @param client [Metronome::Client]
          #
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
