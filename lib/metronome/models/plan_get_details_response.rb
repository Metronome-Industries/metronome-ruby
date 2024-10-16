# frozen_string_literal: true

module Metronome
  module Models
    class PlanGetDetailsResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::PlanDetail]
      required :data, -> { Metronome::Models::PlanDetail }

      # Create a new instance of PlanGetDetailsResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Object]
      def initialize(data = {})
        super
      end
    end
  end
end
