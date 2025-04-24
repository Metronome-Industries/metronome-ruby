# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class PlanDetail < MetronomeSDK::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}]
        required :custom_fields, MetronomeSDK::HashOf[String]

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute [r] credit_grants
        #
        #   @return [Array<MetronomeSDK::Models::V1::PlanDetail::CreditGrant>, nil]
        optional :credit_grants, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::PlanDetail::CreditGrant] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::PlanDetail::CreditGrant>]
        #   attr_writer :credit_grants

        # @!attribute [r] description
        #
        #   @return [String, nil]
        optional :description, String

        # @!parse
        #   # @return [String]
        #   attr_writer :description

        # @!attribute [r] minimums
        #
        #   @return [Array<MetronomeSDK::Models::V1::PlanDetail::Minimum>, nil]
        optional :minimums, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::PlanDetail::Minimum] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::PlanDetail::Minimum>]
        #   attr_writer :minimums

        # @!attribute [r] overage_rates
        #
        #   @return [Array<MetronomeSDK::Models::V1::PlanDetail::OverageRate>, nil]
        optional :overage_rates, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::PlanDetail::OverageRate] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::PlanDetail::OverageRate>]
        #   attr_writer :overage_rates

        # @!parse
        #   # @param id [String]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param name [String]
        #   # @param credit_grants [Array<MetronomeSDK::Models::V1::PlanDetail::CreditGrant>]
        #   # @param description [String]
        #   # @param minimums [Array<MetronomeSDK::Models::V1::PlanDetail::Minimum>]
        #   # @param overage_rates [Array<MetronomeSDK::Models::V1::PlanDetail::OverageRate>]
        #   #
        #   def initialize(id:, custom_fields:, name:, credit_grants: nil, description: nil, minimums: nil, overage_rates: nil, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class CreditGrant < MetronomeSDK::BaseModel
          # @!attribute amount_granted
          #
          #   @return [Float]
          required :amount_granted, Float

          # @!attribute amount_granted_credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :amount_granted_credit_type, -> { MetronomeSDK::Models::CreditTypeData }

          # @!attribute amount_paid
          #
          #   @return [Float]
          required :amount_paid, Float

          # @!attribute amount_paid_credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :amount_paid_credit_type, -> { MetronomeSDK::Models::CreditTypeData }

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
          required :send_invoice, MetronomeSDK::BooleanModel

          # @!attribute [r] reason
          #
          #   @return [String, nil]
          optional :reason, String

          # @!parse
          #   # @return [String]
          #   attr_writer :reason

          # @!attribute [r] recurrence_duration
          #
          #   @return [Float, nil]
          optional :recurrence_duration, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :recurrence_duration

          # @!attribute [r] recurrence_interval
          #
          #   @return [Float, nil]
          optional :recurrence_interval, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :recurrence_interval

          # @!parse
          #   # @param amount_granted [Float]
          #   # @param amount_granted_credit_type [MetronomeSDK::Models::CreditTypeData]
          #   # @param amount_paid [Float]
          #   # @param amount_paid_credit_type [MetronomeSDK::Models::CreditTypeData]
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

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class Minimum < MetronomeSDK::BaseModel
          # @!attribute credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute start_period
          #   Used in price ramps. Indicates how many billing periods pass before the charge
          #     applies.
          #
          #   @return [Float]
          required :start_period, Float

          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!parse
          #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
          #   # @param name [String]
          #   # @param start_period [Float]
          #   # @param value [Float]
          #   #
          #   def initialize(credit_type:, name:, start_period:, value:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class OverageRate < MetronomeSDK::BaseModel
          # @!attribute credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

          # @!attribute fiat_credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :fiat_credit_type, -> { MetronomeSDK::Models::CreditTypeData }

          # @!attribute start_period
          #   Used in price ramps. Indicates how many billing periods pass before the charge
          #     applies.
          #
          #   @return [Float]
          required :start_period, Float

          # @!attribute to_fiat_conversion_factor
          #
          #   @return [Float]
          required :to_fiat_conversion_factor, Float

          # @!parse
          #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
          #   # @param fiat_credit_type [MetronomeSDK::Models::CreditTypeData]
          #   # @param start_period [Float]
          #   # @param to_fiat_conversion_factor [Float]
          #   #
          #   def initialize(credit_type:, fiat_credit_type:, start_period:, to_fiat_conversion_factor:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
