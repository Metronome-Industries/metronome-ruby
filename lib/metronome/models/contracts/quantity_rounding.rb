# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      # @example
      #
      # ```ruby
      # quantity_rounding => {
      #   decimal_places: Float,
      #   rounding_method: Metronome::Models::Contracts::QuantityRounding::RoundingMethod
      # }
      # ```
      class QuantityRounding < Metronome::BaseModel
        # @!attribute decimal_places
        #
        #   @return [Float]
        required :decimal_places, Float

        # @!attribute rounding_method
        #
        #   @return [Symbol, Metronome::Models::Contracts::QuantityRounding::RoundingMethod]
        required :rounding_method, enum: -> { Metronome::Models::Contracts::QuantityRounding::RoundingMethod }

        # @!parse
        #   # Optional. Only valid for USAGE products. If provided, the quantity will be
        #   #   rounded using the provided rounding method and decimal places. For example, if
        #   #   the method is "round up" and the decimal places is 0, then the quantity will be
        #   #   rounded up to the nearest integer.
        #   #
        #   # @param decimal_places [Float]
        #   # @param rounding_method [String]
        #   #
        #   def initialize(decimal_places:, rounding_method:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case rounding_method
        # in :ROUND_UP
        #   # ...
        # in :ROUND_DOWN
        #   # ...
        # in :ROUND_HALF_UP
        #   # ...
        # end
        # ```
        class RoundingMethod < Metronome::Enum
          ROUND_UP = :ROUND_UP
          ROUND_DOWN = :ROUND_DOWN
          ROUND_HALF_UP = :ROUND_HALF_UP

          finalize!
        end
      end
    end
  end
end
