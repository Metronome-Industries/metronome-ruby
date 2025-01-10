# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # plan_get_details_response => {
    #   data: Metronome::Models::PlanDetail
    # }
    # ```
    class PlanGetDetailsResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::PlanDetail]
      required :data, -> { Metronome::Models::PlanDetail }

      # @!parse
      #   # @param data [Metronome::Models::PlanDetail]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
