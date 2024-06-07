# frozen_string_literal: true

module Metronome
  module Models
    class PlanListCustomersResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::PlanListCustomersResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::PlanListCustomersResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] customer_details
        #   @return [Metronome::Models::CustomerDetail]
        required :customer_details, -> { Metronome::Models::CustomerDetail }

        # @!attribute [rw] plan_details
        #   @return [Metronome::Models::PlanListCustomersResponse::Data::PlanDetails]
        required :plan_details, -> { Metronome::Models::PlanListCustomersResponse::Data::PlanDetails }

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
          #   @return [String]
          required :starting_on, String

          # @!attribute [rw] ending_before
          #   The end date of the plan
          #   @return [String]
          optional :ending_before, String
        end
      end
    end
  end
end
