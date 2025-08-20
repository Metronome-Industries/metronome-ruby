# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CreditListResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::Customers::CreditListResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[MetronomeSDK::Credit]) }
          attr_accessor :data

          sig { returns(T.nilable(String)) }
          attr_accessor :next_page

          sig do
            params(
              data: T::Array[MetronomeSDK::Credit::OrHash],
              next_page: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(data:, next_page:)
          end

          sig do
            override.returns(
              {
                data: T::Array[MetronomeSDK::Credit],
                next_page: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
