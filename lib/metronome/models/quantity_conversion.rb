# frozen_string_literal: true

module Metronome
  module Models
    class QuantityConversion < BaseModel
      # @!attribute [rw] conversion_factor
      #   The factor to multiply or divide the quantity by.
      #   @return [Float]
      required :conversion_factor, Float

      # @!attribute [rw] operation
      #   The operation to perform on the quantity
      #   One of the constants defined in {Metronome::Models::QuantityConversion::Operation}
      #   @return [Symbol]
      required :operation, enum: -> { Metronome::Models::QuantityConversion::Operation }

      # @!attribute [rw] name_
      #   Optional name for this conversion.
      #   @return [String]
      optional :name_, String

      # The operation to perform on the quantity
      class Operation < Metronome::Enum
        MULTIPLY = :MULTIPLY
        DIVIDE = :DIVIDE
      end
    end
  end
end
