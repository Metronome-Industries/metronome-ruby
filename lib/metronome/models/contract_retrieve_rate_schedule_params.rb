# frozen_string_literal: true

module Metronome
  module Models
    class ContractRetrieveRateScheduleParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

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

      # @!attribute [r] at
      #   optional timestamp which overlaps with the returned rate schedule segments. When
      #     not specified, the current timestamp will be used.
      #
      #   @return [Time, nil]
      optional :at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :at

      # @!attribute [r] selectors
      #   List of rate selectors, rates matching ANY of the selectors will be included in
      #     the response. Passing no selectors will result in all rates being returned.
      #
      #   @return [Array<Metronome::Models::ContractRetrieveRateScheduleParams::Selector>]
      optional :selectors,
               -> { Metronome::ArrayOf[Metronome::Models::ContractRetrieveRateScheduleParams::Selector] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractRetrieveRateScheduleParams::Selector>]
      #   attr_writer :selectors

      # @!parse
      #   # @param contract_id [String]
      #   # @param customer_id [String]
      #   # @param limit [Integer]
      #   # @param next_page [String]
      #   # @param at [Time]
      #   # @param selectors [Array<Metronome::Models::ContractRetrieveRateScheduleParams::Selector>]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(contract_id:, customer_id:, limit: nil, next_page: nil, at: nil, selectors: nil, request_options: {}, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # selector => {
      #   partial_pricing_group_values: -> { Metronome::HashOf[String] === _1 },
      #   pricing_group_values: -> { Metronome::HashOf[String] === _1 },
      #   product_id: String,
      #   product_tags: -> { Metronome::ArrayOf[String] === _1 }
      # }
      # ```
      class Selector < Metronome::BaseModel
        # @!attribute [r] partial_pricing_group_values
        #   List of pricing group key value pairs, rates containing the matching key / value
        #     pairs will be included in the response.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :partial_pricing_group_values, Metronome::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :partial_pricing_group_values

        # @!attribute [r] pricing_group_values
        #   List of pricing group key value pairs, rates matching all of the key / value
        #     pairs will be included in the response.
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

        # @!attribute [r] product_tags
        #   List of product tags, rates matching any of the tags will be included in the
        #     response.
        #
        #   @return [Array<String>]
        optional :product_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :product_tags

        # @!parse
        #   # @param partial_pricing_group_values [Hash{Symbol=>String}]
        #   # @param pricing_group_values [Hash{Symbol=>String}]
        #   # @param product_id [String]
        #   # @param product_tags [Array<String>]
        #   #
        #   def initialize(partial_pricing_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
