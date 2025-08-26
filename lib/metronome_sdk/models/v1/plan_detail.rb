# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class PlanDetail < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute custom_fields
        #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @return [Hash{Symbol=>String}]
        required :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute credit_grants
        #
        #   @return [Array<MetronomeSDK::Models::V1::PlanDetail::CreditGrant>, nil]
        optional :credit_grants,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PlanDetail::CreditGrant] }

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute minimums
        #
        #   @return [Array<MetronomeSDK::Models::V1::PlanDetail::Minimum>, nil]
        optional :minimums, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PlanDetail::Minimum] }

        # @!attribute overage_rates
        #
        #   @return [Array<MetronomeSDK::Models::V1::PlanDetail::OverageRate>, nil]
        optional :overage_rates,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PlanDetail::OverageRate] }

        # @!method initialize(id:, custom_fields:, name:, credit_grants: nil, description: nil, minimums: nil, overage_rates: nil)
        #   @param id [String]
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @param name [String]
        #
        #   @param credit_grants [Array<MetronomeSDK::Models::V1::PlanDetail::CreditGrant>]
        #
        #   @param description [String]
        #
        #   @param minimums [Array<MetronomeSDK::Models::V1::PlanDetail::Minimum>]
        #
        #   @param overage_rates [Array<MetronomeSDK::Models::V1::PlanDetail::OverageRate>]

        class CreditGrant < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute amount_granted
          #
          #   @return [Float]
          required :amount_granted, Float

          # @!attribute amount_granted_credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :amount_granted_credit_type, -> { MetronomeSDK::CreditTypeData }

          # @!attribute amount_paid
          #
          #   @return [Float]
          required :amount_paid, Float

          # @!attribute amount_paid_credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :amount_paid_credit_type, -> { MetronomeSDK::CreditTypeData }

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
          required :send_invoice, MetronomeSDK::Internal::Type::Boolean

          # @!attribute reason
          #
          #   @return [String, nil]
          optional :reason, String

          # @!attribute recurrence_duration
          #
          #   @return [Float, nil]
          optional :recurrence_duration, Float

          # @!attribute recurrence_interval
          #
          #   @return [Float, nil]
          optional :recurrence_interval, Float

          # @!method initialize(amount_granted:, amount_granted_credit_type:, amount_paid:, amount_paid_credit_type:, effective_duration:, name:, priority:, send_invoice:, reason: nil, recurrence_duration: nil, recurrence_interval: nil)
          #   @param amount_granted [Float]
          #   @param amount_granted_credit_type [MetronomeSDK::Models::CreditTypeData]
          #   @param amount_paid [Float]
          #   @param amount_paid_credit_type [MetronomeSDK::Models::CreditTypeData]
          #   @param effective_duration [Float]
          #   @param name [String]
          #   @param priority [String]
          #   @param send_invoice [Boolean]
          #   @param reason [String]
          #   @param recurrence_duration [Float]
          #   @param recurrence_interval [Float]
        end

        class Minimum < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :credit_type, -> { MetronomeSDK::CreditTypeData }

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute start_period
          #   Used in price ramps. Indicates how many billing periods pass before the charge
          #   applies.
          #
          #   @return [Float]
          required :start_period, Float

          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!method initialize(credit_type:, name:, start_period:, value:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PlanDetail::Minimum} for more details.
          #
          #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
          #
          #   @param name [String]
          #
          #   @param start_period [Float] Used in price ramps. Indicates how many billing periods pass before the charge
          #
          #   @param value [Float]
        end

        class OverageRate < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :credit_type, -> { MetronomeSDK::CreditTypeData }

          # @!attribute fiat_credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :fiat_credit_type, -> { MetronomeSDK::CreditTypeData }

          # @!attribute start_period
          #   Used in price ramps. Indicates how many billing periods pass before the charge
          #   applies.
          #
          #   @return [Float]
          required :start_period, Float

          # @!attribute to_fiat_conversion_factor
          #
          #   @return [Float]
          required :to_fiat_conversion_factor, Float

          # @!method initialize(credit_type:, fiat_credit_type:, start_period:, to_fiat_conversion_factor:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PlanDetail::OverageRate} for more details.
          #
          #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
          #
          #   @param fiat_credit_type [MetronomeSDK::Models::CreditTypeData]
          #
          #   @param start_period [Float] Used in price ramps. Indicates how many billing periods pass before the charge
          #
          #   @param to_fiat_conversion_factor [Float]
        end
      end
    end
  end
end
