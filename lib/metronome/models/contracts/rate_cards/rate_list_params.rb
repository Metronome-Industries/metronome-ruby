# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        class RateListParams < Metronome::BaseModel
          # @!attribute at
          #   inclusive starting point for the rates schedule
          #
          #   @return [Time]
          required :at, Time

          # @!attribute rate_card_id
          #   ID of the rate card to get the schedule for
          #
          #   @return [String]
          required :rate_card_id, String

          # @!attribute limit
          #   Max number of results that should be returned
          #
          #   @return [Integer]
          optional :limit, Integer

          # @!attribute next_page
          #   Cursor that indicates where the next page of results should start.
          #
          #   @return [String]
          optional :next_page, String

          # @!attribute selectors
          #   List of rate selectors, rates matching ANY of the selector will be included in the response Passing no selectors will result in all rates being returned.
          #
          #   @return [Array<Metronome::Models::Contracts::RateCards::RateListParams::Selector>]
          optional :selectors,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Contracts::RateCards::RateListParams::Selector
                     }
                   )

          # @!parse
          #   # @param at [String] inclusive starting point for the rates schedule
          #   #
          #   # @param rate_card_id [String] ID of the rate card to get the schedule for
          #   #
          #   # @param limit [Integer, nil] Max number of results that should be returned
          #   #
          #   # @param next_page [String, nil] Cursor that indicates where the next page of results should start.
          #   #
          #   # @param selectors [Array<Metronome::Models::Contracts::RateCards::RateListParams::Selector>, nil] List of rate selectors, rates matching ANY of the selector will be included in
          #   #   the response Passing no selectors will result in all rates being returned.
          #   #
          #   def initialize(at:, rate_card_id:, limit: nil, next_page: nil, selectors: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class Selector < Metronome::BaseModel
            # @!attribute partial_pricing_group_values
            #   List of pricing group key value pairs, rates containing the matching key / value pairs will be included in the response.
            #
            #   @return [Hash]
            optional :partial_pricing_group_values, Hash

            # @!attribute pricing_group_values
            #   List of pricing group key value pairs, rates matching all of the key / value pairs will be included in the response.
            #
            #   @return [Hash]
            optional :pricing_group_values, Hash

            # @!attribute product_id
            #   Rates matching the product id will be included in the response.
            #
            #   @return [String]
            optional :product_id, String

            # @!attribute product_tags
            #   List of product tags, rates matching any of the tags will be included in the response.
            #
            #   @return [Array<String>]
            optional :product_tags, Metronome::ArrayOf.new(String)

            # @!parse
            #   # @param partial_pricing_group_values [Hash, nil] List of pricing group key value pairs, rates containing the matching key / value
            #   #   pairs will be included in the response.
            #   #
            #   # @param pricing_group_values [Hash, nil] List of pricing group key value pairs, rates matching all of the key / value
            #   #   pairs will be included in the response.
            #   #
            #   # @param product_id [String, nil] Rates matching the product id will be included in the response.
            #   #
            #   # @param product_tags [Array<String>, nil] List of product tags, rates matching any of the tags will be included in the
            #   #   response.
            #   #
            #   def initialize(partial_pricing_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end
      end
    end
  end
end
