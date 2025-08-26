# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::BillableMetrics#archive
      class BillableMetricArchiveResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::BillableMetricArchiveResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::BillableMetricArchiveResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::BillableMetricArchiveResponse::Data]

        # @see MetronomeSDK::Models::V1::BillableMetricArchiveResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end
      end
    end
  end
end
