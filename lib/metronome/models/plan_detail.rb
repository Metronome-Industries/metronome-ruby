# frozen_string_literal: true

module Metronome
  module Models
    class PlanDetail < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol => String}]
      required :custom_fields, Metronome::HashOf[String]

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute credit_grants
      #
      #   @return [Array<Metronome::Models::PlanDetail::CreditGrant>]
      optional :credit_grants, Metronome::ArrayOf[-> { Metronome::Models::PlanDetail::CreditGrant }]

      # @!attribute description
      #
      #   @return [String]
      optional :description, String

      # @!attribute minimums
      #
      #   @return [Array<Metronome::Models::PlanDetail::Minimum>]
      optional :minimums, Metronome::ArrayOf[-> { Metronome::Models::PlanDetail::Minimum }]

      # @!attribute overage_rates
      #
      #   @return [Array<Metronome::Models::PlanDetail::OverageRate>]
      optional :overage_rates, Metronome::ArrayOf[-> { Metronome::Models::PlanDetail::OverageRate }]

      # @!parse
      #   # @param id [String]
      #   # @param custom_fields [Hash{Symbol => String}]
      #   # @param name [String]
      #   # @param credit_grants [Array<Metronome::Models::PlanDetail::CreditGrant>]
      #   # @param description [String]
      #   # @param minimums [Array<Metronome::Models::PlanDetail::Minimum>]
      #   # @param overage_rates [Array<Metronome::Models::PlanDetail::OverageRate>]
      #   #
      #   def initialize(id:, custom_fields:, name:, credit_grants: nil, description: nil, minimums: nil, overage_rates: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class CreditGrant < Metronome::BaseModel
        # @!attribute amount_granted
        #
        #   @return [Float]
        required :amount_granted, Float

        # @!attribute amount_granted_credit_type
        #
        #   @return [Metronome::Models::CreditTypeData]
        required :amount_granted_credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute amount_paid
        #
        #   @return [Float]
        required :amount_paid, Float

        # @!attribute amount_paid_credit_type
        #
        #   @return [Metronome::Models::CreditTypeData]
        required :amount_paid_credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute effective_duration
        #
        #   @return [Float]
        required :effective_duration, Float

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute priority
        #
        #   @return [String]
        required :priority, String

        # @!attribute send_invoice
        #
        #   @return [Boolean]
        required :send_invoice, Metronome::BooleanModel

        # @!attribute reason
        #
        #   @return [String]
        optional :reason, String

        # @!attribute recurrence_duration
        #
        #   @return [Float]
        optional :recurrence_duration, Float

        # @!attribute recurrence_interval
        #
        #   @return [Float]
        optional :recurrence_interval, Float

        # @!parse
        #   # @param amount_granted [Float]
        #   # @param amount_granted_credit_type [Metronome::Models::CreditTypeData]
        #   # @param amount_paid [Float]
        #   # @param amount_paid_credit_type [Metronome::Models::CreditTypeData]
        #   # @param effective_duration [Float]
        #   # @param name [String]
        #   # @param priority [String]
        #   # @param send_invoice [Boolean]
        #   # @param reason [String]
        #   # @param recurrence_duration [Float]
        #   # @param recurrence_interval [Float]
        #   #
        #   def initialize(
        #     amount_granted:,
        #     amount_granted_credit_type:,
        #     amount_paid:,
        #     amount_paid_credit_type:,
        #     effective_duration:,
        #     name:,
        #     priority:,
        #     send_invoice:,
        #     reason: nil,
        #     recurrence_duration: nil,
        #     recurrence_interval: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      class Minimum < Metronome::BaseModel
        # @!attribute credit_type
        #
        #   @return [Metronome::Models::CreditTypeData]
        required :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute start_period
        #   Used in price ramps.  Indicates how many billing periods pass before the charge applies.
        #
        #   @return [Float]
        required :start_period, Float

        # @!attribute value
        #
        #   @return [Float]
        required :value, Float

        # @!parse
        #   # @param credit_type [Metronome::Models::CreditTypeData]
        #   #
        #   # @param name [String]
        #   #
        #   # @param start_period [Float] Used in price ramps. Indicates how many billing periods pass before the charge
        #   #   applies.
        #   #
        #   # @param value [Float]
        #   #
        #   def initialize(credit_type:, name:, start_period:, value:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      class OverageRate < Metronome::BaseModel
        # @!attribute credit_type
        #
        #   @return [Metronome::Models::CreditTypeData]
        required :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute fiat_credit_type
        #
        #   @return [Metronome::Models::CreditTypeData]
        required :fiat_credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute start_period
        #   Used in price ramps.  Indicates how many billing periods pass before the charge applies.
        #
        #   @return [Float]
        required :start_period, Float

        # @!attribute to_fiat_conversion_factor
        #
        #   @return [Float]
        required :to_fiat_conversion_factor, Float

        # @!parse
        #   # @param credit_type [Metronome::Models::CreditTypeData]
        #   #
        #   # @param fiat_credit_type [Metronome::Models::CreditTypeData]
        #   #
        #   # @param start_period [Float] Used in price ramps. Indicates how many billing periods pass before the charge
        #   #   applies.
        #   #
        #   # @param to_fiat_conversion_factor [Float]
        #   #
        #   def initialize(credit_type:, fiat_credit_type:, start_period:, to_fiat_conversion_factor:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
