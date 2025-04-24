# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class BillableMetricListParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

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

        # @!parse
        #   # @param include_archived [Boolean]
        #   # @param limit [Integer]
        #   # @param next_page [String]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(include_archived: nil, limit: nil, next_page: nil, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
