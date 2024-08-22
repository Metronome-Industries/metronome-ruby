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
      #   @return [Symbol]
      required :operation, Metronome::Enum.new(:MULTIPLY, :DIVIDE)

      # @!attribute [rw] name_
      #   Optional name for this conversion.
      #   @return [String]
      optional :name_, String
    end
  end
end
