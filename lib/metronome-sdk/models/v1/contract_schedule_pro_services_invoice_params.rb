# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractScheduleProServicesInvoiceParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

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
        #   @return [Array<MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceParams::LineItem>]
        required :line_items,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceParams::LineItem] }

        # @!attribute [r] netsuite_invoice_header_end
        #   The end date of the invoice header in Netsuite
        #
        #   @return [Time, nil]
        optional :netsuite_invoice_header_end, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :netsuite_invoice_header_end

        # @!attribute [r] netsuite_invoice_header_start
        #   The start date of the invoice header in Netsuite
        #
        #   @return [Time, nil]
        optional :netsuite_invoice_header_start, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :netsuite_invoice_header_start

        # @!parse
        #   # @param contract_id [String]
        #   # @param customer_id [String]
        #   # @param issued_at [Time]
        #   # @param line_items [Array<MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceParams::LineItem>]
        #   # @param netsuite_invoice_header_end [Time]
        #   # @param netsuite_invoice_header_start [Time]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     contract_id:,
        #     customer_id:,
        #     issued_at:,
        #     line_items:,
        #     netsuite_invoice_header_end: nil,
        #     netsuite_invoice_header_start: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class LineItem < MetronomeSDK::BaseModel
          # @!attribute professional_service_id
          #
          #   @return [String]
          required :professional_service_id, String

          # @!attribute [r] amendment_id
          #   If the professional_service_id was added on an amendment, this is required.
          #
          #   @return [String, nil]
          optional :amendment_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :amendment_id

          # @!attribute [r] amount
          #   Amount for the term on the new invoice.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :amount

          # @!attribute [r] metadata
          #   For client use.
          #
          #   @return [String, nil]
          optional :metadata, String

          # @!parse
          #   # @return [String]
          #   attr_writer :metadata

          # @!attribute [r] netsuite_invoice_billing_end
          #   The end date for the billing period on the invoice.
          #
          #   @return [Time, nil]
          optional :netsuite_invoice_billing_end, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :netsuite_invoice_billing_end

          # @!attribute [r] netsuite_invoice_billing_start
          #   The start date for the billing period on the invoice.
          #
          #   @return [Time, nil]
          optional :netsuite_invoice_billing_start, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :netsuite_invoice_billing_start

          # @!attribute [r] quantity
          #   Quantity for the charge. Will be multiplied by unit_price to determine the
          #     amount.
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :quantity

          # @!attribute [r] unit_price
          #   If specified, this overrides the unit price on the pro service term. Must also
          #     provide quantity (but not amount) if providing unit_price.
          #
          #   @return [Float, nil]
          optional :unit_price, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :unit_price

          # @!parse
          #   # Describes the line item for a professional service charge on an invoice.
          #   #
          #   # @param professional_service_id [String]
          #   # @param amendment_id [String]
          #   # @param amount [Float]
          #   # @param metadata [String]
          #   # @param netsuite_invoice_billing_end [Time]
          #   # @param netsuite_invoice_billing_start [Time]
          #   # @param quantity [Float]
          #   # @param unit_price [Float]
          #   #
          #   def initialize(
          #     professional_service_id:,
          #     amendment_id: nil,
          #     amount: nil,
          #     metadata: nil,
          #     netsuite_invoice_billing_end: nil,
          #     netsuite_invoice_billing_start: nil,
          #     quantity: nil,
          #     unit_price: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
