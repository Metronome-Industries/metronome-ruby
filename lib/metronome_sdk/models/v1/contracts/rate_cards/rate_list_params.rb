# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::Rates#list
          class RateListParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

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
            #   @return [Integer, nil]
            optional :limit, Integer

            # @!attribute next_page
            #   Cursor that indicates where the next page of results should start.
            #
            #   @return [String, nil]
            optional :next_page, String

            # @!attribute selectors
            #   List of rate selectors, rates matching ANY of the selector will be included in
            #   the response Passing no selectors will result in all rates being returned.
            #
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams::Selector>, nil]
            optional :selectors,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector]
                     }

            # @!method initialize(at:, rate_card_id:, limit: nil, next_page: nil, selectors: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams} for more
            #   details.
            #
            #   @param at [Time] inclusive starting point for the rates schedule
            #
            #   @param rate_card_id [String] ID of the rate card to get the schedule for
            #
            #   @param limit [Integer] Max number of results that should be returned
            #
            #   @param next_page [String] Cursor that indicates where the next page of results should start.
            #
            #   @param selectors [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams::Selector>] List of rate selectors, rates matching ANY of the selector will be included in t
            #
            #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

            class Selector < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute billing_frequency
              #   Subscription rates matching the billing frequency will be included in the
              #   response.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency, nil]
              optional :billing_frequency,
                       enum: -> {
                         MetronomeSDK::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency
                       }

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

              # @!method initialize(billing_frequency: nil, partial_pricing_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams::Selector} for
              #   more details.
              #
              #   @param billing_frequency [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams::Selector::BillingFrequency] Subscription rates matching the billing frequency will be included in the respon
              #
              #   @param partial_pricing_group_values [Hash{Symbol=>String}] List of pricing group key value pairs, rates containing the matching key / value
              #
              #   @param pricing_group_values [Hash{Symbol=>String}] List of pricing group key value pairs, rates matching all of the key / value pai
              #
              #   @param product_id [String] Rates matching the product id will be included in the response.
              #
              #   @param product_tags [Array<String>] List of product tags, rates matching any of the tags will be included in the res

              # Subscription rates matching the billing frequency will be included in the
              # response.
              #
              # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateListParams::Selector#billing_frequency
              module BillingFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
