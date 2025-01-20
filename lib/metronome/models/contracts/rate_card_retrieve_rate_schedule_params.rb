# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardRetrieveRateScheduleParams < Metronome::BaseModel
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

        # @!attribute [r] limit
        #   Max number of results that should be returned
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :limit

        # @!attribute [r] next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!parse
        #   # @return [String]
        #   attr_writer :next_page

        # @!attribute [r] ending_before
        #   optional exclusive end date for the rates schedule. When not specified rates will show all future schedule segments.
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :ending_before

        # @!attribute [r] selectors
        #   List of rate selectors, rates matching ANY of the selector will be included in the response Passing no selectors will result in all rates being returned.
        #
        #   @return [Array<Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector>]
        optional :selectors,
                 -> {
                   Metronome::ArrayOf[Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector]
                 }

        # @!parse
        #   # @return [Array<Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector>]
        #   attr_writer :selectors

        # @!parse
        #   # @param rate_card_id [String] ID of the rate card to get the schedule for
        #   #
        #   # @param starting_at [String] inclusive starting point for the rates schedule
        #   #
        #   # @param limit [Integer] Max number of results that should be returned
        #   #
        #   # @param next_page [String] Cursor that indicates where the next page of results should start.
        #   #
        #   # @param ending_before [String] optional exclusive end date for the rates schedule. When not specified rates
        #   #   will show all future schedule segments.
        #   #
        #   # @param selectors [Array<Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector>] List of rate selectors, rates matching ANY of the selector will be included in
        #   #   the response Passing no selectors will result in all rates being returned.
        #   #
        #   def initialize(rate_card_id:, starting_at:, limit: nil, next_page: nil, ending_before: nil, selectors: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # selector => {
        #   partial_pricing_group_values: -> { Metronome::HashOf[String] === _1 },
        #   pricing_group_values: -> { Metronome::HashOf[String] === _1 },
        #   product_id: String
        # }
        # ```
        class Selector < Metronome::BaseModel
          # @!attribute [r] partial_pricing_group_values
          #   List of pricing group key value pairs, rates containing the matching key / value pairs will be included in the response.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :partial_pricing_group_values, Metronome::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :partial_pricing_group_values

          # @!attribute [r] pricing_group_values
          #   List of pricing group key value pairs, rates matching all of the key / value pairs will be included in the response.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :pricing_group_values, Metronome::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :pricing_group_values

          # @!attribute [r] product_id
          #   Rates matching the product id will be included in the response.
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :product_id

          # @!parse
          #   # @param partial_pricing_group_values [Hash{Symbol=>String}] List of pricing group key value pairs, rates containing the matching key / value
          #   #   pairs will be included in the response.
          #   #
          #   # @param pricing_group_values [Hash{Symbol=>String}] List of pricing group key value pairs, rates matching all of the key / value
          #   #   pairs will be included in the response.
          #   #
          #   # @param product_id [String] Rates matching the product id will be included in the response.
          #   #
          #   def initialize(partial_pricing_group_values: nil, pricing_group_values: nil, product_id: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
