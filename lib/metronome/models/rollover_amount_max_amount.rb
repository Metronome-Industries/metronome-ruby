# frozen_string_literal: true

module Metronome
  module Models
    class RolloverAmountMaxAmount < BaseModel
      # @!attribute [rw] type
      #   Rollover up to a fixed amount of the original credit grant amount.
      #   @return [Symbol, Metronome::Models::RolloverAmountMaxAmount::Type]
      required :type, enum: -> { Metronome::Models::RolloverAmountMaxAmount::Type }

      # @!attribute [rw] value
      #   The maximum amount to rollover.
      #   @return [Float]
      required :value, Float

      # Rollover up to a fixed amount of the original credit grant amount.
      class Type < Metronome::Enum
        MAX_AMOUNT = :MAX_AMOUNT
      end
    end
  end
end
