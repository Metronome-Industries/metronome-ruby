# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # tier => {
    #   price: Float,
    #   size: Float
    # }
    # ```
    class Tier < Metronome::BaseModel
      # @!attribute price
      #
      #   @return [Float]
      required :price, Float

      # @!attribute [r] size
      #
      #   @return [Float, nil]
      optional :size, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :size

      # @!parse
      #   # @param price [Float]
      #   # @param size [Float]
      #   #
      #   def initialize(price:, size: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
