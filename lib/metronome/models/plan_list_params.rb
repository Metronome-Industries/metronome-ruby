# frozen_string_literal: true

module Metronome
  module Models
    class PlanListParams < Metronome::BaseModel
      # @!attribute [r] limit
      #   Max number of results that should be returned
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String, nil]
      optional :next_page, String

      # @!parse
      #   # @return [String]
      #   attr_writer :next_page

      # @!parse
      #   # @param limit [Integer]
      #   # @param next_page [String]
      #   #
      #   def initialize(limit: nil, next_page: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
