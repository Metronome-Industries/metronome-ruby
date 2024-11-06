# frozen_string_literal: true

module Metronome
  module Models
    class CustomerCreateResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::Customer]
      required :data, -> { Metronome::Models::Customer }

      # @!parse
      #   # Create a new instance of CustomerCreateResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :data
      #   def initialize(data = {}) = super
    end
  end
end
