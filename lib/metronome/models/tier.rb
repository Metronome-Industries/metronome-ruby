# frozen_string_literal: true

module Metronome
  module Models
    class Tier < BaseModel
      # @!attribute [rw] price
      #   @return [Float]
      required :price, Float

      # @!attribute [rw] size
      #   @return [Float]
      optional :size, Float

      # @!parse
      #   # Create a new instance of Tier from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Float] :price
      #   #   @option data [Float, nil] :size
      #   def initialize(data = {}) = super
    end
  end
end
