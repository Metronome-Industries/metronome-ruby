# frozen_string_literal: true

module Metronome
  module Models
    class ContractScheduleProServicesInvoiceParams < Metronome::BaseModel
      # @!attribute [rw] contract_id
      #   @return [String]
      required :contract_id, String

      # @!attribute [rw] customer_id
      #   @return [String]
      required :customer_id, String

      # @!attribute [rw] issued_at
      #   The date the invoice is issued
      #   @return [Time]
      required :issued_at, Time

      # @!attribute [rw] line_items
      #   Each line requires an amount or both unit_price and quantity.
      #   @return [Array<Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem>]
      required :line_items,
               Metronome::ArrayOf.new(
                 -> {
                   Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem
                 }
               )

      # @!attribute [rw] netsuite_invoice_header_end
      #   The end date of the invoice header in Netsuite
      #   @return [Time]
      optional :netsuite_invoice_header_end, Time

      # @!attribute [rw] netsuite_invoice_header_start
      #   The start date of the invoice header in Netsuite
      #   @return [Time]
      optional :netsuite_invoice_header_start, Time

      class LineItem < Metronome::BaseModel
        # @!attribute [rw] professional_service_id
        #   @return [String]
        required :professional_service_id, String

        # @!attribute [rw] amendment_id
        #   If the professional_service_id was added on an amendment, this is required.
        #   @return [String]
        optional :amendment_id, String

        # @!attribute [rw] amount
        #   Amount for the term on the new invoice.
        #   @return [Float]
        optional :amount, Float

        # @!attribute [rw] metadata
        #   For client use.
        #   @return [String]
        optional :metadata, String

        # @!attribute [rw] netsuite_invoice_billing_end
        #   The end date for the billing period on the invoice.
        #   @return [Time]
        optional :netsuite_invoice_billing_end, Time

        # @!attribute [rw] netsuite_invoice_billing_start
        #   The start date for the billing period on the invoice.
        #   @return [Time]
        optional :netsuite_invoice_billing_start, Time

        # @!attribute [rw] quantity
        #   Quantity for the charge. Will be multiplied by unit_price to determine the amount.
        #   @return [Float]
        optional :quantity, Float

        # @!attribute [rw] unit_price
        #   If specified, this overrides the unit price on the pro service term. Must also provide quantity (but not amount) if providing unit_price.
        #   @return [Float]
        optional :unit_price, Float

        # @!parse
        #   # Create a new instance of LineItem from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :professional_service_id
        #   #   @option data [String, nil] :amendment_id If the professional_service_id was added on an amendment, this is required.
        #   #   @option data [Float, nil] :amount Amount for the term on the new invoice.
        #   #   @option data [String, nil] :metadata For client use.
        #   #   @option data [String, nil] :netsuite_invoice_billing_end The end date for the billing period on the invoice.
        #   #   @option data [String, nil] :netsuite_invoice_billing_start The start date for the billing period on the invoice.
        #   #   @option data [Float, nil] :quantity Quantity for the charge. Will be multiplied by unit_price to determine the
        #   #     amount.
        #   #   @option data [Float, nil] :unit_price If specified, this overrides the unit price on the pro service term. Must also
        #   #     provide quantity (but not amount) if providing unit_price.
        #   def initialize(data = {}) = super
      end
    end
  end
end
