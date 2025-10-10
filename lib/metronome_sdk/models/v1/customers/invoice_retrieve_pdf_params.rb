# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Invoices#retrieve_pdf
        class InvoiceRetrievePdfParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute invoice_id
          #
          #   @return [String]
          required :invoice_id, String

          # @!method initialize(customer_id:, invoice_id:, request_options: {})
          #   @param customer_id [String]
          #   @param invoice_id [String]
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
