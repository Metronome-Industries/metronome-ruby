# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Invoices#regenerate
      class InvoiceRegenerateResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data, nil]
        optional :data, -> { MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data]

        # @see MetronomeSDK::Models::V1::InvoiceRegenerateResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The new invoice id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String] The new invoice id
        end
      end
    end
  end
end
