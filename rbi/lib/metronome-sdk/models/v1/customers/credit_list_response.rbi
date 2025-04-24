# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CreditListResponse < MetronomeSDK::BaseModel
          sig { returns(T::Array[MetronomeSDK::Models::Credit]) }
          def data
          end

          sig { params(_: T::Array[MetronomeSDK::Models::Credit]).returns(T::Array[MetronomeSDK::Models::Credit]) }
          def data=(_)
          end

          sig { returns(T.nilable(String)) }
          def next_page
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def next_page=(_)
          end

          sig { params(data: T::Array[MetronomeSDK::Models::Credit], next_page: T.nilable(String)).void }
          def initialize(data:, next_page:)
          end

          sig { override.returns({data: T::Array[MetronomeSDK::Models::Credit], next_page: T.nilable(String)}) }
          def to_hash
          end
        end
      end
    end
  end
end
