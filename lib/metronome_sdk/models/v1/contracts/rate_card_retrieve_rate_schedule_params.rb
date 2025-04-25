# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::RateCards#retrieve_rate_schedule
        class RateCardRetrieveRateScheduleParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute rate_card_id
          #   ID of the rate card to get the schedule for
          #
          #   @return [String]
          required :rate_card_id, String

          # @!attribute starting_at
          #   inclusive starting point for the rates schedule
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute limit
          #   Max number of results that should be returned
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute next_page
          #   Cursor that indicates where the next page of results should start.
          #
          #   @return [String, nil]
          optional :next_page, String

          # @!attribute ending_before
          #   optional exclusive end date for the rates schedule. When not specified rates
          #   will show all future schedule segments.
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute selectors
          #   List of rate selectors, rates matching ANY of the selector will be included in
          #   the response Passing no selectors will result in all rates being returned.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector>, nil]
          optional :selectors,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector] }

          # @!method initialize(rate_card_id:, starting_at:, limit: nil, next_page: nil, ending_before: nil, selectors: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams} for
          #   more details.
          #
          #   @param rate_card_id [String] ID of the rate card to get the schedule for
          #
          #   @param starting_at [Time] inclusive starting point for the rates schedule
          #
          #   @param limit [Integer] Max number of results that should be returned
          #
          #   @param next_page [String] Cursor that indicates where the next page of results should start.
          #
          #   @param ending_before [Time] optional exclusive end date for the rates schedule. When not specified rates wil
          #   ...
          #
          #   @param selectors [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector>] List of rate selectors, rates matching ANY of the selector will be included in t
          #   ...
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          class Selector < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute partial_pricing_group_values
            #   List of pricing group key value pairs, rates containing the matching key / value
            #   pairs will be included in the response.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :partial_pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute pricing_group_values
            #   List of pricing group key value pairs, rates matching all of the key / value
            #   pairs will be included in the response.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute product_id
            #   Rates matching the product id will be included in the response.
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!method initialize(partial_pricing_group_values: nil, pricing_group_values: nil, product_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector}
            #   for more details.
            #
            #   @param partial_pricing_group_values [Hash{Symbol=>String}] List of pricing group key value pairs, rates containing the matching key / value
            #   ...
            #
            #   @param pricing_group_values [Hash{Symbol=>String}] List of pricing group key value pairs, rates matching all of the key / value pai
            #   ...
            #
            #   @param product_id [String] Rates matching the product id will be included in the response.
          end
        end
      end
    end
  end
end
