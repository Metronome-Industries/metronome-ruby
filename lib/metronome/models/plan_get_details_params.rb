# frozen_string_literal: true

module Metronome
  module Models
    class PlanGetDetailsParams < Metronome::BaseModel
      # @!attribute [rw] plan_id
      #   @return [String]
      required :plan_id, String
    end
  end
end
