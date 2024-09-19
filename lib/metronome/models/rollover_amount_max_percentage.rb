# frozen_string_literal: true

module Metronome
  module Models
    class RolloverAmountMaxPercentage < BaseModel
      # @!attribute [rw] type
      #   Rollover up to a percentage of the original credit grant amount.
      #   One of the constants defined in {Metronome::Models::RolloverAmountMaxPercentage::Type}
      #   @return [Symbol]
      required :type, enum: -> { Metronome::Models::RolloverAmountMaxPercentage::Type }

      # @!attribute [rw] value
      #   The maximum percentage (0-1) of the original credit grant to rollover.
      #   @return [Float]
      required :value, Float

      # Rollover up to a percentage of the original credit grant amount.
      class Type < Metronome::Enum
        MAX_PERCENTAGE = :MAX_PERCENTAGE
      end
    end
  end
end
