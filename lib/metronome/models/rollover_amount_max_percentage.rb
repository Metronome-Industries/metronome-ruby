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
      #   # @param type [Symbol, Metronome::Models::RolloverAmountMaxPercentage::Type]
      #   # @param value [Float]
      #   #
      #   def initialize(type:, value:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @abstract
      #
      # Rollover up to a percentage of the original credit grant amount.
      #
      # @example
      # ```ruby
      # case type
      # in :MAX_PERCENTAGE
      #   # ...
      # end
      # ```
      class Type < Metronome::Enum
        MAX_PERCENTAGE = :MAX_PERCENTAGE

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
