# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class PlanListCustomersResponse < MetronomeSDK::BaseModel
        # @!attribute customer_details
        #
        #   @return [MetronomeSDK::Models::V1::CustomerDetail]
        required :customer_details, -> { MetronomeSDK::Models::V1::CustomerDetail }

        # @!attribute plan_details
        #
        #   @return [MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails]
        required :plan_details, -> { MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails }

        # @!parse
        #   # @param customer_details [MetronomeSDK::Models::V1::CustomerDetail]
        #   # @param plan_details [MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails]
        #   #
        #   def initialize(customer_details:, plan_details:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class PlanDetails < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}]
          required :custom_fields, MetronomeSDK::HashOf[String]

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
          optional :ending_before, Time, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param customer_plan_id [String]
          #   # @param name [String]
          #   # @param starting_on [Time]
          #   # @param ending_before [Time, nil]
          #   #
          #   def initialize(id:, custom_fields:, customer_plan_id:, name:, starting_on:, ending_before: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
