# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class PlanGetDetailsParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute plan_id
        #
        #   @return [String]
        required :plan_id, String

        # @!parse
        #   # @param plan_id [String]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(plan_id:, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
