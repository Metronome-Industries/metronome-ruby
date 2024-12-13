# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricListParams < Metronome::BaseModel
      # @!attribute include_archived
      #   If true, the list of returned metrics will include archived metrics
      #   @return [Boolean]
      optional :include_archived, Metronome::BooleanModel

      # @!attribute limit
      #   Max number of results that should be returned
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute next_page
      #   Cursor that indicates where the next page of results should start.
      #   @return [String]
      optional :next_page, String
    end
  end
end
