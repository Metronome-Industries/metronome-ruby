# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # rollover_amount_max_percentage => {
    #   type: Metronome::Models::RolloverAmountMaxPercentage::Type,
    #   value: Float
    # }
    # ```
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
      #   # @param type [String]
      #   # @param value [Float]
      #   #
      #   def initialize(type:, value:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

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
      end
    end
  end
end
