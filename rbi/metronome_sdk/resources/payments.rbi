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

      # @api private
      sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
