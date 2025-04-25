# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class QuantityRounding < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(Float) }
          attr_accessor :decimal_places

          sig { returns(MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod::OrSymbol) }
          attr_accessor :rounding_method

          # Optional. Only valid for USAGE products. If provided, the quantity will be
          # rounded using the provided rounding method and decimal places. For example, if
          # the method is "round up" and the decimal places is 0, then the quantity will be
          # rounded up to the nearest integer.
          sig do
            params(
              decimal_places: Float,
              rounding_method: MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(decimal_places:, rounding_method:); end

          sig do
            override
              .returns(
                {
                  decimal_places: Float,
                  rounding_method: MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod::OrSymbol
                }
              )
          end
          def to_hash; end

          module RoundingMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ROUND_UP =
              T.let(:ROUND_UP, MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod::TaggedSymbol)
            ROUND_DOWN =
              T.let(:ROUND_DOWN, MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod::TaggedSymbol)
            ROUND_HALF_UP =
              T.let(:ROUND_HALF_UP, MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod::TaggedSymbol)

            sig do
              override
                .returns(T::Array[MetronomeSDK::Models::V1::Contracts::QuantityRounding::RoundingMethod::TaggedSymbol])
            end
            def self.values; end
          end
        end
      end
    end
  end
end
