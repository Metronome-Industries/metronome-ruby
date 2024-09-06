# frozen_string_literal: true

module Metronome
  module Models
    class RolloverAmountMaxPercentage < BaseModel
      # @!attribute [rw] type
      #   Rollover up to a percentage of the original credit grant amount.
      #   @return [Symbol]
      required :type, Metronome::Enum.new(:MAX_PERCENTAGE)

      # @!attribute [rw] value
      #   The maximum percentage (0-1) of the original credit grant to rollover.
      #   @return [Float]
      required :value, Float
    end
  end
end
