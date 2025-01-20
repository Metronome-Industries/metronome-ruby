# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      # @example
      # ```ruby
      # plan_list_response => {
      #   id: String,
      #   custom_fields: -> { Metronome::HashOf[String] === _1 },
      #   plan_description: String,
      #   plan_id: String,
      #   plan_name: String,
      #   **_
      # }
      # ```
      class PlanListResponse < Metronome::BaseModel
        # @!attribute id
        #   the ID of the customer plan
        #
        #   @return [String]
        required :id, String

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}]
        required :custom_fields, Metronome::HashOf[String]

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
        #   @return [Metronome::Models::Customers::PlanListResponse::TrialInfo, nil]
        optional :trial_info, -> { Metronome::Models::Customers::PlanListResponse::TrialInfo }

        # @!parse
        #   # @return [Metronome::Models::Customers::PlanListResponse::TrialInfo]
        #   attr_writer :trial_info

        # @!parse
        #   # @param id [String] the ID of the customer plan
        #   #
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   #
        #   # @param plan_description [String]
        #   #
        #   # @param plan_id [String] the ID of the plan
        #   #
        #   # @param plan_name [String]
        #   #
        #   # @param starting_on [String]
        #   #
        #   # @param ending_before [String]
        #   #
        #   # @param net_payment_terms_days [Float]
        #   #
        #   # @param trial_info [Metronome::Models::Customers::PlanListResponse::TrialInfo]
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

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # trial_info => {
        #   ending_before: Time,
        #   spending_caps: -> { Metronome::ArrayOf[Metronome::Models::Customers::PlanListResponse::TrialInfo::SpendingCap] === _1 }
        # }
        # ```
        class TrialInfo < Metronome::BaseModel
          # @!attribute ending_before
          #
          #   @return [Time]
          required :ending_before, Time

          # @!attribute spending_caps
          #
          #   @return [Array<Metronome::Models::Customers::PlanListResponse::TrialInfo::SpendingCap>]
          required :spending_caps,
                   -> {
                     Metronome::ArrayOf[Metronome::Models::Customers::PlanListResponse::TrialInfo::SpendingCap]
                   }

          # @!parse
          #   # @param ending_before [String]
          #   # @param spending_caps [Array<Metronome::Models::Customers::PlanListResponse::TrialInfo::SpendingCap>]
          #   #
          #   def initialize(ending_before:, spending_caps:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          # ```ruby
          # spending_cap => {
          #   amount: Float,
          #   amount_remaining: Float,
          #   credit_type: Metronome::Models::CreditTypeData
          # }
          # ```
          class SpendingCap < Metronome::BaseModel
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
            #   @return [Metronome::Models::CreditTypeData]
            required :credit_type, -> { Metronome::Models::CreditTypeData }

            # @!parse
            #   # @param amount [Float]
            #   # @param amount_remaining [Float]
            #   # @param credit_type [Metronome::Models::CreditTypeData]
            #   #
            #   def initialize(amount:, amount_remaining:, credit_type:, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end
      end
    end
  end
end
