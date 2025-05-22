# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class RolloverAmountMaxPercentage < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute type
        #   Rollover up to a percentage of the original credit grant amount.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::RolloverAmountMaxPercentage::Type]
        required :type, enum: -> { MetronomeSDK::V1::RolloverAmountMaxPercentage::Type }

        # @!attribute value
        #   The maximum percentage (0-1) of the original credit grant to rollover.
        #
        #   @return [Float]
        required :value, Float

        # @!method initialize(type:, value:)
        #   @param type [Symbol, MetronomeSDK::Models::V1::RolloverAmountMaxPercentage::Type] Rollover up to a percentage of the original credit grant amount.
        #
        #   @param value [Float] The maximum percentage (0-1) of the original credit grant to rollover.

        # Rollover up to a percentage of the original credit grant amount.
        #
        # @see MetronomeSDK::Models::V1::RolloverAmountMaxPercentage#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          MAX_PERCENTAGE = :MAX_PERCENTAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
