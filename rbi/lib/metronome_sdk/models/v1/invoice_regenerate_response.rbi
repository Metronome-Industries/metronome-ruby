# typed: strong

module MetronomeSDK
  module Models
    module V1
      class InvoiceRegenerateResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(T.nilable(MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data)) }
        attr_reader :data

        sig do
          params(
            data: T.any(MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data, MetronomeSDK::Internal::AnyHash)
          )
            .void
        end
        attr_writer :data

        sig do
          params(
            data: T.any(MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(data: nil); end

        sig { override.returns({data: MetronomeSDK::Models::V1::InvoiceRegenerateResponse::Data}) }
        def to_hash; end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # The new invoice id
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The new invoice id
            id:
          ); end
          sig { override.returns({id: String}) }
          def to_hash; end
        end
      end
    end
  end
end
