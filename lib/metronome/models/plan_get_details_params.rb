# frozen_string_literal: true

module Metronome
  module Models
    class PlanGetDetailsParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!attribute plan_id
      #
      #   @return [String]
      required :plan_id, String

      # @!parse
      #   # @param plan_id [String]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(plan_id:, request_options: {}, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
