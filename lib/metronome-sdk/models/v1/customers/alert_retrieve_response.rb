# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertRetrieveResponse < MetronomeSDK::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CustomerAlert]
          required :data, -> { MetronomeSDK::Models::V1::Customers::CustomerAlert }

          # @!parse
          #   # @param data [MetronomeSDK::Models::V1::Customers::CustomerAlert]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
