# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          class Rates
            # Some parameter documentations has been truncated, see
            # {MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams} for more
            # details.
            #
            # Understand the rate schedule at a given timestamp, optionally filtering the list
            # of rates returned based on properties such as product_id and
            # pricing_group_values . For example, you may want to display the current price
            # for a given product in your product experience - use this endpoint to fetch that
            # information from its source of truth in Metronome.
            #
            # If you want to understand the rates for a specific customer's contract,
            # inclusive of contract-level overrides, use the getContractRateSchedule endpoint.
            #
            # @overload list(at:, rate_card_id:, limit: nil, next_page: nil, selectors: nil, request_options: {})
            #
            # @param at [Time] Body param: inclusive starting point for the rates schedule
            #
            # @param rate_card_id [String] Body param: ID of the rate card to get the schedule for
            #
            # @param limit [Integer] Query param: Max number of results that should be returned
            #
            # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
            #
            # @param selectors [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams::Selector>] Body param: List of rate selectors, rates matching ANY of the selector will be i
            #
            # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse>]
            #
            # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams
            def list(params)
              parsed, options = MetronomeSDK::V1::Contracts::RateCards::RateListParams.dump_request(params)
              query_params = [:limit, :next_page]
              @client.request(
                method: :post,
                path: "v1/contract-pricing/rate-cards/getRates",
                query: parsed.slice(*query_params),
                body: parsed.except(*query_params),
                page: MetronomeSDK::Internal::CursorPage,
                model: MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams} for more
            # details.
            #
            # Add a new rate
            #
            # @overload add(entitled:, product_id:, rate_card_id:, rate_type:, starting_at:, billing_frequency: nil, commit_rate: nil, credit_type_id: nil, custom_rate: nil, ending_before: nil, is_prorated: nil, price: nil, pricing_group_values: nil, quantity: nil, tiers: nil, use_list_prices: nil, request_options: {})
            #
            # @param entitled [Boolean]
            #
            # @param product_id [String] ID of the product to add a rate for
            #
            # @param rate_card_id [String] ID of the rate card to update
            #
            # @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams::RateType]
            #
            # @param starting_at [Time] inclusive effective date
            #
            # @param billing_frequency [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams::BillingFrequency] Optional. Frequency to bill subscriptions with. Required for subscription type p
            #
            # @param commit_rate [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams::CommitRate] A distinct rate on the rate card. You can choose to use this rate rather than li
            #
            # @param credit_type_id [String] The Metronome ID of the credit type to associate with price, defaults to USD (ce
            #
            # @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
            #
            # @param ending_before [Time] exclusive end date
            #
            # @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
            #
            # @param price [Float] Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For PERCEN
            #
            # @param pricing_group_values [Hash{Symbol=>String}] Optional. List of pricing group key value pairs which will be used to calculate
            #
            # @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
            #
            # @param tiers [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams::Tier>] Only set for TIERED rate_type.
            #
            # @param use_list_prices [Boolean] Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
            #
            # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse]
            #
            # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams
            def add(params)
              parsed, options = MetronomeSDK::V1::Contracts::RateCards::RateAddParams.dump_request(params)
              @client.request(
                method: :post,
                path: "v1/contract-pricing/rate-cards/addRate",
                body: parsed,
                model: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse,
                options: options
              )
            end

            # Add new rates
            #
            # @overload add_many(rate_card_id:, rates:, request_options: {})
            #
            # @param rate_card_id [String]
            # @param rates [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate>]
            # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse]
            #
            # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams
            def add_many(params)
              parsed, options = MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams.dump_request(params)
              @client.request(
                method: :post,
                path: "v1/contract-pricing/rate-cards/addRates",
                body: parsed,
                model: MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [MetronomeSDK::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
