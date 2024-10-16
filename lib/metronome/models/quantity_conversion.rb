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
      #   @return [Symbol, Metronome::Models::QuantityConversion::Operation]
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

      # Create a new instance of QuantityConversion from a Hash of raw data.
      #
      # @overload initialize(conversion_factor: nil, operation: nil, name: nil)
      # @param conversion_factor [Float] The factor to multiply or divide the quantity by.
      # @param operation [String] The operation to perform on the quantity
      # @param name [String] Optional name for this conversion.
      def initialize(data = {})
        super
      end
    end
  end
end
