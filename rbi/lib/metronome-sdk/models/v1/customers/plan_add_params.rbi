# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanAddParams < MetronomeSDK::BaseModel
          extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig { returns(String) }
          def plan_id
          end

          sig { params(_: String).returns(String) }
          def plan_id=(_)
          end

          sig { returns(Time) }
          def starting_on
          end

          sig { params(_: Time).returns(Time) }
          def starting_on=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
          end

          sig { returns(T.nilable(Float)) }
          def net_payment_terms_days
          end

          sig { params(_: Float).returns(Float) }
          def net_payment_terms_days=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment])) }
          def overage_rate_adjustments
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment])
              .returns(T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment])
          end
          def overage_rate_adjustments=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment])) }
          def price_adjustments
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment])
              .returns(T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment])
          end
          def price_adjustments=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec)) }
          def trial_spec
          end

          sig do
            params(_: MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec)
              .returns(MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec)
          end
          def trial_spec=(_)
          end

          sig do
            params(
              customer_id: String,
              plan_id: String,
              starting_on: Time,
              ending_before: Time,
              net_payment_terms_days: Float,
              overage_rate_adjustments: T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::OverageRateAdjustment],
              price_adjustments: T::Array[MetronomeSDK::Models::V1::Customers::PlanAddParams::PriceAdjustment],
              trial_spec: MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec,
              request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(
            customer_id:,
            plan_id:,
            starting_on:,
            ending_before: nil,
            net_payment_terms_days: nil,
            overage_rate_adjustments: nil,
            price_adjustments: nil,
            trial_spec: nil,
            request_options: {}
          )
          end

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
          def to_hash
          end

          class OverageRateAdjustment < MetronomeSDK::BaseModel
            sig { returns(String) }
            def custom_credit_type_id
            end

            sig { params(_: String).returns(String) }
            def custom_credit_type_id=(_)
            end

            sig { returns(String) }
            def fiat_currency_credit_type_id
            end

            sig { params(_: String).returns(String) }
            def fiat_currency_credit_type_id=(_)
            end

            sig { returns(Float) }
            def to_fiat_conversion_factor
            end

            sig { params(_: Float).returns(Float) }
            def to_fiat_conversion_factor=(_)
            end

            sig do
              params(
                custom_credit_type_id: String,
                fiat_currency_credit_type_id: String,
                to_fiat_conversion_factor: Float
              )
                .void
            end
            def initialize(custom_credit_type_id:, fiat_currency_credit_type_id:, to_fiat_conversion_factor:)
            end

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
            def to_hash
            end
          end

          class PriceAdjustment < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(String) }
            def charge_id
            end

            sig { params(_: String).returns(String) }
            def charge_id=(_)
            end

            sig { returns(Float) }
            def start_period
            end

            sig { params(_: Float).returns(Float) }
            def start_period=(_)
            end

            sig { returns(T.nilable(Float)) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(T.nilable(Float)) }
            def tier
            end

            sig { params(_: Float).returns(Float) }
            def tier=(_)
            end

            sig { returns(T.nilable(Float)) }
            def value
            end

            sig { params(_: Float).returns(Float) }
            def value=(_)
            end

            sig do
              params(
                adjustment_type: Symbol,
                charge_id: String,
                start_period: Float,
                quantity: Float,
                tier: Float,
                value: Float
              )
                .void
            end
            def initialize(adjustment_type:, charge_id:, start_period:, quantity: nil, tier: nil, value: nil)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    charge_id: String,
                    start_period: Float,
                    quantity: Float,
                    tier: Float,
                    value: Float
                  }
                )
            end
            def to_hash
            end

            class AdjustmentType < MetronomeSDK::Enum
              abstract!

              PERCENTAGE = :percentage
              FIXED = :fixed
              OVERRIDE = :override
              QUANTITY = :quantity

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class TrialSpec < MetronomeSDK::BaseModel
            sig { returns(Float) }
            def length_in_days
            end

            sig { params(_: Float).returns(Float) }
            def length_in_days=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap)) }
            def spending_cap
            end

            sig do
              params(_: MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap)
                .returns(MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap)
            end
            def spending_cap=(_)
            end

            sig do
              params(
                length_in_days: Float,
                spending_cap: MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap
              )
                .void
            end
            def initialize(length_in_days:, spending_cap: nil)
            end

            sig do
              override
                .returns(
                  {
                    length_in_days: Float,
                    spending_cap: MetronomeSDK::Models::V1::Customers::PlanAddParams::TrialSpec::SpendingCap
                  }
                )
            end
            def to_hash
            end

            class SpendingCap < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def amount
              end

              sig { params(_: Float).returns(Float) }
              def amount=(_)
              end

              sig { returns(String) }
              def credit_type_id
              end

              sig { params(_: String).returns(String) }
              def credit_type_id=(_)
              end

              sig { params(amount: Float, credit_type_id: String).void }
              def initialize(amount:, credit_type_id:)
              end

              sig { override.returns({amount: Float, credit_type_id: String}) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
