# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class PlanAddParams < Metronome::BaseModel
        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] plan_id
        #   @return [String]
        required :plan_id, String

        # @!attribute [rw] starting_on
        #   RFC 3339 timestamp for when the plan becomes active for this customer. Must be at 0:00 UTC (midnight).
        #   @return [Time]
        required :starting_on, Time

        # @!attribute [rw] ending_before
        #   RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be at 0:00 UTC (midnight).
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute [rw] net_payment_terms_days
        #   Number of days after issuance of invoice after which the invoice is due (e.g. Net 30).
        #   @return [Float]
        optional :net_payment_terms_days, Float

        # @!attribute [rw] overage_rate_adjustments
        #   An optional list of overage rates that override the rates of the original plan configuration. These new rates will apply to all pricing ramps.
        #   @return [Array<Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment>]
        optional :overage_rate_adjustments,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment
                   }
                 )

        # @!attribute [rw] price_adjustments
        #   A list of price adjustments can be applied on top of the pricing in the plans. See the [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments) for details.
        #   @return [Array<Metronome::Models::Customers::PlanAddParams::PriceAdjustment>]
        optional :price_adjustments,
                 Metronome::ArrayOf.new(-> { Metronome::Models::Customers::PlanAddParams::PriceAdjustment })

        # @!attribute [rw] trial_spec
        #   A custom trial can be set for the customer's plan. See the [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/) for details.
        #   @return [Metronome::Models::Customers::PlanAddParams::TrialSpec]
        optional :trial_spec, -> { Metronome::Models::Customers::PlanAddParams::TrialSpec }

        class OverageRateAdjustment < Metronome::BaseModel
          # @!attribute [rw] custom_credit_type_id
          #   @return [String]
          required :custom_credit_type_id, String

          # @!attribute [rw] fiat_currency_credit_type_id
          #   @return [String]
          required :fiat_currency_credit_type_id, String

          # @!attribute [rw] to_fiat_conversion_factor
          #   The overage cost in fiat currency for each credit of the custom credit type.
          #   @return [Float]
          required :to_fiat_conversion_factor, Float

          # @!parse
          #   # Create a new instance of OverageRateAdjustment from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :custom_credit_type_id
          #   #   @option data [String] :fiat_currency_credit_type_id
          #   #   @option data [Float] :to_fiat_conversion_factor The overage cost in fiat currency for each credit of the custom credit type.
          #   def initialize(data = {}) = super
        end

        class PriceAdjustment < Metronome::BaseModel
          # @!attribute [rw] adjustment_type
          #   @return [Symbol, Metronome::Models::Customers::PlanAddParams::PriceAdjustment::AdjustmentType]
          required :adjustment_type,
                   enum: -> { Metronome::Models::Customers::PlanAddParams::PriceAdjustment::AdjustmentType }

          # @!attribute [rw] charge_id
          #   @return [String]
          required :charge_id, String

          # @!attribute [rw] start_period
          #   Used in price ramps.  Indicates how many billing periods pass before the charge applies.
          #   @return [Float]
          required :start_period, Float

          # @!attribute [rw] quantity
          #   the overridden quantity for a fixed charge
          #   @return [Float]
          optional :quantity, Float

          # @!attribute [rw] tier
          #   Used in pricing tiers.  Indicates at what metric value the price applies.
          #   @return [Float]
          optional :tier, Float

          # @!attribute [rw] value
          #   The amount of change to a price. Percentage and fixed adjustments can be positive or negative. Percentage-based adjustments should be decimals, e.g. -0.05 for a 5% discount.
          #   @return [Float]
          optional :value, Float

          class AdjustmentType < Metronome::Enum
            PERCENTAGE = :percentage
            FIXED = :fixed
            OVERRIDE = :override
            QUANTITY = :quantity
          end

          # @!parse
          #   # Create a new instance of PriceAdjustment from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :adjustment_type
          #   #   @option data [String] :charge_id
          #   #   @option data [Float] :start_period Used in price ramps. Indicates how many billing periods pass before the charge
          #   #     applies.
          #   #   @option data [Float, nil] :quantity the overridden quantity for a fixed charge
          #   #   @option data [Float, nil] :tier Used in pricing tiers. Indicates at what metric value the price applies.
          #   #   @option data [Float, nil] :value The amount of change to a price. Percentage and fixed adjustments can be
          #   #     positive or negative. Percentage-based adjustments should be decimals, e.g.
          #   #     -0.05 for a 5% discount.
          #   def initialize(data = {}) = super
        end

        class TrialSpec < Metronome::BaseModel
          # @!attribute [rw] length_in_days
          #   Length of the trial period in days.
          #   @return [Float]
          required :length_in_days, Float

          # @!attribute [rw] spending_cap
          #   @return [Metronome::Models::Customers::PlanAddParams::TrialSpec::SpendingCap]
          optional :spending_cap, -> { Metronome::Models::Customers::PlanAddParams::TrialSpec::SpendingCap }

          class SpendingCap < Metronome::BaseModel
            # @!attribute [rw] amount
            #   The credit amount in the given denomination based on the credit type, e.g. US cents.
            #   @return [Float]
            required :amount, Float

            # @!attribute [rw] credit_type_id
            #   The credit type ID for the spending cap.
            #   @return [String]
            required :credit_type_id, String

            # @!parse
            #   # Create a new instance of SpendingCap from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Float] :amount The credit amount in the given denomination based on the credit type, e.g. US
            #   #     cents.
            #   #   @option data [String] :credit_type_id The credit type ID for the spending cap.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of TrialSpec from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Float] :length_in_days Length of the trial period in days.
          #   #   @option data [Object, nil] :spending_cap
          #   def initialize(data = {}) = super
        end
      end
    end
  end
end
