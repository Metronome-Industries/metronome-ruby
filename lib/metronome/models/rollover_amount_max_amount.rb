# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # rollover_amount_max_amount => {
    #   type: enum: Metronome::Models::RolloverAmountMaxAmount::Type,
    #   value: Float
    # }
    # ```
    class RolloverAmountMaxAmount < Metronome::BaseModel
      # @!attribute type
      #   Rollover up to a fixed amount of the original credit grant amount.
      #
      #   @return [Symbol, Metronome::Models::RolloverAmountMaxAmount::Type]
      required :type, enum: -> { Metronome::Models::RolloverAmountMaxAmount::Type }

      # @!attribute value
      #   The maximum amount to rollover.
      #
      #   @return [Float]
      required :value, Float

      # @!parse
      #   # @param type [String] Rollover up to a fixed amount of the original credit grant amount.
      #   #
      #   # @param value [Float] The maximum amount to rollover.
      #   #
      #   def initialize(type:, value:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # Rollover up to a fixed amount of the original credit grant amount.
      #
      # @example
      #
      # ```ruby
      # case type
      # in :MAX_AMOUNT
      #   # ...
      # end
      # ```
      class Type < Metronome::Enum
        MAX_AMOUNT = :MAX_AMOUNT

        finalize!
      end
    end
  end
end
