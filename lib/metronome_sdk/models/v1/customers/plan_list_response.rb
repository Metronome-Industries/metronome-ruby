# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Plans#list
        class PlanListResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #   the ID of the customer plan
          #
          #   @return [String]
          required :id, String

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}]
          required :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute plan_description
          #
          #   @return [String]
          required :plan_description, String

          # @!attribute plan_id
          #   the ID of the plan
          #
          #   @return [String]
          required :plan_id, String

          # @!attribute plan_name
          #
          #   @return [String]
          required :plan_name, String

          # @!attribute starting_on
          #
          #   @return [Time]
          required :starting_on, Time

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute net_payment_terms_days
          #
          #   @return [Float, nil]
          optional :net_payment_terms_days, Float

          # @!attribute trial_info
          #
          #   @return [MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo, nil]
          optional :trial_info, -> { MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo }

          # @!method initialize(id:, custom_fields:, plan_description:, plan_id:, plan_name:, starting_on:, ending_before: nil, net_payment_terms_days: nil, trial_info: nil)
          #   @param id [String] the ID of the customer plan
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param plan_description [String]
          #
          #   @param plan_id [String] the ID of the plan
          #
          #   @param plan_name [String]
          #
          #   @param starting_on [Time]
          #
          #   @param ending_before [Time]
          #
          #   @param net_payment_terms_days [Float]
          #
          #   @param trial_info [MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo]

          # @see MetronomeSDK::Models::V1::Customers::PlanListResponse#trial_info
          class TrialInfo < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute ending_before
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute spending_caps
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap>]
            required :spending_caps,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap] }

            # @!method initialize(ending_before:, spending_caps:)
            #   @param ending_before [Time]
            #   @param spending_caps [Array<MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap>]

            class SpendingCap < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute amount_remaining
              #
              #   @return [Float]
              required :amount_remaining, Float

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap::CreditType]
              required :credit_type,
                       -> { MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap::CreditType }

              # @!method initialize(amount:, amount_remaining:, credit_type:)
              #   @param amount [Float]
              #   @param amount_remaining [Float]
              #   @param credit_type [MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap::CreditType]

              # @see MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap#credit_type
              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end
            end
          end
        end
      end
    end
  end
end
