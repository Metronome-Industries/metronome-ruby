# typed: strong

module MetronomeSDK
  module Resources
    class Payments
      # Fetch all payment attempts for the given invoice.
      sig do
        params(
          customer_id: String,
          invoice_id: String,
          limit: Integer,
          next_page: String,
          statuses: T::Array[MetronomeSDK::PaymentListParams::Status::OrSymbol],
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(
          MetronomeSDK::Internal::BodyCursorPage[
            MetronomeSDK::Models::PaymentListResponse
          ]
        )
      end
      def list(
        customer_id:,
        invoice_id:,
        # The maximum number of payments to return. Defaults to 25.
        limit: nil,
        # The next page token from a previous response.
        next_page: nil,
        statuses: nil,
        request_options: {}
      )
      end

      # Trigger a new attempt by canceling any existing attempts for this invoice and
      # creating a new Payment. This will trigger another attempt to charge the
      # Customer's configured Payment Gateway. Payment can only be attempted if all of
      # the following are true:
      #
      # - The Metronome Invoice is finalized
      # - PLG Invoicing is configured for the Customer
      # - You cannot attempt payments for invoices that have already been `paid` or
      #   `voided`.
      #
      # Attempting to payment on an ineligible Invoice or Customer will result in a
      # `400` response.
      sig do
        params(
          customer_id: String,
          invoice_id: String,
          request_options: MetronomeSDK::RequestOptions::OrHash
        ).returns(MetronomeSDK::Models::PaymentAttemptResponse)
      end
      def attempt(customer_id:, invoice_id:, request_options: {})
      end

      # @api private
      sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
