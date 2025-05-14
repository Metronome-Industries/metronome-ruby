# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractListBalancesResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractListBalancesResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[T.any(MetronomeSDK::Commit, MetronomeSDK::Credit)])
        end
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig do
          params(
            data:
              T::Array[
                T.any(
                  MetronomeSDK::Commit::OrHash,
                  MetronomeSDK::Credit::OrHash
                )
              ],
            next_page: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(data:, next_page:)
        end

        sig do
          override.returns(
            {
              data: T::Array[T.any(MetronomeSDK::Commit, MetronomeSDK::Credit)],
              next_page: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module Data
          extend MetronomeSDK::Internal::Type::Union

          Variants =
            T.type_alias { T.any(MetronomeSDK::Commit, MetronomeSDK::Credit) }

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::Models::V1::ContractListBalancesResponse::Data::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
