# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceRetrieveResponse < MetronomeSDK::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Customers::Invoice]
          required :data, -> { MetronomeSDK::Models::V1::Customers::Invoice }

          # @!parse
          #   # @param data [MetronomeSDK::Models::V1::Customers::Invoice]
          #   #
          #   def initialize(data:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
