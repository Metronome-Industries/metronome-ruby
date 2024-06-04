# frozen_string_literal: true

module Metronome
  module Models
    class PlanAddResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::PlanAddResponse::Data]
      required :data, -> { Metronome::Models::PlanAddResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end
    end
  end
end
