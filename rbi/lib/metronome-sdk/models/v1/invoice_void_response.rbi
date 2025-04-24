# typed: strong

module MetronomeSDK
  module Models
    module V1
      class InvoiceVoidResponse < MetronomeSDK::BaseModel
        sig { returns(T.nilable(MetronomeSDK::Models::V1::InvoiceVoidResponse::Data)) }
        def data
        end

        sig do
          params(_: MetronomeSDK::Models::V1::InvoiceVoidResponse::Data)
            .returns(MetronomeSDK::Models::V1::InvoiceVoidResponse::Data)
        end
        def data=(_)
        end

        sig { params(data: MetronomeSDK::Models::V1::InvoiceVoidResponse::Data).void }
        def initialize(data: nil)
        end

        sig { override.returns({data: MetronomeSDK::Models::V1::InvoiceVoidResponse::Data}) }
        def to_hash
        end

        class Data < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
