# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Dashboards#get_embeddable_url
      class DashboardGetEmbeddableURLResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data]

        # @see MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute url
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(url: nil)
          #   @param url [String]
        end
      end
    end
  end
end
