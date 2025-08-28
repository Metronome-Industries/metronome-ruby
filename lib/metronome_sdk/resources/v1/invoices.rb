# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Invoices
        # This endpoint regenerates a voided invoice and recalculates the invoice based on
        # up-to-date rates, available balances, and other fees regardless of the billing
        # period.
        #
        # ### Use this endpoint to:
        #
        # - Recalculate an invoice with updated rate terms, available balance, and fees to
        #   correct billing disputes or discrepancies
        #
        # ### Key response fields:
        #
        # The regenerated invoice id, which is distinct from the previously voided
        # invoice.
        #
        # ### Usage guidelines:
        #
        # If an invoice is attached to a contract with a billing provider on it, the
        # regenerated invoice will be distributed based on the configuration.
        #
        # @overload regenerate(id:, request_options: {})
        #
        # @param id [String] The invoice id to regenerate
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::InvoiceRegenerateResponse]
        #
        # @see MetronomeSDK::Models::V1::InvoiceRegenerateParams
        def regenerate(params)
          parsed, options = MetronomeSDK::V1::InvoiceRegenerateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/invoices/regenerate",
            body: parsed,
            model: MetronomeSDK::Models::V1::InvoiceRegenerateResponse,
            options: options
          )
        end

        # Permanently cancels an invoice by setting its status to voided, preventing
        # collection and removing it from customer billing. Use this to correct billing
        # errors, cancel incorrect charges, or handle disputed invoices that should not be
        # collected. Returns the voided invoice ID with the status change applied
        # immediately to stop any payment processing.
        #
        # @overload void(id:, request_options: {})
        #
        # @param id [String] The invoice id to void
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::InvoiceVoidResponse]
        #
        # @see MetronomeSDK::Models::V1::InvoiceVoidParams
        def void(params)
          parsed, options = MetronomeSDK::V1::InvoiceVoidParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/invoices/void",
            body: parsed,
            model: MetronomeSDK::Models::V1::InvoiceVoidResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
