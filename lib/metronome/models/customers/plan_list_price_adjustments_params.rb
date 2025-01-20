# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class PlanListPriceAdjustmentsParams < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute customer_plan_id
        #
        #   @return [String]
        required :customer_plan_id, String

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
        #   # @param customer_id [String]
        #   #
        #   # @param customer_plan_id [String]
        #   #
        #   # @param limit [Integer] Max number of results that should be returned
        #   #
        #   # @param next_page [String] Cursor that indicates where the next page of results should start.
        #   #
        #   def initialize(customer_id:, customer_plan_id:, limit: nil, next_page: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
