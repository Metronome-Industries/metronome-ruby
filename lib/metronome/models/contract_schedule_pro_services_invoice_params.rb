# frozen_string_literal: true

module Metronome
  module Models
    class ContractScheduleProServicesInvoiceParams < Metronome::BaseModel
      # @!attribute contract_id
      #
      #   @return [String]
      required :contract_id, String

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute issued_at
      #   The date the invoice is issued
      #
      #   @return [Time]
      required :issued_at, Time

      # @!attribute line_items
      #   Each line requires an amount or both unit_price and quantity.
      #
      #   @return [Array<Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem>]
      required :line_items,
               Metronome::ArrayOf.new(
                 -> {
                   Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem
                 }
               )

      # @!attribute netsuite_invoice_header_end
      #   The end date of the invoice header in Netsuite
      #
      #   @return [Time]
      optional :netsuite_invoice_header_end, Time

      # @!attribute netsuite_invoice_header_start
      #   The start date of the invoice header in Netsuite
      #
      #   @return [Time]
      optional :netsuite_invoice_header_start, Time

      class LineItem < Metronome::BaseModel
        # @!attribute professional_service_id
        #
        #   @return [String]
        required :professional_service_id, String

        # @!attribute amendment_id
        #   If the professional_service_id was added on an amendment, this is required.
        #
        #   @return [String]
        optional :amendment_id, String

        # @!attribute amount
        #   Amount for the term on the new invoice.
        #
        #   @return [Float]
        optional :amount, Float

        # @!attribute metadata
        #   For client use.
        #
        #   @return [String]
        optional :metadata, String

        # @!attribute netsuite_invoice_billing_end
        #   The end date for the billing period on the invoice.
        #
        #   @return [Time]
        optional :netsuite_invoice_billing_end, Time

        # @!attribute netsuite_invoice_billing_start
        #   The start date for the billing period on the invoice.
        #
        #   @return [Time]
        optional :netsuite_invoice_billing_start, Time

        # @!attribute quantity
        #   Quantity for the charge. Will be multiplied by unit_price to determine the amount.
        #
        #   @return [Float]
        optional :quantity, Float

        # @!attribute unit_price
        #   If specified, this overrides the unit price on the pro service term. Must also provide quantity (but not amount) if providing unit_price.
        #
        #   @return [Float]
        optional :unit_price, Float

        # @!parse
        #   # Describes the line item for a professional service charge on an invoice.
        #   #
        #   # @param professional_service_id [String]
        #   #
        #   # @param amendment_id [String, nil] If the professional_service_id was added on an amendment, this is required.
        #   #
        #   # @param amount [Float, nil] Amount for the term on the new invoice.
        #   #
        #   # @param metadata [String, nil] For client use.
        #   #
        #   # @param netsuite_invoice_billing_end [String, nil] The end date for the billing period on the invoice.
        #   #
        #   # @param netsuite_invoice_billing_start [String, nil] The start date for the billing period on the invoice.
        #   #
        #   # @param quantity [Float, nil] Quantity for the charge. Will be multiplied by unit_price to determine the
        #   #   amount.
        #   #
        #   # @param unit_price [Float, nil] If specified, this overrides the unit price on the pro service term. Must also
        #   #   provide quantity (but not amount) if providing unit_price.
        #   #
        #   def initialize(
        #     professional_service_id:,
        #     amendment_id: nil,
        #     amount: nil,
        #     metadata: nil,
        #     netsuite_invoice_billing_end: nil,
        #     netsuite_invoice_billing_start: nil,
        #     quantity: nil,
        #     unit_price: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
