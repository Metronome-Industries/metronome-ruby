# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#list_costs
      class CustomerListCostsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute ending_before
        #   RFC 3339 timestamp (exclusive)
        #
        #   @return [Time]
        required :ending_before, Time

        # @!attribute starting_on
        #   RFC 3339 timestamp (inclusive)
        #
        #   @return [Time]
        required :starting_on, Time

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

        # @!method initialize(customer_id:, ending_before:, starting_on:, limit: nil, next_page: nil, request_options: {})
        #   @param customer_id [String]
        #
        #   @param ending_before [Time] RFC 3339 timestamp (exclusive)
        #
        #   @param starting_on [Time] RFC 3339 timestamp (inclusive)
        #
        #   @param limit [Integer] Max number of results that should be returned
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
