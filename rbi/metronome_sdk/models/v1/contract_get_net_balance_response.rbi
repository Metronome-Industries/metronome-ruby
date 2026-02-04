# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractGetNetBalanceResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractGetNetBalanceResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(MetronomeSDK::Models::V1::ContractGetNetBalanceResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::ContractGetNetBalanceResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::ContractGetNetBalanceResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                MetronomeSDK::Models::V1::ContractGetNetBalanceResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractGetNetBalanceResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The combined net balance that the customer has access to use at this moment
          # across all pertinent commits and credits.
          sig { returns(Float) }
          attr_accessor :balance

          # The ID of the credit type (can be fiat or a custom pricing unit) that the
          # balance is for.
          sig { returns(String) }
          attr_accessor :credit_type_id

          sig do
            params(balance: Float, credit_type_id: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The combined net balance that the customer has access to use at this moment
            # across all pertinent commits and credits.
            balance:,
            # The ID of the credit type (can be fiat or a custom pricing unit) that the
            # balance is for.
            credit_type_id:
          )
          end

          sig { override.returns({ balance: Float, credit_type_id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
