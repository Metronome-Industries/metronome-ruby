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

        # Create a new instance of PlanDetails from a Hash of raw data.
        #
        # @overload initialize(id: nil, custom_fields: nil, customer_plan_id: nil, name: nil, starting_on: nil, ending_before: nil)
        # @param id [String]
        # @param custom_fields [Hash]
        # @param customer_plan_id [String]
        # @param name [String]
        # @param starting_on [String] The start date of the plan
        # @param ending_before [String] The end date of the plan
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of PlanListCustomersResponse from a Hash of raw data.
      #
      # @overload initialize(customer_details: nil, plan_details: nil)
      # @param customer_details [Object]
      # @param plan_details [Object]
      def initialize(data = {})
        super
      end
    end
  end
end
