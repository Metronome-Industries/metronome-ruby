# typed: strong

module Metronome
  module Models
    class PlanDetail < Metronome::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def custom_fields
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_fields=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::PlanDetail::CreditGrant])) }
      def credit_grants
      end

      sig do
        params(_: T::Array[Metronome::Models::PlanDetail::CreditGrant])
          .returns(T::Array[Metronome::Models::PlanDetail::CreditGrant])
      end
      def credit_grants=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::PlanDetail::Minimum])) }
      def minimums
      end

      sig do
        params(_: T::Array[Metronome::Models::PlanDetail::Minimum])
          .returns(T::Array[Metronome::Models::PlanDetail::Minimum])
      end
      def minimums=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::PlanDetail::OverageRate])) }
      def overage_rates
      end

      sig do
        params(_: T::Array[Metronome::Models::PlanDetail::OverageRate])
          .returns(T::Array[Metronome::Models::PlanDetail::OverageRate])
      end
      def overage_rates=(_)
      end

      sig do
        params(
          id: String,
          custom_fields: T::Hash[Symbol, String],
          name: String,
          credit_grants: T::Array[Metronome::Models::PlanDetail::CreditGrant],
          description: String,
          minimums: T::Array[Metronome::Models::PlanDetail::Minimum],
          overage_rates: T::Array[Metronome::Models::PlanDetail::OverageRate]
        )
          .void
      end
      def initialize(
        id:,
        custom_fields:,
        name:,
        credit_grants: nil,
        description: nil,
        minimums: nil,
        overage_rates: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              custom_fields: T::Hash[Symbol, String],
              name: String,
              credit_grants: T::Array[Metronome::Models::PlanDetail::CreditGrant],
              description: String,
              minimums: T::Array[Metronome::Models::PlanDetail::Minimum],
              overage_rates: T::Array[Metronome::Models::PlanDetail::OverageRate]
            }
          )
      end
      def to_hash
      end

      class CreditGrant < Metronome::BaseModel
        sig { returns(Float) }
        def amount_granted
        end

        sig { params(_: Float).returns(Float) }
        def amount_granted=(_)
        end

        sig { returns(Metronome::Models::CreditTypeData) }
        def amount_granted_credit_type
        end

        sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
        def amount_granted_credit_type=(_)
        end

        sig { returns(Float) }
        def amount_paid
        end

        sig { params(_: Float).returns(Float) }
        def amount_paid=(_)
        end

        sig { returns(Metronome::Models::CreditTypeData) }
        def amount_paid_credit_type
        end

        sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
        def amount_paid_credit_type=(_)
        end

        sig { returns(Float) }
        def effective_duration
        end

        sig { params(_: Float).returns(Float) }
        def effective_duration=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(String) }
        def priority
        end

        sig { params(_: String).returns(String) }
        def priority=(_)
        end

        sig { returns(T::Boolean) }
        def send_invoice
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def send_invoice=(_)
        end

        sig { returns(T.nilable(String)) }
        def reason
        end

        sig { params(_: String).returns(String) }
        def reason=(_)
        end

        sig { returns(T.nilable(Float)) }
        def recurrence_duration
        end

        sig { params(_: Float).returns(Float) }
        def recurrence_duration=(_)
        end

        sig { returns(T.nilable(Float)) }
        def recurrence_interval
        end

        sig { params(_: Float).returns(Float) }
        def recurrence_interval=(_)
        end

        sig do
          params(
            amount_granted: Float,
            amount_granted_credit_type: Metronome::Models::CreditTypeData,
            amount_paid: Float,
            amount_paid_credit_type: Metronome::Models::CreditTypeData,
            effective_duration: Float,
            name: String,
            priority: String,
            send_invoice: T::Boolean,
            reason: String,
            recurrence_duration: Float,
            recurrence_interval: Float
          )
            .void
        end
        def initialize(
          amount_granted:,
          amount_granted_credit_type:,
          amount_paid:,
          amount_paid_credit_type:,
          effective_duration:,
          name:,
          priority:,
          send_invoice:,
          reason: nil,
          recurrence_duration: nil,
          recurrence_interval: nil
        )
        end

        sig do
          override
            .returns(
              {
                amount_granted: Float,
                amount_granted_credit_type: Metronome::Models::CreditTypeData,
                amount_paid: Float,
                amount_paid_credit_type: Metronome::Models::CreditTypeData,
                effective_duration: Float,
                name: String,
                priority: String,
                send_invoice: T::Boolean,
                reason: String,
                recurrence_duration: Float,
                recurrence_interval: Float
              }
            )
        end
        def to_hash
        end
      end

      class Minimum < Metronome::BaseModel
        sig { returns(Metronome::Models::CreditTypeData) }
        def credit_type
        end

        sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
        def credit_type=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(Float) }
        def start_period
        end

        sig { params(_: Float).returns(Float) }
        def start_period=(_)
        end

        sig { returns(Float) }
        def value
        end

        sig { params(_: Float).returns(Float) }
        def value=(_)
        end

        sig do
          params(credit_type: Metronome::Models::CreditTypeData, name: String, start_period: Float, value: Float)
            .void
        end
        def initialize(credit_type:, name:, start_period:, value:)
        end

        sig do
          override
            .returns({credit_type: Metronome::Models::CreditTypeData, name: String, start_period: Float, value: Float})
        end
        def to_hash
        end
      end

      class OverageRate < Metronome::BaseModel
        sig { returns(Metronome::Models::CreditTypeData) }
        def credit_type
        end

        sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
        def credit_type=(_)
        end

        sig { returns(Metronome::Models::CreditTypeData) }
        def fiat_credit_type
        end

        sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
        def fiat_credit_type=(_)
        end

        sig { returns(Float) }
        def start_period
        end

        sig { params(_: Float).returns(Float) }
        def start_period=(_)
        end

        sig { returns(Float) }
        def to_fiat_conversion_factor
        end

        sig { params(_: Float).returns(Float) }
        def to_fiat_conversion_factor=(_)
        end

        sig do
          params(
            credit_type: Metronome::Models::CreditTypeData,
            fiat_credit_type: Metronome::Models::CreditTypeData,
            start_period: Float,
            to_fiat_conversion_factor: Float
          )
            .void
        end
        def initialize(credit_type:, fiat_credit_type:, start_period:, to_fiat_conversion_factor:)
        end

        sig do
          override
            .returns(
              {
                credit_type: Metronome::Models::CreditTypeData,
                fiat_credit_type: Metronome::Models::CreditTypeData,
                start_period: Float,
                to_fiat_conversion_factor: Float
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
