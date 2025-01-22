# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class InvoiceRetrieveParams < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute invoice_id
        #
        #   @return [String]
        required :invoice_id, String

        # @!attribute [r] skip_zero_qty_line_items
        #   If set, all zero quantity line items will be filtered out of the response
        #
        #   @return [Boolean, nil]
        optional :skip_zero_qty_line_items, Metronome::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :skip_zero_qty_line_items

        # @!parse
        #   # @param customer_id [String]
        #   # @param invoice_id [String]
        #   # @param skip_zero_qty_line_items [Boolean]
        #   #
        #   def initialize(customer_id:, invoice_id:, skip_zero_qty_line_items: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
