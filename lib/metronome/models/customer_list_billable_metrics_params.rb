# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListBillableMetricsParams < Metronome::BaseModel
      # @!attribute [rw] customer_id
      #   @return [String]
      required :customer_id, String

      # @!attribute [rw] include_archived
      #   If true, the list of returned metrics will include archived metrics
      #   @return [Boolean]
      optional :include_archived, Metronome::BooleanModel

      # @!attribute [rw] limit
      #   Max number of results that should be returned
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute [rw] next_page
      #   Cursor that indicates where the next page of results should start.
      #   @return [String]
      optional :next_page, String

      # @!attribute [rw] on_current_plan
      #   If true, the list of metrics will be filtered to just ones that are on the customer's current plan
      #   @return [Boolean]
      optional :on_current_plan, Metronome::BooleanModel
    end
  end
end
