# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class PlanListResponse < Metronome::BaseModel
        # @!attribute [rw] id
        #   the ID of the customer plan
        #   @return [String]
        required :id, String

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        required :custom_fields, Hash

        # @!attribute [rw] plan_description
        #   @return [String]
        required :plan_description, String

        # @!attribute [rw] plan_id
        #   the ID of the plan
        #   @return [String]
        required :plan_id, String

        # @!attribute [rw] plan_name
        #   @return [String]
        required :plan_name, String

        # @!attribute [rw] starting_on
        #   @return [Time]
        required :starting_on, Time

        # @!attribute [rw] ending_before
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute [rw] net_payment_terms_days
        #   @return [Float]
        optional :net_payment_terms_days, Float

        # @!attribute [rw] trial_info
        #   @return [Metronome::Models::Customers::PlanListResponse::TrialInfo]
        optional :trial_info, -> { Metronome::Models::Customers::PlanListResponse::TrialInfo }

        class TrialInfo < Metronome::BaseModel
          # @!attribute [rw] ending_before
          #   @return [Time]
          required :ending_before, Time

          # @!attribute [rw] spending_caps
          #   @return [Array<Metronome::Models::Customers::PlanListResponse::TrialInfo::SpendingCap>]
          required :spending_caps,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Customers::PlanListResponse::TrialInfo::SpendingCap
                     }
                   )

          class SpendingCap < Metronome::BaseModel
            # @!attribute [rw] amount
            #   @return [Float]
            required :amount, Float

            # @!attribute [rw] amount_remaining
            #   @return [Float]
            required :amount_remaining, Float

            # @!attribute [rw] credit_type
            #   @return [Metronome::Models::CreditTypeData]
            required :credit_type, -> { Metronome::Models::CreditTypeData }

            # @!parse
            #   # Create a new instance of SpendingCap from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Float] :amount
            #   #   @option data [Float] :amount_remaining
            #   #   @option data [Object] :credit_type
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of TrialInfo from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :ending_before
          #   #   @option data [Array<Object>] :spending_caps
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of PlanListResponse from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id the ID of the customer plan
        #   #   @option data [Hash] :custom_fields
        #   #   @option data [String] :plan_description
        #   #   @option data [String] :plan_id the ID of the plan
        #   #   @option data [String] :plan_name
        #   #   @option data [String] :starting_on
        #   #   @option data [String, nil] :ending_before
        #   #   @option data [Float, nil] :net_payment_terms_days
        #   #   @option data [Object, nil] :trial_info
        #   def initialize(data = {}) = super
      end
    end
  end
end
