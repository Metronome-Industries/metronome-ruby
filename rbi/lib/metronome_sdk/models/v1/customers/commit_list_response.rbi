# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CommitListResponse < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(T::Array[MetronomeSDK::Models::Commit]) }
          attr_accessor :data

          sig { returns(T.nilable(String)) }
          attr_accessor :next_page

          sig do
            params(
              data: T::Array[T.any(MetronomeSDK::Models::Commit, MetronomeSDK::Internal::AnyHash)],
              next_page: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(data:, next_page:); end

          sig { override.returns({data: T::Array[MetronomeSDK::Models::Commit], next_page: T.nilable(String)}) }
          def to_hash; end
        end
      end
    end
  end
end
