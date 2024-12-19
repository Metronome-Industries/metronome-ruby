# frozen_string_literal: true

module Metronome
  module Models
    class PlanGetDetailsParams < Metronome::BaseModel
      # @!attribute plan_id
      #
      #   @return [String]
      required :plan_id, String

      # @!parse
      #   # @param plan_id [String]
      #   #
      #   def initialize(plan_id:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
