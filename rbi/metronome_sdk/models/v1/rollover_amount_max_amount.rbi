# typed: strong

module MetronomeSDK
  module Models
    module V1
      class RolloverAmountMaxAmount < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        # Rollover up to a fixed amount of the original credit grant amount.
        sig do
          returns(MetronomeSDK::V1::RolloverAmountMaxAmount::Type::OrSymbol)
        end
        attr_accessor :type

        # The maximum amount to rollover.
        sig { returns(Float) }
        attr_accessor :value

        sig do
          params(
            type: MetronomeSDK::V1::RolloverAmountMaxAmount::Type::OrSymbol,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Rollover up to a fixed amount of the original credit grant amount.
          type:,
          # The maximum amount to rollover.
          value:
        )
        end

        sig do
          override.returns(
            {
              type: MetronomeSDK::V1::RolloverAmountMaxAmount::Type::OrSymbol,
              value: Float
            }
          )
        end
        def to_hash
        end

        # Rollover up to a fixed amount of the original credit grant amount.
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::V1::RolloverAmountMaxAmount::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MAX_AMOUNT =
            T.let(
              :MAX_AMOUNT,
              MetronomeSDK::V1::RolloverAmountMaxAmount::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::RolloverAmountMaxAmount::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
