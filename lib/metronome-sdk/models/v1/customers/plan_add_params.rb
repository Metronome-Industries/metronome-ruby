# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanAddParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

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
          #     at 0:00 UTC (midnight).
          #
          #   @return [Time]
          required :starting_on, Time

          # @!attribute [r] ending_before
          #   RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
          #     at 0:00 UTC (midnight).
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] net_payment_terms_days
          #   Number of days after issuance of invoice after which the invoice is due (e.g.
          #     Net 30).
          #
          #   @return [Float, nil]
          optional :net_payment_terms_days, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :net_payment_terms_days

          # @!attribute [r] overage_rate_adjustments
          #   An optional list of overage rates that override the rates of the original plan
          #     configuration. These new rates will apply to all pricing ramps.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment>, nil]
          optional :overage_rate_adjustments,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment>]
          #   attr_writer :overage_rate_adjustments

          # @!attribute [r] price_adjustments
          #   A list of price adjustments can be applied on top of the pricing in the plans.
          #     See the
          #     [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
          #     for details.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment>, nil]
          optional :price_adjustments,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment>]
          #   attr_writer :price_adjustments

          # @!attribute [r] trial_spec
          #   A custom trial can be set for the customer's plan. See the
          #     [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
          #     for details.
          #
          #   @return [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec, nil]
          optional :trial_spec, -> { MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec]
          #   attr_writer :trial_spec

          # @!parse
          #   # @param customer_id [String]
          #   # @param plan_id [String]
          #   # @param starting_on [Time]
          #   # @param ending_before [Time]
          #   # @param net_payment_terms_days [Float]
          #   # @param overage_rate_adjustments [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment>]
          #   # @param price_adjustments [Array<MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment>]
          #   # @param trial_spec [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     customer_id:,
          #     plan_id:,
          #     starting_on:,
          #     ending_before: nil,
          #     net_payment_terms_days: nil,
          #     overage_rate_adjustments: nil,
          #     price_adjustments: nil,
          #     trial_spec: nil,
          #     request_options: {},
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class OverageRateAdjustment < MetronomeSDK::BaseModel
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

            # @!parse
            #   # @param custom_credit_type_id [String]
            #   # @param fiat_currency_credit_type_id [String]
            #   # @param to_fiat_conversion_factor [Float]
            #   #
            #   def initialize(custom_credit_type_id:, fiat_currency_credit_type_id:, to_fiat_conversion_factor:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class PriceAdjustment < MetronomeSDK::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType]
            required :adjustment_type,
                     enum: -> { MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType }

            # @!attribute charge_id
            #
            #   @return [String]
            required :charge_id, String

            # @!attribute start_period
            #   Used in price ramps. Indicates how many billing periods pass before the charge
            #     applies.
            #
            #   @return [Float]
            required :start_period, Float

            # @!attribute [r] quantity
            #   the overridden quantity for a fixed charge
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :quantity

            # @!attribute [r] tier
            #   Used in pricing tiers. Indicates at what metric value the price applies.
            #
            #   @return [Float, nil]
            optional :tier, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :tier

            # @!attribute [r] value
            #   The amount of change to a price. Percentage and fixed adjustments can be
            #     positive or negative. Percentage-based adjustments should be decimals, e.g.
            #     -0.05 for a 5% discount.
            #
            #   @return [Float, nil]
            optional :value, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :value

            # @!parse
            #   # @param adjustment_type [Symbol, MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType]
            #   # @param charge_id [String]
            #   # @param start_period [Float]
            #   # @param quantity [Float]
            #   # @param tier [Float]
            #   # @param value [Float]
            #   #
            #   def initialize(adjustment_type:, charge_id:, start_period:, quantity: nil, tier: nil, value: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case adjustment_type
            # in :percentage
            #   # ...
            # in :fixed
            #   # ...
            # in :override
            #   # ...
            # in :quantity
            #   # ...
            # end
            # ```
            class AdjustmentType < MetronomeSDK::Enum
              PERCENTAGE = :percentage
              FIXED = :fixed
              OVERRIDE = :override
              QUANTITY = :quantity

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class TrialSpec < MetronomeSDK::BaseModel
            # @!attribute length_in_days
            #   Length of the trial period in days.
            #
            #   @return [Float]
            required :length_in_days, Float

            # @!attribute [r] spending_cap
            #
            #   @return [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap, nil]
            optional :spending_cap, -> { MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap]
            #   attr_writer :spending_cap

            # @!parse
            #   # A custom trial can be set for the customer's plan. See the
            #   #   [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
            #   #   for details.
            #   #
            #   # @param length_in_days [Float]
            #   # @param spending_cap [MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap]
            #   #
            #   def initialize(length_in_days:, spending_cap: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class SpendingCap < MetronomeSDK::BaseModel
              # @!attribute amount
              #   The credit amount in the given denomination based on the credit type, e.g. US
              #     cents.
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute credit_type_id
              #   The credit type ID for the spending cap.
              #
              #   @return [String]
              required :credit_type_id, String

              # @!parse
              #   # @param amount [Float]
              #   # @param credit_type_id [String]
              #   #
              #   def initialize(amount:, credit_type_id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
