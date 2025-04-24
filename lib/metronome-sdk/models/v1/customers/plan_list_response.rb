# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanListResponse < MetronomeSDK::BaseModel
          # @!attribute id
          #   the ID of the customer plan
          #
          #   @return [String]
          required :id, String

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}]
          required :custom_fields, MetronomeSDK::HashOf[String]

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

          # @!attribute [r] ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] net_payment_terms_days
          #
          #   @return [Float, nil]
          optional :net_payment_terms_days, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :net_payment_terms_days

          # @!attribute [r] trial_info
          #
          #   @return [MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo, nil]
          optional :trial_info, -> { MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo]
          #   attr_writer :trial_info

          # @!parse
          #   # @param id [String]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param plan_description [String]
          #   # @param plan_id [String]
          #   # @param plan_name [String]
          #   # @param starting_on [Time]
          #   # @param ending_before [Time]
          #   # @param net_payment_terms_days [Float]
          #   # @param trial_info [MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo]
          #   #
          #   def initialize(
          #     id:,
          #     custom_fields:,
          #     plan_description:,
          #     plan_id:,
          #     plan_name:,
          #     starting_on:,
          #     ending_before: nil,
          #     net_payment_terms_days: nil,
          #     trial_info: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class TrialInfo < MetronomeSDK::BaseModel
            # @!attribute ending_before
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute spending_caps
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap>]
            required :spending_caps,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap] }

            # @!parse
            #   # @param ending_before [Time]
            #   # @param spending_caps [Array<MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap>]
            #   #
            #   def initialize(ending_before:, spending_caps:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class SpendingCap < MetronomeSDK::BaseModel
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
              #   @return [MetronomeSDK::Models::CreditTypeData]
              required :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

              # @!parse
              #   # @param amount [Float]
              #   # @param amount_remaining [Float]
              #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
              #   #
              #   def initialize(amount:, amount_remaining:, credit_type:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
