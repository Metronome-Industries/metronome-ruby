# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class InvoiceRetrieveParams < Metronome::BaseModel
        # @!attribute customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute invoice_id
        #   @return [String]
        required :invoice_id, String

        # @!attribute skip_zero_qty_line_items
        #   If set, all zero quantity line items will be filtered out of the response
        #   @return [Boolean]
        optional :skip_zero_qty_line_items, Metronome::BooleanModel
      end
    end
  end
end
