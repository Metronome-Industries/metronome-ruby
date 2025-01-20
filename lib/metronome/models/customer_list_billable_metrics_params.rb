# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListBillableMetricsParams < Metronome::BaseModel
      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

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

      # @!attribute [r] on_current_plan
      #   If true, the list of metrics will be filtered to just ones that are on the customer's current plan
      #
      #   @return [Boolean, nil]
      optional :on_current_plan, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :on_current_plan

      # @!parse
      #   # @param customer_id [String]
      #   #
      #   # @param include_archived [Boolean] If true, the list of returned metrics will include archived metrics
      #   #
      #   # @param limit [Integer] Max number of results that should be returned
      #   #
      #   # @param next_page [String] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param on_current_plan [Boolean] If true, the list of metrics will be filtered to just ones that are on the
      #   #   customer's current plan
      #   #
      #   def initialize(customer_id:, include_archived: nil, limit: nil, next_page: nil, on_current_plan: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
