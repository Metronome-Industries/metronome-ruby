# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractListBalancesResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(T::Array[T.any(MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit)]) }
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig do
          params(
            data: T::Array[T.any(MetronomeSDK::Models::Commit, MetronomeSDK::Internal::AnyHash, MetronomeSDK::Models::Credit)],
            next_page: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(data:, next_page:); end

        sig do
          override
            .returns(
              {
                data: T::Array[T.any(MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit)],
                next_page: T.nilable(String)
              }
            )
        end
        def to_hash; end

        module Data
          extend MetronomeSDK::Internal::Type::Union

          sig { override.returns([MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit]) }
          def self.variants; end
        end
      end
    end
  end
end
