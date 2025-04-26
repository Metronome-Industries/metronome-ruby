# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Invoices
        # Regenerate a voided contract invoice
        sig do
          params(
            id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Models::V1::InvoiceRegenerateResponse)
        end
        def regenerate(
          # The invoice id to regenerate
          id:,
          request_options: {}
        ); end
        # Void an invoice
        sig do
          params(
            id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Models::V1::InvoiceVoidResponse)
        end
        def void(
          # The invoice id to void
          id:,
          request_options: {}
        ); end
        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
