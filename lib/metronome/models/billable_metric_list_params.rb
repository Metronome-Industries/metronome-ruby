# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricListParams < Metronome::BaseModel
      # @!attribute include_archived
      #   If true, the list of returned metrics will include archived metrics
      #
      #   @return [Boolean]
      optional :include_archived, Metronome::BooleanModel

      # @!attribute limit
      #   Max number of results that should be returned
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String]
      optional :next_page, String

      # @!parse
      #   # @param include_archived [Boolean] If true, the list of returned metrics will include archived metrics
      #   #
      #   # @param limit [Integer] Max number of results that should be returned
      #   #
      #   # @param next_page [String] Cursor that indicates where the next page of results should start.
      #   #
      #   def initialize(include_archived: nil, limit: nil, next_page: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
