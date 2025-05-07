# typed: strong

module MetronomeSDK
  module Models
    module V1
      class RolloverAmountMaxPercentage < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        # Rollover up to a percentage of the original credit grant amount.
        sig do
          returns(MetronomeSDK::V1::RolloverAmountMaxPercentage::Type::OrSymbol)
        end
        attr_accessor :type

        # The maximum percentage (0-1) of the original credit grant to rollover.
        sig { returns(Float) }
        attr_accessor :value

        sig do
          params(
            type: MetronomeSDK::V1::RolloverAmountMaxPercentage::Type::OrSymbol,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Rollover up to a percentage of the original credit grant amount.
          type:,
          # The maximum percentage (0-1) of the original credit grant to rollover.
          value:
        )
        end

        sig do
          override.returns(
            {
              type:
                MetronomeSDK::V1::RolloverAmountMaxPercentage::Type::OrSymbol,
              value: Float
            }
          )
        end
        def to_hash
        end

        # Rollover up to a percentage of the original credit grant amount.
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::V1::RolloverAmountMaxPercentage::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MAX_PERCENTAGE =
            T.let(
              :MAX_PERCENTAGE,
              MetronomeSDK::V1::RolloverAmountMaxPercentage::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::RolloverAmountMaxPercentage::Type::TaggedSymbol
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
