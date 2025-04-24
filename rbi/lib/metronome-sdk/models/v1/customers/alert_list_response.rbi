# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertListResponse < MetronomeSDK::BaseModel
          sig { returns(T::Array[MetronomeSDK::Models::V1::Customers::CustomerAlert]) }
          def data
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V1::Customers::CustomerAlert])
              .returns(T::Array[MetronomeSDK::Models::V1::Customers::CustomerAlert])
          end
          def data=(_)
          end

          sig { returns(T.nilable(String)) }
          def next_page
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def next_page=(_)
          end

          sig do
            params(data: T::Array[MetronomeSDK::Models::V1::Customers::CustomerAlert], next_page: T.nilable(String))
              .void
          end
          def initialize(data:, next_page:)
          end

          sig do
            override
              .returns(
                {data: T::Array[MetronomeSDK::Models::V1::Customers::CustomerAlert], next_page: T.nilable(String)}
              )
          end
          def to_hash
          end
        end
      end
    end
  end
end
