# typed: strong

module MetronomeSDK
  module Models
    module V1
      class InvoiceVoidParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig do
          params(
            id: String,
            request_options: T.any(
              MetronomeSDK::RequestOptions,
              T::Hash[Symbol, T.anything]
            )
          ).void
        end
        def initialize(id:, request_options: {})
        end

        sig { override.returns({id: String, request_options: MetronomeSDK::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
