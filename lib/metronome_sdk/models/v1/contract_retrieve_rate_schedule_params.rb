# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#retrieve_rate_schedule
      class ContractRetrieveRateScheduleParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

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
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute at
        #   optional timestamp which overlaps with the returned rate schedule segments. When
        #   not specified, the current timestamp will be used.
        #
        #   @return [Time, nil]
        optional :at, Time

        # @!attribute selectors
        #   List of rate selectors, rates matching ANY of the selectors will be included in
        #   the response. Passing no selectors will result in all rates being returned.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams::Selector>, nil]
        optional :selectors,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractRetrieveRateScheduleParams::Selector]
                 }

        # @!method initialize(contract_id:, customer_id:, limit: nil, next_page: nil, at: nil, selectors: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams} for more details.
        #
        #   @param contract_id [String] ID of the contract to get the rate schedule for.
        #
        #   @param customer_id [String] ID of the customer for whose contract to get the rate schedule for.
        #
        #   @param limit [Integer] Max number of results that should be returned
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param at [Time] optional timestamp which overlaps with the returned rate schedule segments. When
        #
        #   @param selectors [Array<MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams::Selector>] List of rate selectors, rates matching ANY of the selectors will be included in
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

          # @!attribute product_tags
          #   List of product tags, rates matching any of the tags will be included in the
          #   response.
          #
          #   @return [Array<String>, nil]
          optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(partial_pricing_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractRetrieveRateScheduleParams::Selector} for
          #   more details.
          #
          #   @param partial_pricing_group_values [Hash{Symbol=>String}] List of pricing group key value pairs, rates containing the matching key / value
          #
          #   @param pricing_group_values [Hash{Symbol=>String}] List of pricing group key value pairs, rates matching all of the key / value pai
          #
          #   @param product_id [String] Rates matching the product id will be included in the response.
          #
          #   @param product_tags [Array<String>] List of product tags, rates matching any of the tags will be included in the res
        end
      end
    end
  end
end
