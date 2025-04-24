# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertListResponse < MetronomeSDK::BaseModel
          # @!attribute data
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::CustomerAlert>]
          required :data, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::CustomerAlert] }

          # @!attribute next_page
          #
          #   @return [String, nil]
          required :next_page, String, nil?: true

          # @!parse
          #   # @param data [Array<MetronomeSDK::Models::V1::Customers::CustomerAlert>]
          #   # @param next_page [String, nil]
          #   #
          #   def initialize(data:, next_page:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
