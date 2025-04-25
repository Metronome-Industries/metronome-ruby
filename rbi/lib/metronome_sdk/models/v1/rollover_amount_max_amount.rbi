# typed: strong

module MetronomeSDK
  module Models
    module V1
      class RolloverAmountMaxAmount < MetronomeSDK::Internal::Type::BaseModel
        # Rollover up to a fixed amount of the original credit grant amount.
        sig { returns(MetronomeSDK::Models::V1::RolloverAmountMaxAmount::Type::OrSymbol) }
        attr_accessor :type

        # The maximum amount to rollover.
        sig { returns(Float) }
        attr_accessor :value

        sig do
          params(type: MetronomeSDK::Models::V1::RolloverAmountMaxAmount::Type::OrSymbol, value: Float)
            .returns(T.attached_class)
        end
        def self.new(
          # Rollover up to a fixed amount of the original credit grant amount.
          type:,
          # The maximum amount to rollover.
          value:
        ); end
        sig { override.returns({type: MetronomeSDK::Models::V1::RolloverAmountMaxAmount::Type::OrSymbol, value: Float}) }
        def to_hash; end

        # Rollover up to a fixed amount of the original credit grant amount.
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::RolloverAmountMaxAmount::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MAX_AMOUNT = T.let(:MAX_AMOUNT, MetronomeSDK::Models::V1::RolloverAmountMaxAmount::Type::TaggedSymbol)

          sig { override.returns(T::Array[MetronomeSDK::Models::V1::RolloverAmountMaxAmount::Type::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
