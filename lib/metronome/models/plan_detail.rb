# frozen_string_literal: true

module Metronome
  module Models
    class PlanDetail < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      required :custom_fields, Hash

      # @!attribute [rw] name_
      #   @return [String]
      required :name_, String

      # @!attribute [rw] credit_grants
      #   @return [Array<Metronome::Models::PlanDetail::CreditGrant>]
      optional :credit_grants, Metronome::ArrayOf.new(-> { Metronome::Models::PlanDetail::CreditGrant })

      # @!attribute [rw] description
      #   @return [String]
      optional :description, String

      # @!attribute [rw] minimums
      #   @return [Array<Metronome::Models::PlanDetail::Minimum>]
      optional :minimums, Metronome::ArrayOf.new(-> { Metronome::Models::PlanDetail::Minimum })

      # @!attribute [rw] overage_rates
      #   @return [Array<Metronome::Models::PlanDetail::OverageRate>]
      optional :overage_rates, Metronome::ArrayOf.new(-> { Metronome::Models::PlanDetail::OverageRate })

      class CreditGrant < BaseModel
        # @!attribute [rw] amount_granted
        #   @return [Float]
        required :amount_granted, Float

        # @!attribute [rw] amount_granted_credit_type
        #   @return [Metronome::Models::CreditTypeData]
        required :amount_granted_credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute [rw] amount_paid
        #   @return [Float]
        required :amount_paid, Float

        # @!attribute [rw] amount_paid_credit_type
        #   @return [Metronome::Models::CreditTypeData]
        required :amount_paid_credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute [rw] effective_duration
        #   @return [Float]
        required :effective_duration, Float

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] priority
        #   @return [String]
        required :priority, String

        # @!attribute [rw] send_invoice
        #   @return [Boolean]
        required :send_invoice, Metronome::BooleanModel

        # @!attribute [rw] reason
        #   @return [String]
        optional :reason, String

        # @!attribute [rw] recurrence_duration
        #   @return [Float]
        optional :recurrence_duration, Float

        # @!attribute [rw] recurrence_interval
        #   @return [Float]
        optional :recurrence_interval, Float
      end

      class Minimum < BaseModel
        # @!attribute [rw] credit_type
        #   @return [Metronome::Models::CreditTypeData]
        required :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] start_period
        #   Used in price ramps.  Indicates how many billing periods pass before the charge applies.
        #   @return [Float]
        required :start_period, Float

        # @!attribute [rw] value
        #   @return [Float]
        required :value, Float
      end

      class OverageRate < BaseModel
        # @!attribute [rw] credit_type
        #   @return [Metronome::Models::CreditTypeData]
        required :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute [rw] fiat_credit_type
        #   @return [Metronome::Models::CreditTypeData]
        required :fiat_credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute [rw] start_period
        #   Used in price ramps.  Indicates how many billing periods pass before the charge applies.
        #   @return [Float]
        required :start_period, Float

        # @!attribute [rw] to_fiat_conversion_factor
        #   @return [Float]
        required :to_fiat_conversion_factor, Float
      end
    end
  end
end
