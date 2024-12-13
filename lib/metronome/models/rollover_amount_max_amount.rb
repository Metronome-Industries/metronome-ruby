# frozen_string_literal: true

module Metronome
  module Models
    class RolloverAmountMaxAmount < Metronome::BaseModel
      # @!attribute type
      #   Rollover up to a fixed amount of the original credit grant amount.
      #   @return [Symbol, Metronome::Models::RolloverAmountMaxAmount::Type]
      required :type, enum: -> { Metronome::Models::RolloverAmountMaxAmount::Type }

      # @!attribute value
      #   The maximum amount to rollover.
      #   @return [Float]
      required :value, Float

      # Rollover up to a fixed amount of the original credit grant amount.
      class Type < Metronome::Enum
        MAX_AMOUNT = :MAX_AMOUNT
      end

      # @!parse
      #   # Create a new instance of RolloverAmountMaxAmount from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :type Rollover up to a fixed amount of the original credit grant amount.
      #   #   @option data [Float] :value The maximum amount to rollover.
      #   def initialize(data = {}) = super
    end
  end
end
