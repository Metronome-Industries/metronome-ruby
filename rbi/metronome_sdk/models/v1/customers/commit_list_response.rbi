# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CommitListResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig { returns(T::Array[MetronomeSDK::Commit]) }
          attr_accessor :data

          sig { returns(T.nilable(String)) }
          attr_accessor :next_page

          sig do
            params(
              data: T::Array[MetronomeSDK::Commit::OrHash],
              next_page: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(data:, next_page:)
          end

          sig do
            override.returns(
              {
                data: T::Array[MetronomeSDK::Commit],
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
