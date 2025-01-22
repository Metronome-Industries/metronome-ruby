# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricListParams < Metronome::BaseModel
      # @!attribute [r] include_archived
      #   If true, the list of returned metrics will include archived metrics
      #
      #   @return [Boolean, nil]
      optional :include_archived, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_archived

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
      #   # @param include_archived [Boolean]
      #   # @param limit [Integer]
      #   # @param next_page [String]
      #   #
      #   def initialize(include_archived: nil, limit: nil, next_page: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
