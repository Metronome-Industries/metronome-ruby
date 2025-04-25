# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Invoices#retrieve
        class InvoiceRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
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

          # @!attribute skip_zero_qty_line_items
          #   If set, all zero quantity line items will be filtered out of the response
          #
          #   @return [Boolean, nil]
          optional :skip_zero_qty_line_items, MetronomeSDK::Internal::Type::Boolean

          # @!method initialize(customer_id:, invoice_id:, skip_zero_qty_line_items: nil, request_options: {})
          #   @param customer_id [String]
          #
          #   @param invoice_id [String]
          #
          #   @param skip_zero_qty_line_items [Boolean] If set, all zero quantity line items will be filtered out of the response
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
