# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Invoices
        sig do
          params(
            id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::InvoiceRegenerateResponse)
        end
        def regenerate(id:, request_options: {})
        end

        sig do
          params(
            id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::InvoiceVoidResponse)
        end
        def void(id:, request_options: {})
        end

        sig { params(client: MetronomeSDK::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
