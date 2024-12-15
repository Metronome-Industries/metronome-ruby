# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListBillableMetricsParams < Metronome::BaseModel
      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

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

      # @!attribute on_current_plan
      #   If true, the list of metrics will be filtered to just ones that are on the customer's current plan
      #
      #   @return [Boolean]
      optional :on_current_plan, Metronome::BooleanModel

      # @!parse
      #   # @param customer_id [String]
      #   #
      #   # @param include_archived [Boolean, nil] If true, the list of returned metrics will include archived metrics
      #   #
      #   # @param limit [Integer, nil] Max number of results that should be returned
      #   #
      #   # @param next_page [String, nil] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param on_current_plan [Boolean, nil] If true, the list of metrics will be filtered to just ones that are on the
      #   #   customer's current plan
      #   #
      #   def initialize(customer_id:, include_archived: nil, limit: nil, next_page: nil, on_current_plan: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
