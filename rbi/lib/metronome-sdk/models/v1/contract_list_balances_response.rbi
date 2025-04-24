# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractListBalancesResponse < MetronomeSDK::BaseModel
        sig { returns(T::Array[T.any(MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit)]) }
        def data
        end

        sig do
          params(_: T::Array[T.any(MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit)])
            .returns(T::Array[T.any(MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit)])
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
          params(
            data: T::Array[T.any(MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit)],
            next_page: T.nilable(String)
          )
            .void
        end
        def initialize(data:, next_page:)
        end

        sig do
          override
            .returns(
              {
                data: T::Array[T.any(MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit)],
                next_page: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Union
          abstract!

          sig { override.returns([[NilClass, MetronomeSDK::Models::Commit], [NilClass, MetronomeSDK::Models::Credit]]) }
          private_class_method def self.variants
          end
        end
      end
    end
  end
end
