# frozen_string_literal: true

module Metronome
  module Models
    class PlanGetDetailsResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::PlanDetail]
      required :data, -> { Metronome::Models::PlanDetail }

      # @!parse
      #   # Create a new instance of PlanGetDetailsResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :data
      #   def initialize(data = {}) = super
    end
  end
end
