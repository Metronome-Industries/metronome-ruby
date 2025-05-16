# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::Customers::InvoiceRetrieveResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(MetronomeSDK::V1::Customers::Invoice) }
          attr_reader :data

          sig do
            params(data: MetronomeSDK::V1::Customers::Invoice::OrHash).void
          end
          attr_writer :data

          sig do
            params(data: MetronomeSDK::V1::Customers::Invoice::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(data:)
          end

          sig do
            override.returns({ data: MetronomeSDK::V1::Customers::Invoice })
          end
          def to_hash
          end
        end
      end
    end
  end
end
