# frozen_string_literal: true

module Metronome
  module Models
    class RolloverAmountMaxAmount < BaseModel
      # @!attribute [rw] type
      #   Rollover up to a fixed amount of the original credit grant amount.
      #   @return [Symbol]
      required :type, Metronome::Enum.new(:MAX_AMOUNT)

      # @!attribute [rw] value
      #   The maximum amount to rollover.
      #   @return [Float]
      required :value, Float
    end
  end
end
