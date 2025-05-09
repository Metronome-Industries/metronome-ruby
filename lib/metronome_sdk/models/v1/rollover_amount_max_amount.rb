# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class RolloverAmountMaxAmount < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute type
        #   Rollover up to a fixed amount of the original credit grant amount.
        #
        #   @return [Symbol, MetronomeSDK::V1::RolloverAmountMaxAmount::Type]
        required :type, enum: -> { MetronomeSDK::V1::RolloverAmountMaxAmount::Type }

        # @!attribute value
        #   The maximum amount to rollover.
        #
        #   @return [Float]
        required :value, Float

        # @!method initialize(type:, value:)
        #   @param type [Symbol, MetronomeSDK::V1::RolloverAmountMaxAmount::Type] Rollover up to a fixed amount of the original credit grant amount.
        #
        #   @param value [Float] The maximum amount to rollover.

        # Rollover up to a fixed amount of the original credit grant amount.
        #
        # @see MetronomeSDK::V1::RolloverAmountMaxAmount#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          MAX_AMOUNT = :MAX_AMOUNT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
