# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanAddParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(String) }
          attr_accessor :plan_id

          # RFC 3339 timestamp for when the plan becomes active for this customer. Must be
          # at 0:00 UTC (midnight).
          sig { returns(Time) }
          attr_accessor :starting_on

          # RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
          # at 0:00 UTC (midnight).
          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          # Number of days after issuance of invoice after which the invoice is due (e.g.
          # Net 30).
          sig { returns(T.nilable(Float)) }
          attr_reader :net_payment_terms_days

          sig { params(net_payment_terms_days: Float).void }
          attr_writer :net_payment_terms_days

          # An optional list of overage rates that override the rates of the original plan
          # configuration. These new rates will apply to all pricing ramps.
          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment])) }
          attr_reader :overage_rate_adjustments

          sig do
            params(
              overage_rate_adjustments: T::Array[
                T.any(
                  MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .void
          end
          attr_writer :overage_rate_adjustments

          # A list of price adjustments can be applied on top of the pricing in the plans.
          # See the
          # [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
          # for details.
          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment])) }
          attr_reader :price_adjustments

          sig do
            params(
              price_adjustments: T::Array[
                T.any(
                  MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment,
                  MetronomeSDK::Internal::AnyHash
                )
              ]
            )
              .void
          end
          attr_writer :price_adjustments

          # A custom trial can be set for the customer's plan. See the
          # [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
          # for details.
          sig { returns(T.nilable(MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec)) }
          attr_reader :trial_spec

          sig do
            params(
              trial_spec: T.any(MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec, MetronomeSDK::Internal::AnyHash)
            )
              .void
          end
          attr_writer :trial_spec

          sig do
            params(
              customer_id: String,
              plan_id: String,
              starting_on: Time,
              ending_before: Time,
              net_payment_terms_days: Float,
              overage_rate_adjustments: T::Array[
                T.any(
                  MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment,
                  MetronomeSDK::Internal::AnyHash
                )
              ],
              price_adjustments: T::Array[
                T.any(
                  MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment,
                  MetronomeSDK::Internal::AnyHash
                )
              ],
              trial_spec: T.any(MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec, MetronomeSDK::Internal::AnyHash),
              request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(
            customer_id:,
            plan_id:,
            # RFC 3339 timestamp for when the plan becomes active for this customer. Must be
            # at 0:00 UTC (midnight).
            starting_on:,
            # RFC 3339 timestamp for when the plan ends (exclusive) for this customer. Must be
            # at 0:00 UTC (midnight).
            ending_before: nil,
            # Number of days after issuance of invoice after which the invoice is due (e.g.
            # Net 30).
            net_payment_terms_days: nil,
            # An optional list of overage rates that override the rates of the original plan
            # configuration. These new rates will apply to all pricing ramps.
            overage_rate_adjustments: nil,
            # A list of price adjustments can be applied on top of the pricing in the plans.
            # See the
            # [price adjustments documentation](https://plans-docs.metronome.com/pricing/managing-plans/#price-adjustments)
            # for details.
            price_adjustments: nil,
            # A custom trial can be set for the customer's plan. See the
            # [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
            # for details.
            trial_spec: nil,
            request_options: {}
          ); end
          sig do
            override
              .returns(
                {
                  customer_id: String,
                  plan_id: String,
                  starting_on: Time,
                  ending_before: Time,
                  net_payment_terms_days: Float,
                  overage_rate_adjustments: T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment],
                  price_adjustments: T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment],
                  trial_spec: MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec,
                  request_options: MetronomeSDK::RequestOptions
                }
              )
          end
          def to_hash; end

          class OverageRateAdjustment < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :custom_credit_type_id

            sig { returns(String) }
            attr_accessor :fiat_currency_credit_type_id

            # The overage cost in fiat currency for each credit of the custom credit type.
            sig { returns(Float) }
            attr_accessor :to_fiat_conversion_factor

            sig do
              params(
                custom_credit_type_id: String,
                fiat_currency_credit_type_id: String,
                to_fiat_conversion_factor: Float
              )
                .returns(T.attached_class)
            end
            def self.new(
              custom_credit_type_id:,
              fiat_currency_credit_type_id:,
              # The overage cost in fiat currency for each credit of the custom credit type.
              to_fiat_conversion_factor:
            ); end
            sig do
              override
                .returns(
                  {
                    custom_credit_type_id: String,
                    fiat_currency_credit_type_id: String,
                    to_fiat_conversion_factor: Float
                  }
                )
            end
            def to_hash; end
          end

          class PriceAdjustment < MetronomeSDK::Internal::Type::BaseModel
            sig { returns(MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType::OrSymbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :charge_id

            # Used in price ramps. Indicates how many billing periods pass before the charge
            # applies.
            sig { returns(Float) }
            attr_accessor :start_period

            # the overridden quantity for a fixed charge
            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            # Used in pricing tiers. Indicates at what metric value the price applies.
            sig { returns(T.nilable(Float)) }
            attr_reader :tier

            sig { params(tier: Float).void }
            attr_writer :tier

            # The amount of change to a price. Percentage and fixed adjustments can be
            # positive or negative. Percentage-based adjustments should be decimals, e.g.
            # -0.05 for a 5% discount.
            sig { returns(T.nilable(Float)) }
            attr_reader :value

            sig { params(value: Float).void }
            attr_writer :value

            sig do
              params(
                adjustment_type: MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType::OrSymbol,
                charge_id: String,
                start_period: Float,
                quantity: Float,
                tier: Float,
                value: Float
              )
                .returns(T.attached_class)
            end
            def self.new(
              adjustment_type:,
              charge_id:,
              # Used in price ramps. Indicates how many billing periods pass before the charge
              # applies.
              start_period:,
              # the overridden quantity for a fixed charge
              quantity: nil,
              # Used in pricing tiers. Indicates at what metric value the price applies.
              tier: nil,
              # The amount of change to a price. Percentage and fixed adjustments can be
              # positive or negative. Percentage-based adjustments should be decimals, e.g.
              # -0.05 for a 5% discount.
              value: nil
            ); end
            sig do
              override
                .returns(
                  {
                    adjustment_type: MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType::OrSymbol,
                    charge_id: String,
                    start_period: Float,
                    quantity: Float,
                    tier: Float,
                    value: Float
                  }
                )
            end
            def to_hash; end

            module AdjustmentType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PERCENTAGE =
                T.let(
                  :percentage,
                  MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType::TaggedSymbol
                )
              FIXED =
                T.let(
                  :fixed,
                  MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType::TaggedSymbol
                )
              OVERRIDE =
                T.let(
                  :override,
                  MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType::TaggedSymbol
                )
              QUANTITY =
                T.let(
                  :quantity,
                  MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment::AdjustmentType::TaggedSymbol]
                  )
              end
              def self.values; end
            end
          end

          class TrialSpec < MetronomeSDK::Internal::Type::BaseModel
            # Length of the trial period in days.
            sig { returns(Float) }
            attr_accessor :length_in_days

            sig { returns(T.nilable(MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap)) }
            attr_reader :spending_cap

            sig do
              params(
                spending_cap: T.any(
                  MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap,
                  MetronomeSDK::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :spending_cap

            # A custom trial can be set for the customer's plan. See the
            # [trial configuration documentation](https://docs.metronome.com/provisioning/configure-trials/)
            # for details.
            sig do
              params(
                length_in_days: Float,
                spending_cap: T.any(
                  MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap,
                  MetronomeSDK::Internal::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(
              # Length of the trial period in days.
              length_in_days:,
              spending_cap: nil
            ); end
            sig do
              override
                .returns(
                  {
                    length_in_days: Float,
                    spending_cap: MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap
                  }
                )
            end
            def to_hash; end

            class SpendingCap < MetronomeSDK::Internal::Type::BaseModel
              # The credit amount in the given denomination based on the credit type, e.g. US
              # cents.
              sig { returns(Float) }
              attr_accessor :amount

              # The credit type ID for the spending cap.
              sig { returns(String) }
              attr_accessor :credit_type_id

              sig { params(amount: Float, credit_type_id: String).returns(T.attached_class) }
              def self.new(
                # The credit amount in the given denomination based on the credit type, e.g. US
                # cents.
                amount:,
                # The credit type ID for the spending cap.
                credit_type_id:
              ); end
              sig { override.returns({amount: Float, credit_type_id: String}) }
              def to_hash; end
            end
          end
        end
      end
    end
  end
end
