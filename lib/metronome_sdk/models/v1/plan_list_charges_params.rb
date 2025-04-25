# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Plans#list_charges
      class PlanListChargesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute plan_id
        #
        #   @return [String]
        required :plan_id, String

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

        # @!method initialize(plan_id:, limit: nil, next_page: nil, request_options: {})
        #   @param plan_id [String]
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
