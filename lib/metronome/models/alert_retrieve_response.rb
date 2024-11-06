# frozen_string_literal: true

module Metronome
  module Models
    class AlertRetrieveResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CustomerAlert]
      required :data, -> { Metronome::Models::CustomerAlert }

      # @!parse
      #   # Create a new instance of AlertRetrieveResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :data
      #   def initialize(data = {}) = super
    end
  end
end
