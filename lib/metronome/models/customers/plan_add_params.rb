# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class PlanAddParams < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute plan_id
        #
        #   @return [String]
        required :plan_id, String

        # @!attribute starting_on
        #   RFC 3339 timestamp for when the plan becomes active for this customer. Must be at 0:00 UTC (midnight).
        #
        #   @return [Time]
        required :starting_on, Time

        # @!attribute ending_before
        #   RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be at 0:00 UTC (midnight).
        #
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute net_payment_terms_days
        #   Number of days after issuance of invoice after which the invoice is due (e.g. Net 30).
        #
        #   @return [Float]
        optional :net_payment_terms_days, Float

        # @!attribute overage_rate_adjustments
        #   An optional list of overage rates that override the rates of the original plan configuration. These new rates will apply to all pricing ramps.
        #
        #   @return [Array<Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment>]
        optional :overage_rate_adjustments,
                 Metronome::ArrayOf[-> { Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment }]

        # @!attribute price_adjustments
        #   A list of price adjustments can be applied on top of the pricing in the plans. See the [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments) for details.
        #
        #   @return [Array<Metronome::Models::Customers::PlanAddParams::PriceAdjustment>]
        optional :price_adjustments,
                 Metronome::ArrayOf[-> { Metronome::Models::Customers::PlanAddParams::PriceAdjustment }]

        # @!attribute trial_spec
        #   A custom trial can be set for the customer's plan. See the [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/) for details.
        #
        #   @return [Metronome::Models::Customers::PlanAddParams::TrialSpec]
        optional :trial_spec, -> { Metronome::Models::Customers::PlanAddParams::TrialSpec }

        # @!parse
        #   # @param customer_id [String]
        #   #
        #   # @param plan_id [String]
        #   #
        #   # @param starting_on [String] RFC 3339 timestamp for when the plan becomes active for this customer. Must be
        #   #   at 0:00 UTC (midnight).
        #   #
        #   # @param ending_before [String, nil] RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
        #   #   at 0:00 UTC (midnight).
        #   #
        #   # @param net_payment_terms_days [Float, nil] Number of days after issuance of invoice after which the invoice is due (e.g.
        #   #   Net 30).
        #   #
        #   # @param overage_rate_adjustments [Array<Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment>, nil] An optional list of overage rates that override the rates of the original plan
        #   #   configuration. These new rates will apply to all pricing ramps.
        #   #
        #   # @param price_adjustments [Array<Metronome::Models::Customers::PlanAddParams::PriceAdjustment>, nil] A list of price adjustments can be applied on top of the pricing in the plans.
        #   #   See the
        #   #   [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
        #   #   for details.
        #   #
        #   # @param trial_spec [Metronome::Models::Customers::PlanAddParams::TrialSpec, nil] A custom trial can be set for the customer's plan. See the
        #   #   [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
        #   #   for details.
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
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class OverageRateAdjustment < Metronome::BaseModel
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
          #   #
          #   # @param fiat_currency_credit_type_id [String]
          #   #
          #   # @param to_fiat_conversion_factor [Float] The overage cost in fiat currency for each credit of the custom credit type.
          #   #
          #   def initialize(custom_credit_type_id:, fiat_currency_credit_type_id:, to_fiat_conversion_factor:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        class PriceAdjustment < Metronome::BaseModel
          # @!attribute adjustment_type
          #
          #   @return [Symbol, Metronome::Models::Customers::PlanAddParams::PriceAdjustment::AdjustmentType]
          required :adjustment_type,
                   enum: -> { Metronome::Models::Customers::PlanAddParams::PriceAdjustment::AdjustmentType }

          # @!attribute charge_id
          #
          #   @return [String]
          required :charge_id, String

          # @!attribute start_period
          #   Used in price ramps.  Indicates how many billing periods pass before the charge applies.
          #
          #   @return [Float]
          required :start_period, Float

          # @!attribute quantity
          #   the overridden quantity for a fixed charge
          #
          #   @return [Float]
          optional :quantity, Float

          # @!attribute tier
          #   Used in pricing tiers.  Indicates at what metric value the price applies.
          #
          #   @return [Float]
          optional :tier, Float

          # @!attribute value
          #   The amount of change to a price. Percentage and fixed adjustments can be positive or negative. Percentage-based adjustments should be decimals, e.g. -0.05 for a 5% discount.
          #
          #   @return [Float]
          optional :value, Float

          # @!parse
          #   # @param adjustment_type [String]
          #   #
          #   # @param charge_id [String]
          #   #
          #   # @param start_period [Float] Used in price ramps. Indicates how many billing periods pass before the charge
          #   #   applies.
          #   #
          #   # @param quantity [Float, nil] the overridden quantity for a fixed charge
          #   #
          #   # @param tier [Float, nil] Used in pricing tiers. Indicates at what metric value the price applies.
          #   #
          #   # @param value [Float, nil] The amount of change to a price. Percentage and fixed adjustments can be
          #   #   positive or negative. Percentage-based adjustments should be decimals, e.g.
          #   #   -0.05 for a 5% discount.
          #   #
          #   def initialize(adjustment_type:, charge_id:, start_period:, quantity: nil, tier: nil, value: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
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
          class AdjustmentType < Metronome::Enum
            PERCENTAGE = :percentage
            FIXED = :fixed
            OVERRIDE = :override
            QUANTITY = :quantity

            finalize!
          end
        end

        class TrialSpec < Metronome::BaseModel
          # @!attribute length_in_days
          #   Length of the trial period in days.
          #
          #   @return [Float]
          required :length_in_days, Float

          # @!attribute spending_cap
          #
          #   @return [Metronome::Models::Customers::PlanAddParams::TrialSpec::SpendingCap]
          optional :spending_cap, -> { Metronome::Models::Customers::PlanAddParams::TrialSpec::SpendingCap }

          # @!parse
          #   # A custom trial can be set for the customer's plan. See the
          #   #   [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
          #   #   for details.
          #   #
          #   # @param length_in_days [Float] Length of the trial period in days.
          #   #
          #   # @param spending_cap [Metronome::Models::Customers::PlanAddParams::TrialSpec::SpendingCap, nil]
          #   #
          #   def initialize(length_in_days:, spending_cap: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class SpendingCap < Metronome::BaseModel
            # @!attribute amount
            #   The credit amount in the given denomination based on the credit type, e.g. US cents.
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute credit_type_id
            #   The credit type ID for the spending cap.
            #
            #   @return [String]
            required :credit_type_id, String

            # @!parse
            #   # @param amount [Float] The credit amount in the given denomination based on the credit type, e.g. US
            #   #   cents.
            #   #
            #   # @param credit_type_id [String] The credit type ID for the spending cap.
            #   #
            #   def initialize(amount:, credit_type_id:, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end
      end
    end
  end
end
