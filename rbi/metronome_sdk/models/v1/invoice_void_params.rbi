# typed: strong

module MetronomeSDK
  module Models
    module V1
      class InvoiceVoidParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        # The invoice id to void
        sig { returns(String) }
        attr_accessor :id

        sig do
          params(
            id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The invoice id to void
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
