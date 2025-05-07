# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Plans#list_customers
      class PlanListCustomersResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute customer_details
        #
        #   @return [MetronomeSDK::V1::CustomerDetail]
        required :customer_details, -> { MetronomeSDK::V1::CustomerDetail }

        # @!attribute plan_details
        #
        #   @return [MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails]
        required :plan_details, -> { MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails }

        # @!method initialize(customer_details:, plan_details:)
        #   @param customer_details [MetronomeSDK::V1::CustomerDetail]
        #   @param plan_details [MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails]

        # @see MetronomeSDK::Models::V1::PlanListCustomersResponse#plan_details
        class PlanDetails < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}]
          required :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

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

          # @!method initialize(id:, custom_fields:, customer_plan_id:, name:, starting_on:, ending_before: nil)
          #   @param id [String]
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param customer_plan_id [String]
          #
          #   @param name [String]
          #
          #   @param starting_on [Time] The start date of the plan
          #
          #   @param ending_before [Time, nil] The end date of the plan
        end
      end
    end
  end
end
