# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class PlanListPriceAdjustmentsParams < Metronome::BaseModel
        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] customer_plan_id
        #   @return [String]
        required :customer_plan_id, String

        # @!attribute [rw] limit
        #   Max number of results that should be returned
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute [rw] next_page
        #   Cursor that indicates where the next page of results should start.
        #   @return [String]
        optional :next_page, String
      end
    end
  end
end
