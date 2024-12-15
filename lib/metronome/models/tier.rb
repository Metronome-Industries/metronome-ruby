# frozen_string_literal: true

module Metronome
  module Models
    class Tier < Metronome::BaseModel
      # @!attribute price
      #
      #   @return [Float]
      required :price, Float

      # @!attribute size
      #
      #   @return [Float]
      optional :size, Float

      # @!parse
      #   # @param price [Float]
      #   # @param size [Float, nil]
      #   #
      #   def initialize(price:, size: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
