# frozen_string_literal: true

module Metronome
  module Models
    class PlanListCustomersResponse < BaseModel
      # @!attribute [rw] customer_details
      #   @return [Metronome::Models::CustomerDetail]
      required :customer_details, -> { Metronome::Models::CustomerDetail }

      # @!attribute [rw] plan_details
      #   @return [Metronome::Models::PlanListCustomersResponse::PlanDetails]
      required :plan_details, -> { Metronome::Models::PlanListCustomersResponse::PlanDetails }

      class PlanDetails < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        required :custom_fields, Hash

        # @!attribute [rw] customer_plan_id
        #   @return [String]
        required :customer_plan_id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] starting_on
        #   The start date of the plan
        #   @return [Time]
        required :starting_on, Time

        # @!attribute [rw] ending_before
        #   The end date of the plan
        #   @return [Time]
        optional :ending_before, Time
      end
    end
  end
end
