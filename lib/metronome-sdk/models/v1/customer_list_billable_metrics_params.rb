# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomerListBillableMetricsParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute [r] include_archived
        #   If true, the list of returned metrics will include archived metrics
        #
        #   @return [Boolean, nil]
        optional :include_archived, MetronomeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_archived

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

        # @!attribute [r] on_current_plan
        #   If true, the list of metrics will be filtered to just ones that are on the
        #     customer's current plan
        #
        #   @return [Boolean, nil]
        optional :on_current_plan, MetronomeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :on_current_plan

        # @!parse
        #   # @param customer_id [String]
        #   # @param include_archived [Boolean]
        #   # @param limit [Integer]
        #   # @param next_page [String]
        #   # @param on_current_plan [Boolean]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     customer_id:,
        #     include_archived: nil,
        #     limit: nil,
        #     next_page: nil,
        #     on_current_plan: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
