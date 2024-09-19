# frozen_string_literal: true

module Metronome
  module Models
    class QuantityRounding < BaseModel
      # @!attribute [rw] decimal_places
      #   @return [Float]
      required :decimal_places, Float

      # @!attribute [rw] rounding_method
      #   One of the constants defined in {Metronome::Models::QuantityRounding::RoundingMethod}
      #   @return [Symbol]
      required :rounding_method, enum: -> { Metronome::Models::QuantityRounding::RoundingMethod }

      class RoundingMethod < Metronome::Enum
        ROUND_UP = :ROUND_UP
        ROUND_DOWN = :ROUND_DOWN
        ROUND_HALF_UP = :ROUND_HALF_UP
      end
    end
  end
end
