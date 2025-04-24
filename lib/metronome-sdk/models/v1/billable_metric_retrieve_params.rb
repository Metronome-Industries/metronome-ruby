# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class BillableMetricRetrieveParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute billable_metric_id
        #
        #   @return [String]
        required :billable_metric_id, String

        # @!parse
        #   # @param billable_metric_id [String]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(billable_metric_id:, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
