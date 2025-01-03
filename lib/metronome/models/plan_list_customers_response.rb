# frozen_string_literal: true

module Metronome
  module Models
    class PlanListCustomersResponse < Metronome::BaseModel
      # @!attribute customer_details
      #
      #   @return [Metronome::Models::CustomerDetail]
      required :customer_details, -> { Metronome::Models::CustomerDetail }

      # @!attribute plan_details
      #
      #   @return [Metronome::Models::PlanListCustomersResponse::PlanDetails]
      required :plan_details, -> { Metronome::Models::PlanListCustomersResponse::PlanDetails }

      # @!parse
      #   # @param customer_details [Metronome::Models::CustomerDetail]
      #   # @param plan_details [Metronome::Models::PlanListCustomersResponse::PlanDetails]
      #   #
      #   def initialize(customer_details:, plan_details:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class PlanDetails < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol => String}]
        required :custom_fields, Metronome::HashOf[String]

        # @!attribute customer_plan_id
        #
        #   @return [String]
        required :customer_plan_id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute starting_on
        #   The start date of the plan
        #
        #   @return [Time]
        required :starting_on, Time

        # @!attribute ending_before
        #   The end date of the plan
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!parse
        #   # @param id [String]
        #   #
        #   # @param custom_fields [Hash{Symbol => String}]
        #   #
        #   # @param customer_plan_id [String]
        #   #
        #   # @param name [String]
        #   #
        #   # @param starting_on [String] The start date of the plan
        #   #
        #   # @param ending_before [String, nil] The end date of the plan
        #   #
        #   def initialize(id:, custom_fields:, customer_plan_id:, name:, starting_on:, ending_before: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
