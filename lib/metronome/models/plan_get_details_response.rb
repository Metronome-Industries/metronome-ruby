# frozen_string_literal: true

module Metronome
  module Models
    class PlanGetDetailsResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::PlanDetail]
      required :data, -> { Metronome::Models::PlanDetail }
    end
  end
end
