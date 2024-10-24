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
      optional :name_, String, api_name: :name

      # The operation to perform on the quantity
      class Operation < Metronome::Enum
        MULTIPLY = :MULTIPLY
        DIVIDE = :DIVIDE
      end

      # @!parse
      #   # Create a new instance of QuantityConversion from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Float] :conversion_factor The factor to multiply or divide the quantity by.
      #   #   @option data [String] :operation The operation to perform on the quantity
      #   #   @option data [String, nil] :name Optional name for this conversion.
      #   def initialize(data = {}) = super
    end
  end
end
