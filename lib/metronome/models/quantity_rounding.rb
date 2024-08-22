# frozen_string_literal: true

module Metronome
  module Models
    class QuantityRounding < BaseModel
      # @!attribute [rw] decimal_places
      #   @return [Float]
      required :decimal_places, Float

      # @!attribute [rw] rounding_method
      #   @return [Symbol]
      required :rounding_method, Metronome::Enum.new(:ROUND_UP, :ROUND_DOWN, :ROUND_HALF_UP)
    end
  end
end
