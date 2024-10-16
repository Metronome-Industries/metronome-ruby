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

      # Create a new instance of Tier from a Hash of raw data.
      #
      # @overload initialize(price: nil, size: nil)
      # @param price [Float]
      # @param size [Float]
      def initialize(data = {})
        super
      end
    end
  end
end
