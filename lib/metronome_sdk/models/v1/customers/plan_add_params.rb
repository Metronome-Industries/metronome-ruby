# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Plans#add
        class PlanAddParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute plan_id
          #
          #   @return [String]
          required :plan_id, String

          # @!attribute starting_on
          #   RFC 3339 timestamp for when the plan becomes active for this customer. Must be
          #   at 0:00 UTC (midnight).
          #
          #   @return [Time]
          required :starting_on, Time

          # @!attribute ending_before
          #   RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
          #   at 0:00 UTC (midnight).
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute net_payment_terms_days
          #   Number of days after issuance of invoice after which the invoice is due (e.g.
          #   Net 30).
          #
          #   @return [Float, nil]
          optional :net_payment_terms_days, Float

          # @!attribute overage_rate_adjustments
          #   An optional list of overage rates that override the rates of the original plan
          #   configuration. These new rates will apply to all pricing ramps.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment>, nil]
          optional :overage_rate_adjustments,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::PlanAddParams::OverageRateAdjustment] }

          # @!attribute price_adjustments
          #   A list of price adjustments can be applied on top of the pricing in the plans.
          #   See the
          #   [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
          #   for details.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment>, nil]
          optional :price_adjustments,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::PlanAddParams::PriceAdjustment] }

          # @!attribute trial_spec
          #   A custom trial can be set for the customer's plan. See the
          #   [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
          #   for details.
          #
          #   @return [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec, nil]
          optional :trial_spec, -> { MetronomeSDK::V1::Customers::PlanAddParams::TrialSpec }

          # @!method initialize(customer_id:, plan_id:, starting_on:, ending_before: nil, net_payment_terms_days: nil, overage_rate_adjustments: nil, price_adjustments: nil, trial_spec: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::PlanAddParams} for more details.
          #
          #   @param customer_id [String]
          #
          #   @param plan_id [String]
          #
          #   @param starting_on [Time] RFC 3339 timestamp for when the plan becomes active for this customer. Must be a
          #
          #   @param ending_before [Time] RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
          #
          #   @param net_payment_terms_days [Float] Number of days after issuance of invoice after which the invoice is due (e.g. Ne
          #
          #   @param overage_rate_adjustments [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment>] An optional list of overage rates that override the rates of the original plan c
          #
          #   @param price_adjustments [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment>] A list of price adjustments can be applied on top of the pricing in the plans. S
          #
          #   @param trial_spec [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec] A custom trial can be set for the customer's plan. See the [trial configuration
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          class OverageRateAdjustment < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute custom_credit_type_id
            #
            #   @return [String]
            required :custom_credit_type_id, String

            # @!attribute fiat_currency_credit_type_id
            #
            #   @return [String]
            required :fiat_currency_credit_type_id, String

            # @!attribute to_fiat_conversion_factor
            #   The overage cost in fiat currency for each credit of the custom credit type.
            #
            #   @return [Float]
            required :to_fiat_conversion_factor, Float

            # @!method initialize(custom_credit_type_id:, fiat_currency_credit_type_id:, to_fiat_conversion_factor:)
            #   @param custom_credit_type_id [String]
            #
            #   @param fiat_currency_credit_type_id [String]
            #
            #   @param to_fiat_conversion_factor [Float] The overage cost in fiat currency for each credit of the custom credit type.
          end

          class PriceAdjustment < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType]
            required :adjustment_type,
                     enum: -> { MetronomeSDK::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType }

            # @!attribute charge_id
            #
            #   @return [String]
            required :charge_id, String

            # @!attribute start_period
            #   Used in price ramps. Indicates how many billing periods pass before the charge
            #   applies.
            #
            #   @return [Float]
            required :start_period, Float

            # @!attribute quantity
            #   the overridden quantity for a fixed charge
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!attribute tier
            #   Used in pricing tiers. Indicates at what metric value the price applies.
            #
            #   @return [Float, nil]
            optional :tier, Float

            # @!attribute value
            #   The amount of change to a price. Percentage and fixed adjustments can be
            #   positive or negative. Percentage-based adjustments should be decimals, e.g.
            #   -0.05 for a 5% discount.
            #
            #   @return [Float, nil]
            optional :value, Float

            # @!method initialize(adjustment_type:, charge_id:, start_period:, quantity: nil, tier: nil, value: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment} for more
            #   details.
            #
            #   @param adjustment_type [Symbol, MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType]
            #
            #   @param charge_id [String]
            #
            #   @param start_period [Float] Used in price ramps. Indicates how many billing periods pass before the charge
            #
            #   @param quantity [Float] the overridden quantity for a fixed charge
            #
            #   @param tier [Float] Used in pricing tiers. Indicates at what metric value the price applies.
            #
            #   @param value [Float] The amount of change to a price. Percentage and fixed adjustments can be positiv

            # @see MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment#adjustment_type
            module AdjustmentType
              extend MetronomeSDK::Internal::Type::Enum

              PERCENTAGE = :percentage
              FIXED = :fixed
              OVERRIDE = :override
              QUANTITY = :quantity

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class TrialSpec < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute length_in_days
            #   Length of the trial period in days.
            #
            #   @return [Float]
            required :length_in_days, Float

            # @!attribute spending_cap
            #
            #   @return [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap, nil]
            optional :spending_cap, -> { MetronomeSDK::V1::Customers::PlanAddParams::TrialSpec::SpendingCap }

            # @!method initialize(length_in_days:, spending_cap: nil)
            #   A custom trial can be set for the customer's plan. See the
            #   [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
            #   for details.
            #
            #   @param length_in_days [Float] Length of the trial period in days.
            #
            #   @param spending_cap [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap]

            # @see MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec#spending_cap
            class SpendingCap < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount
              #   The credit amount in the given denomination based on the credit type, e.g. US
              #   cents.
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute credit_type_id
              #   The credit type ID for the spending cap.
              #
              #   @return [String]
              required :credit_type_id, String

              # @!method initialize(amount:, credit_type_id:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap} for
              #   more details.
              #
              #   @param amount [Float] The credit amount in the given denomination based on the credit type, e.g. US ce
              #
              #   @param credit_type_id [String] The credit type ID for the spending cap.
            end
          end
        end
      end
    end
  end
end
