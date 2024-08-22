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
    end
  end
end
