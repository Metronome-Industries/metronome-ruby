# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#list_billable_metrics
      class CustomerListBillableMetricsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute include_archived
        #   If true, the list of returned metrics will include archived metrics
        #
        #   @return [Boolean, nil]
        optional :include_archived, MetronomeSDK::Internal::Type::Boolean

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

        # @!attribute on_current_plan
        #   If true, the list of metrics will be filtered to just ones that are on the
        #   customer's current plan
        #
        #   @return [Boolean, nil]
        optional :on_current_plan, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(customer_id:, include_archived: nil, limit: nil, next_page: nil, on_current_plan: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CustomerListBillableMetricsParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param include_archived [Boolean] If true, the list of returned metrics will include archived metrics
        #
        #   @param limit [Integer] Max number of results that should be returned
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param on_current_plan [Boolean] If true, the list of metrics will be filtered to just ones that are on the custo
        #   ...
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
