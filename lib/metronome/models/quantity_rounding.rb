# frozen_string_literal: true

module Metronome
  module Models
    class QuantityRounding < Metronome::BaseModel
      # @!attribute [rw] decimal_places
      #   @return [Float]
      required :decimal_places, Float

      # @!attribute [rw] rounding_method
      #   @return [Symbol, Metronome::Models::QuantityRounding::RoundingMethod]
      required :rounding_method, enum: -> { Metronome::Models::QuantityRounding::RoundingMethod }

      class RoundingMethod < Metronome::Enum
        ROUND_UP = :ROUND_UP
        ROUND_DOWN = :ROUND_DOWN
        ROUND_HALF_UP = :ROUND_HALF_UP
      end

      # @!parse
      #   # Create a new instance of QuantityRounding from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Float] :decimal_places
      #   #   @option data [String] :rounding_method
      #   def initialize(data = {}) = super
    end
  end
end
