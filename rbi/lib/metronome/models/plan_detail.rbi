# typed: strong

module Metronome
  module Models
    class PlanDetail < Metronome::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          custom_fields: T::Hash[Symbol, String],
          name: String,
          credit_grants: T::Array[Metronome::Models::PlanDetail::CreditGrant],
          description: String,
          minimums: T::Array[Metronome::Models::PlanDetail::Minimum],
          overage_rates: T::Array[Metronome::Models::PlanDetail::OverageRate]
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :custom_fields

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[Metronome::Models::PlanDetail::CreditGrant]) }
      attr_reader :credit_grants

      sig { params(credit_grants: T::Array[Metronome::Models::PlanDetail::CreditGrant]).void }
      attr_writer :credit_grants

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T::Array[Metronome::Models::PlanDetail::Minimum]) }
      attr_reader :minimums

      sig { params(minimums: T::Array[Metronome::Models::PlanDetail::Minimum]).void }
      attr_writer :minimums

      sig { returns(T::Array[Metronome::Models::PlanDetail::OverageRate]) }
      attr_reader :overage_rates

      sig { params(overage_rates: T::Array[Metronome::Models::PlanDetail::OverageRate]).void }
      attr_writer :overage_rates

      sig do
        params(
          id: String,
          custom_fields: T::Hash[Symbol, String],
          name: String,
          credit_grants: T::Array[Metronome::Models::PlanDetail::CreditGrant],
          description: String,
          minimums: T::Array[Metronome::Models::PlanDetail::Minimum],
          overage_rates: T::Array[Metronome::Models::PlanDetail::OverageRate]
        ).void
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

      sig { returns(Metronome::Models::PlanDetail::Shape) }
      def to_h; end

      class CreditGrant < Metronome::BaseModel
        Shape = T.type_alias do
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
        end

        sig { returns(Float) }
        attr_accessor :amount_granted

        sig { returns(Metronome::Models::CreditTypeData) }
        attr_accessor :amount_granted_credit_type

        sig { returns(Float) }
        attr_accessor :amount_paid

        sig { returns(Metronome::Models::CreditTypeData) }
        attr_accessor :amount_paid_credit_type

        sig { returns(Float) }
        attr_accessor :effective_duration

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :priority

        sig { returns(T::Boolean) }
        attr_accessor :send_invoice

        sig { returns(T.nilable(String)) }
        attr_reader :reason

        sig { params(reason: String).void }
        attr_writer :reason

        sig { returns(T.nilable(Float)) }
        attr_reader :recurrence_duration

        sig { params(recurrence_duration: Float).void }
        attr_writer :recurrence_duration

        sig { returns(T.nilable(Float)) }
        attr_reader :recurrence_interval

        sig { params(recurrence_interval: Float).void }
        attr_writer :recurrence_interval

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
          ).void
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
        ); end

        sig { returns(Metronome::Models::PlanDetail::CreditGrant::Shape) }
        def to_h; end
      end

      class Minimum < Metronome::BaseModel
        Shape = T.type_alias do
          {credit_type: Metronome::Models::CreditTypeData, name: String, start_period: Float, value: Float}
        end

        sig { returns(Metronome::Models::CreditTypeData) }
        attr_accessor :credit_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Float) }
        attr_accessor :start_period

        sig { returns(Float) }
        attr_accessor :value

        sig do
          params(
            credit_type: Metronome::Models::CreditTypeData,
            name: String,
            start_period: Float,
            value: Float
          ).void
        end
        def initialize(credit_type:, name:, start_period:, value:); end

        sig { returns(Metronome::Models::PlanDetail::Minimum::Shape) }
        def to_h; end
      end

      class OverageRate < Metronome::BaseModel
        Shape = T.type_alias do
          {
            credit_type: Metronome::Models::CreditTypeData,
            fiat_credit_type: Metronome::Models::CreditTypeData,
            start_period: Float,
            to_fiat_conversion_factor: Float
          }
        end

        sig { returns(Metronome::Models::CreditTypeData) }
        attr_accessor :credit_type

        sig { returns(Metronome::Models::CreditTypeData) }
        attr_accessor :fiat_credit_type

        sig { returns(Float) }
        attr_accessor :start_period

        sig { returns(Float) }
        attr_accessor :to_fiat_conversion_factor

        sig do
          params(
            credit_type: Metronome::Models::CreditTypeData,
            fiat_credit_type: Metronome::Models::CreditTypeData,
            start_period: Float,
            to_fiat_conversion_factor: Float
          ).void
        end
        def initialize(credit_type:, fiat_credit_type:, start_period:, to_fiat_conversion_factor:); end

        sig { returns(Metronome::Models::PlanDetail::OverageRate::Shape) }
        def to_h; end
      end
    end
  end
end
