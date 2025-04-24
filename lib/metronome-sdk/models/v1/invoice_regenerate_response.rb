# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class InvoiceRegenerateResponse < MetronomeSDK::BaseModel
        # @!attribute [r] data
        #
        #   @return [MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data, nil]
        optional :data, -> { MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data }

        # @!parse
        #   # @return [MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data]
        #   attr_writer :data

        # @!parse
        #   # @param data [MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data]
        #   #
        #   def initialize(data: nil, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Data < MetronomeSDK::BaseModel
          # @!attribute id
          #   The new invoice id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
