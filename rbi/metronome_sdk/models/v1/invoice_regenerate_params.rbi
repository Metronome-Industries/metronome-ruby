# typed: strong

module MetronomeSDK
  module Models
    module V1
      class InvoiceRegenerateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::InvoiceRegenerateParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The invoice id to regenerate
        sig { returns(String) }
        attr_accessor :id

        sig do
          params(
            id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The invoice id to regenerate
          id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { id: String, request_options: MetronomeSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
