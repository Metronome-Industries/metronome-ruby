# frozen_string_literal: true

module Metronome
  module Models
    class PlanListCustomersResponse < Metronome::BaseModel
      # @!attribute [rw] customer_details
      #   @return [Metronome::Models::CustomerDetail]
      required :customer_details, -> { Metronome::Models::CustomerDetail }

      # @!attribute [rw] plan_details
      #   @return [Metronome::Models::PlanListCustomersResponse::PlanDetails]
      required :plan_details, -> { Metronome::Models::PlanListCustomersResponse::PlanDetails }

      class PlanDetails < Metronome::BaseModel
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
        required :name_, String, api_name: :name

        # @!attribute [rw] starting_on
        #   The start date of the plan
        #   @return [Time]
        required :starting_on, Time

        # @!attribute [rw] ending_before
        #   The end date of the plan
        #   @return [Time]
        optional :ending_before, Time

        # @!parse
        #   # Create a new instance of PlanDetails from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   #   @option data [Hash] :custom_fields
        #   #   @option data [String] :customer_plan_id
        #   #   @option data [String] :name
        #   #   @option data [String] :starting_on The start date of the plan
        #   #   @option data [String, nil] :ending_before The end date of the plan
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of PlanListCustomersResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :customer_details
      #   #   @option data [Object] :plan_details
      #   def initialize(data = {}) = super
    end
  end
end
