# typed: strong

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
        # Recalculate an invoice with updated rate terms, available balance, and fees to
        # correct billing disputes or discrepancies
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
        sig do
          params(
            id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::InvoiceRegenerateResponse)
        end
        def regenerate(
          # The invoice id to regenerate
          id:,
          request_options: {}
        )
        end

        # Permanently cancels an invoice by setting its status to voided, preventing
        # collection and removing it from customer billing. Use this to correct billing
        # errors, cancel incorrect charges, or handle disputed invoices that should not be
        # collected. Returns the voided invoice ID with the status change applied
        # immediately to stop any payment processing.
        sig do
          params(
            id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::InvoiceVoidResponse)
        end
        def void(
          # The invoice id to void
          id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
