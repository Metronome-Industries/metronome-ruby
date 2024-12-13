# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardRetrieveRateScheduleParams < Metronome::BaseModel
        # @!attribute rate_card_id
        #   ID of the rate card to get the schedule for
        #   @return [String]
        required :rate_card_id, String

        # @!attribute starting_at
        #   inclusive starting point for the rates schedule
        #   @return [Time]
        required :starting_at, Time

        # @!attribute limit
        #   Max number of results that should be returned
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #   @return [String]
        optional :next_page, String

        # @!attribute ending_before
        #   optional exclusive end date for the rates schedule. When not specified rates will show all future schedule segments.
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute selectors
        #   List of rate selectors, rates matching ANY of the selector will be included in the response Passing no selectors will result in all rates being returned.
        #   @return [Array<Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector>]
        optional :selectors,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::Contracts::RateCardRetrieveRateScheduleParams::Selector
                   }
                 )

        class Selector < Metronome::BaseModel
          # @!attribute partial_pricing_group_values
          #   List of pricing group key value pairs, rates containing the matching key / value pairs will be included in the response.
          #   @return [Hash]
          optional :partial_pricing_group_values, Hash

          # @!attribute pricing_group_values
          #   List of pricing group key value pairs, rates matching all of the key / value pairs will be included in the response.
          #   @return [Hash]
          optional :pricing_group_values, Hash

          # @!attribute product_id
          #   Rates matching the product id will be included in the response.
          #   @return [String]
          optional :product_id, String

          # @!parse
          #   # Create a new instance of Selector from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Hash, nil] :partial_pricing_group_values List of pricing group key value pairs, rates containing the matching key / value
          #   #     pairs will be included in the response.
          #   #   @option data [Hash, nil] :pricing_group_values List of pricing group key value pairs, rates matching all of the key / value
          #   #     pairs will be included in the response.
          #   #   @option data [String, nil] :product_id Rates matching the product id will be included in the response.
          #   def initialize(data = {}) = super
        end
      end
    end
  end
end
