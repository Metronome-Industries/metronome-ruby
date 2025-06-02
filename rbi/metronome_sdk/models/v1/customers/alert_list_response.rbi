# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertListResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::Customers::AlertListResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[MetronomeSDK::V1::Customers::CustomerAlert]) }
          attr_accessor :data

          sig { returns(T.nilable(String)) }
          attr_accessor :next_page

          sig do
            params(
              data:
                T::Array[MetronomeSDK::V1::Customers::CustomerAlert::OrHash],
              next_page: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(data:, next_page:)
          end

          sig do
            override.returns(
              {
                data: T::Array[MetronomeSDK::V1::Customers::CustomerAlert],
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
