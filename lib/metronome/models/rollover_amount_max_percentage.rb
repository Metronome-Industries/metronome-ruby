# frozen_string_literal: true

module Metronome
  module Models
    class RolloverAmountMaxPercentage < Metronome::BaseModel
      # @!attribute type
      #   Rollover up to a percentage of the original credit grant amount.
      #
      #   @return [Symbol, Metronome::Models::RolloverAmountMaxPercentage::Type]
      required :type, enum: -> { Metronome::Models::RolloverAmountMaxPercentage::Type }

      # @!attribute value
      #   The maximum percentage (0-1) of the original credit grant to rollover.
      #
      #   @return [Float]
      required :value, Float

      # @!parse
      #   # @param type [String] Rollover up to a percentage of the original credit grant amount.
      #   #
      #   # @param value [Float] The maximum percentage (0-1) of the original credit grant to rollover.
      #   #
      #   def initialize(type:, value:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # Rollover up to a percentage of the original credit grant amount.
      class Type < Metronome::Enum
        MAX_PERCENTAGE = :MAX_PERCENTAGE
      end
    end
  end
end
