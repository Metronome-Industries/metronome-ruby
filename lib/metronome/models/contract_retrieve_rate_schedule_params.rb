# frozen_string_literal: true

module Metronome
  module Models
    class ContractRetrieveRateScheduleParams < Metronome::BaseModel
      # @!attribute contract_id
      #   ID of the contract to get the rate schedule for.
      #
      #   @return [String]
      required :contract_id, String

      # @!attribute customer_id
      #   ID of the customer for whose contract to get the rate schedule for.
      #
      #   @return [String]
      required :customer_id, String

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

      # @!attribute at
      #   optional timestamp which overlaps with the returned rate schedule segments. When not specified, the current timestamp will be used.
      #
      #   @return [Time]
      optional :at, Time

      # @!attribute selectors
      #   List of rate selectors, rates matching ANY of the selectors will be included in the response. Passing no selectors will result in all rates being returned.
      #
      #   @return [Array<Metronome::Models::ContractRetrieveRateScheduleParams::Selector>]
      optional :selectors,
               -> { Metronome::ArrayOf[Metronome::Models::ContractRetrieveRateScheduleParams::Selector] }

      # @!parse
      #   # @param contract_id [String] ID of the contract to get the rate schedule for.
      #   #
      #   # @param customer_id [String] ID of the customer for whose contract to get the rate schedule for.
      #   #
      #   # @param limit [Integer] Max number of results that should be returned
      #   #
      #   # @param next_page [String] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param at [String] optional timestamp which overlaps with the returned rate schedule segments. When
      #   #   not specified, the current timestamp will be used.
      #   #
      #   # @param selectors [Array<Metronome::Models::ContractRetrieveRateScheduleParams::Selector>] List of rate selectors, rates matching ANY of the selectors will be included in
      #   #   the response. Passing no selectors will result in all rates being returned.
      #   #
      #   def initialize(contract_id:, customer_id:, limit: nil, next_page: nil, at: nil, selectors: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      #
      # ```ruby
      # selector => {
      #   partial_pricing_group_values: -> { Metronome::HashOf[String] === _1 },
      #   pricing_group_values: -> { Metronome::HashOf[String] === _1 },
      #   product_id: String,
      #   product_tags: -> { Metronome::ArrayOf[String] === _1 }
      # }
      # ```
      class Selector < Metronome::BaseModel
        # @!attribute partial_pricing_group_values
        #   List of pricing group key value pairs, rates containing the matching key / value pairs will be included in the response.
        #
        #   @return [Hash{Symbol => String}]
        optional :partial_pricing_group_values, Metronome::HashOf[String]

        # @!attribute pricing_group_values
        #   List of pricing group key value pairs, rates matching all of the key / value pairs will be included in the response.
        #
        #   @return [Hash{Symbol => String}]
        optional :pricing_group_values, Metronome::HashOf[String]

        # @!attribute product_id
        #   Rates matching the product id will be included in the response.
        #
        #   @return [String]
        optional :product_id, String

        # @!attribute product_tags
        #   List of product tags, rates matching any of the tags will be included in the response.
        #
        #   @return [Array<String>]
        optional :product_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @param partial_pricing_group_values [Hash{Symbol => String}] List of pricing group key value pairs, rates containing the matching key / value
        #   #   pairs will be included in the response.
        #   #
        #   # @param pricing_group_values [Hash{Symbol => String}] List of pricing group key value pairs, rates matching all of the key / value
        #   #   pairs will be included in the response.
        #   #
        #   # @param product_id [String] Rates matching the product id will be included in the response.
        #   #
        #   # @param product_tags [Array<String>] List of product tags, rates matching any of the tags will be included in the
        #   #   response.
        #   #
        #   def initialize(partial_pricing_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
