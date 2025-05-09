# typed: strong

module MetronomeSDK
  module Models
    module V1
      class InvoiceVoidResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig do
          returns(
            T.nilable(MetronomeSDK::Models::V1::InvoiceVoidResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: MetronomeSDK::Models::V1::InvoiceVoidResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: MetronomeSDK::Models::V1::InvoiceVoidResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: MetronomeSDK::Models::V1::InvoiceVoidResponse::Data }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
