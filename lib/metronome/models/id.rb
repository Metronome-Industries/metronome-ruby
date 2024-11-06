# frozen_string_literal: true

module Metronome
  module Models
    class ID < Metronome::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!parse
      #   # Create a new instance of ID from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   def initialize(data = {}) = super
    end
  end
end
