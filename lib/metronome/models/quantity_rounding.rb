# frozen_string_literal: true

module Metronome
  module Models
    class QuantityRounding < BaseModel
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

      # Create a new instance of QuantityRounding from a Hash of raw data.
      #
      # @overload initialize(decimal_places: nil, rounding_method: nil)
      # @param decimal_places [Float]
      # @param rounding_method [String]
      def initialize(data = {})
        super
      end
    end
  end
end
