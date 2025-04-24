# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class DashboardGetEmbeddableURLResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data }

        # @!parse
        #   # @param data [MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Data < MetronomeSDK::BaseModel
          # @!attribute [r] url
          #
          #   @return [String, nil]
          optional :url, String

          # @!parse
          #   # @return [String]
          #   attr_writer :url

          # @!parse
          #   # @param url [String]
          #   #
          #   def initialize(url: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
