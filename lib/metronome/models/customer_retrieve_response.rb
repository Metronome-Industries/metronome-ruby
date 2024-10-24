# frozen_string_literal: true

module Metronome
  module Models
    class CustomerRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CustomerDetail]
      required :data, -> { Metronome::Models::CustomerDetail }

      # @!parse
      #   # Create a new instance of CustomerRetrieveResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :data
      #   def initialize(data = {}) = super
    end
  end
end
