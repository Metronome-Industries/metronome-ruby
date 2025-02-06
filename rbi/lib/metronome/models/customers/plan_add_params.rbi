# typed: strong

module Metronome
  module Models
    module Customers
      class PlanAddParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :plan_id

        sig { returns(Time) }
        attr_accessor :starting_on

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig { returns(T.nilable(Float)) }
        attr_reader :net_payment_terms_days

        sig { params(net_payment_terms_days: Float).void }
        attr_writer :net_payment_terms_days

        sig do
          returns(T.nilable(T::Array[Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment]))
        end
        attr_reader :overage_rate_adjustments

        sig do
          params(
            overage_rate_adjustments: T::Array[Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment]
          ).void
        end
        attr_writer :overage_rate_adjustments

        sig { returns(T.nilable(T::Array[Metronome::Models::Customers::PlanAddParams::PriceAdjustment])) }
        attr_reader :price_adjustments

        sig do
          params(price_adjustments: T::Array[Metronome::Models::Customers::PlanAddParams::PriceAdjustment]).void
        end
        attr_writer :price_adjustments

        sig { returns(T.nilable(Metronome::Models::Customers::PlanAddParams::TrialSpec)) }
        attr_reader :trial_spec

        sig { params(trial_spec: Metronome::Models::Customers::PlanAddParams::TrialSpec).void }
        attr_writer :trial_spec

        sig do
          params(
            customer_id: String,
            plan_id: String,
            starting_on: Time,
            ending_before: Time,
            net_payment_terms_days: Float,
            overage_rate_adjustments: T::Array[Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment],
            price_adjustments: T::Array[Metronome::Models::Customers::PlanAddParams::PriceAdjustment],
            trial_spec: Metronome::Models::Customers::PlanAddParams::TrialSpec,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
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
        ); end

        sig do
          override.returns(
            {
              customer_id: String,
              plan_id: String,
              starting_on: Time,
              ending_before: Time,
              net_payment_terms_days: Float,
              overage_rate_adjustments: T::Array[Metronome::Models::Customers::PlanAddParams::OverageRateAdjustment],
              price_adjustments: T::Array[Metronome::Models::Customers::PlanAddParams::PriceAdjustment],
              trial_spec: Metronome::Models::Customers::PlanAddParams::TrialSpec,
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash; end

        class OverageRateAdjustment < Metronome::BaseModel
          sig { returns(String) }
          attr_accessor :custom_credit_type_id

          sig { returns(String) }
          attr_accessor :fiat_currency_credit_type_id

          sig { returns(Float) }
          attr_accessor :to_fiat_conversion_factor

          sig do
            params(
              custom_credit_type_id: String,
              fiat_currency_credit_type_id: String,
              to_fiat_conversion_factor: Float
            ).void
          end
          def initialize(custom_credit_type_id:, fiat_currency_credit_type_id:, to_fiat_conversion_factor:)
          end

          sig do
            override.returns(
              {
                custom_credit_type_id: String,
                fiat_currency_credit_type_id: String,
                to_fiat_conversion_factor: Float
              }
            )
          end
          def to_hash; end
        end

        class PriceAdjustment < Metronome::BaseModel
          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(String) }
          attr_accessor :charge_id

          sig { returns(Float) }
          attr_accessor :start_period

          sig { returns(T.nilable(Float)) }
          attr_reader :quantity

          sig { params(quantity: Float).void }
          attr_writer :quantity

          sig { returns(T.nilable(Float)) }
          attr_reader :tier

          sig { params(tier: Float).void }
          attr_writer :tier

          sig { returns(T.nilable(Float)) }
          attr_reader :value

          sig { params(value: Float).void }
          attr_writer :value

          sig do
            params(
              adjustment_type: Symbol,
              charge_id: String,
              start_period: Float,
              quantity: Float,
              tier: Float,
              value: Float
            ).void
          end
          def initialize(adjustment_type:, charge_id:, start_period:, quantity: nil, tier: nil, value: nil)
          end

          sig do
            override.returns(
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
          def to_hash; end

          class AdjustmentType < Metronome::Enum
            abstract!

            PERCENTAGE = :percentage
            FIXED = :fixed
            OVERRIDE = :override
            QUANTITY = :quantity

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class TrialSpec < Metronome::BaseModel
          sig { returns(Float) }
          attr_accessor :length_in_days

          sig { returns(T.nilable(Metronome::Models::Customers::PlanAddParams::TrialSpec::SpendingCap)) }
          attr_reader :spending_cap

          sig do
            params(spending_cap: Metronome::Models::Customers::PlanAddParams::TrialSpec::SpendingCap).void
          end
          attr_writer :spending_cap

          sig do
            params(
              length_in_days: Float,
              spending_cap: Metronome::Models::Customers::PlanAddParams::TrialSpec::SpendingCap
            ).void
          end
          def initialize(length_in_days:, spending_cap: nil); end

          sig do
            override.returns(
              {
                length_in_days: Float,
                spending_cap: Metronome::Models::Customers::PlanAddParams::TrialSpec::SpendingCap
              }
            )
          end
          def to_hash; end

          class SpendingCap < Metronome::BaseModel
            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(String) }
            attr_accessor :credit_type_id

            sig { params(amount: Float, credit_type_id: String).void }
            def initialize(amount:, credit_type_id:); end

            sig { override.returns({amount: Float, credit_type_id: String}) }
            def to_hash; end
          end
        end
      end
    end
  end
end
