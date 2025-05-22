# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#schedule_pro_services_invoice
      class ContractScheduleProServicesInvoiceParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

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
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractScheduleProServicesInvoiceParams::LineItem]
                 }

        # @!attribute netsuite_invoice_header_end
        #   The end date of the invoice header in Netsuite
        #
        #   @return [Time, nil]
        optional :netsuite_invoice_header_end, Time

        # @!attribute netsuite_invoice_header_start
        #   The start date of the invoice header in Netsuite
        #
        #   @return [Time, nil]
        optional :netsuite_invoice_header_start, Time

        # @!method initialize(contract_id:, customer_id:, issued_at:, line_items:, netsuite_invoice_header_end: nil, netsuite_invoice_header_start: nil, request_options: {})
        #   @param contract_id [String]
        #
        #   @param customer_id [String]
        #
        #   @param issued_at [Time] The date the invoice is issued
        #
        #   @param line_items [Array<MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceParams::LineItem>] Each line requires an amount or both unit_price and quantity.
        #
        #   @param netsuite_invoice_header_end [Time] The end date of the invoice header in Netsuite
        #
        #   @param netsuite_invoice_header_start [Time] The start date of the invoice header in Netsuite
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class LineItem < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute professional_service_id
          #
          #   @return [String]
          required :professional_service_id, String

          # @!attribute amendment_id
          #   If the professional_service_id was added on an amendment, this is required.
          #
          #   @return [String, nil]
          optional :amendment_id, String

          # @!attribute amount
          #   Amount for the term on the new invoice.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute metadata
          #   For client use.
          #
          #   @return [String, nil]
          optional :metadata, String

          # @!attribute netsuite_invoice_billing_end
          #   The end date for the billing period on the invoice.
          #
          #   @return [Time, nil]
          optional :netsuite_invoice_billing_end, Time

          # @!attribute netsuite_invoice_billing_start
          #   The start date for the billing period on the invoice.
          #
          #   @return [Time, nil]
          optional :netsuite_invoice_billing_start, Time

          # @!attribute quantity
          #   Quantity for the charge. Will be multiplied by unit_price to determine the
          #   amount.
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!attribute unit_price
          #   If specified, this overrides the unit price on the pro service term. Must also
          #   provide quantity (but not amount) if providing unit_price.
          #
          #   @return [Float, nil]
          optional :unit_price, Float

          # @!method initialize(professional_service_id:, amendment_id: nil, amount: nil, metadata: nil, netsuite_invoice_billing_end: nil, netsuite_invoice_billing_start: nil, quantity: nil, unit_price: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractScheduleProServicesInvoiceParams::LineItem}
          #   for more details.
          #
          #   Describes the line item for a professional service charge on an invoice.
          #
          #   @param professional_service_id [String]
          #
          #   @param amendment_id [String] If the professional_service_id was added on an amendment, this is required.
          #
          #   @param amount [Float] Amount for the term on the new invoice.
          #
          #   @param metadata [String] For client use.
          #
          #   @param netsuite_invoice_billing_end [Time] The end date for the billing period on the invoice.
          #
          #   @param netsuite_invoice_billing_start [Time] The start date for the billing period on the invoice.
          #
          #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
          #
          #   @param unit_price [Float] If specified, this overrides the unit price on the pro service term. Must also p
        end
      end
    end
  end
end
