# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Invoices#void
      class InvoiceVoidResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::InvoiceVoidResponse::Data, nil]
        optional :data, -> { MetronomeSDK::Models::V1::InvoiceVoidResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [MetronomeSDK::Models::V1::InvoiceVoidResponse::Data]

        # @see MetronomeSDK::Models::V1::InvoiceVoidResponse#data
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
