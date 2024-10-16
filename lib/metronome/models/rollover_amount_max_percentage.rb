# frozen_string_literal: true

module Metronome
  module Models
    class RolloverAmountMaxPercentage < BaseModel
      # @!attribute [rw] type
      #   Rollover up to a percentage of the original credit grant amount.
      #   @return [Symbol, Metronome::Models::RolloverAmountMaxPercentage::Type]
      required :type, enum: -> { Metronome::Models::RolloverAmountMaxPercentage::Type }

      # @!attribute [rw] value
      #   The maximum percentage (0-1) of the original credit grant to rollover.
      #   @return [Float]
      required :value, Float

      # Rollover up to a percentage of the original credit grant amount.
      class Type < Metronome::Enum
        MAX_PERCENTAGE = :MAX_PERCENTAGE
      end

      # Create a new instance of RolloverAmountMaxPercentage from a Hash of raw data.
      #
      # @overload initialize(type: nil, value: nil)
      # @param type [String] Rollover up to a percentage of the original credit grant amount.
      # @param value [Float] The maximum percentage (0-1) of the original credit grant to rollover.
      def initialize(data = {})
        super
      end
    end
  end
end
