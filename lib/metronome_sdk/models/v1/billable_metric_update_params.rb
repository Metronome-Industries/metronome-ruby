# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::BillableMetrics#update
      class BillableMetricUpdateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute billable_metric_id
        #
        #   @return [String]
        required :billable_metric_id, String

        # @!attribute name
        #   The new name of the metric
        #
        #   @return [String]
        required :name, String

        # @!method initialize(billable_metric_id:, name:, request_options: {})
        #   @param billable_metric_id [String]
        #
        #   @param name [String] The new name of the metric
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
