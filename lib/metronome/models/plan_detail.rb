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

        # Create a new instance of CreditGrant from a Hash of raw data.
        #
        # @overload initialize(amount_granted: nil, amount_granted_credit_type: nil, amount_paid: nil, amount_paid_credit_type: nil, effective_duration: nil, name: nil, priority: nil, send_invoice: nil, reason: nil, recurrence_duration: nil, recurrence_interval: nil)
        # @param amount_granted [Float]
        # @param amount_granted_credit_type [Object]
        # @param amount_paid [Float]
        # @param amount_paid_credit_type [Object]
        # @param effective_duration [Float]
        # @param name [String]
        # @param priority [String]
        # @param send_invoice [Hash]
        # @param reason [String]
        # @param recurrence_duration [Float]
        # @param recurrence_interval [Float]
        def initialize(data = {})
          super
        end
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

        # Create a new instance of Minimum from a Hash of raw data.
        #
        # @overload initialize(credit_type: nil, name: nil, start_period: nil, value: nil)
        # @param credit_type [Object]
        # @param name [String]
        # @param start_period [Float] Used in price ramps. Indicates how many billing periods pass before the charge
        #   applies.
        # @param value [Float]
        def initialize(data = {})
          super
        end
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

        # Create a new instance of OverageRate from a Hash of raw data.
        #
        # @overload initialize(credit_type: nil, fiat_credit_type: nil, start_period: nil, to_fiat_conversion_factor: nil)
        # @param credit_type [Object]
        # @param fiat_credit_type [Object]
        # @param start_period [Float] Used in price ramps. Indicates how many billing periods pass before the charge
        #   applies.
        # @param to_fiat_conversion_factor [Float]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of PlanDetail from a Hash of raw data.
      #
      # @overload initialize(id: nil, custom_fields: nil, name: nil, credit_grants: nil, description: nil, minimums: nil, overage_rates: nil)
      # @param id [String]
      # @param custom_fields [Hash]
      # @param name [String]
      # @param credit_grants [Array<Object>]
      # @param description [String]
      # @param minimums [Array<Object>]
      # @param overage_rates [Array<Object>]
      def initialize(data = {})
        super
      end
    end
  end
end
