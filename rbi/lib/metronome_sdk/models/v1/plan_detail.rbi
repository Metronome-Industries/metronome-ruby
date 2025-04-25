# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanDetail < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :custom_fields

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::PlanDetail::CreditGrant])) }
        attr_reader :credit_grants

        sig do
          params(
            credit_grants: T::Array[T.any(MetronomeSDK::Models::V1::PlanDetail::CreditGrant, MetronomeSDK::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :credit_grants

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::PlanDetail::Minimum])) }
        attr_reader :minimums

        sig do
          params(
            minimums: T::Array[T.any(MetronomeSDK::Models::V1::PlanDetail::Minimum, MetronomeSDK::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :minimums

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::PlanDetail::OverageRate])) }
        attr_reader :overage_rates

        sig do
          params(
            overage_rates: T::Array[T.any(MetronomeSDK::Models::V1::PlanDetail::OverageRate, MetronomeSDK::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :overage_rates

        sig do
          params(
            id: String,
            custom_fields: T::Hash[Symbol, String],
            name: String,
            credit_grants: T::Array[T.any(MetronomeSDK::Models::V1::PlanDetail::CreditGrant, MetronomeSDK::Internal::AnyHash)],
            description: String,
            minimums: T::Array[T.any(MetronomeSDK::Models::V1::PlanDetail::Minimum, MetronomeSDK::Internal::AnyHash)],
            overage_rates: T::Array[T.any(MetronomeSDK::Models::V1::PlanDetail::OverageRate, MetronomeSDK::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                credit_grants: T::Array[MetronomeSDK::Models::V1::PlanDetail::CreditGrant],
                description: String,
                minimums: T::Array[MetronomeSDK::Models::V1::PlanDetail::Minimum],
                overage_rates: T::Array[MetronomeSDK::Models::V1::PlanDetail::OverageRate]
              }
            )
        end
        def to_hash; end

        class CreditGrant < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(Float) }
          attr_accessor :amount_granted

          sig { returns(MetronomeSDK::Models::CreditTypeData) }
          attr_reader :amount_granted_credit_type

          sig do
            params(
              amount_granted_credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash)
            )
              .void
          end
          attr_writer :amount_granted_credit_type

          sig { returns(Float) }
          attr_accessor :amount_paid

          sig { returns(MetronomeSDK::Models::CreditTypeData) }
          attr_reader :amount_paid_credit_type

          sig do
            params(
              amount_paid_credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash)
            )
              .void
          end
          attr_writer :amount_paid_credit_type

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
              amount_granted_credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash),
              amount_paid: Float,
              amount_paid_credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash),
              effective_duration: Float,
              name: String,
              priority: String,
              send_invoice: T::Boolean,
              reason: String,
              recurrence_duration: Float,
              recurrence_interval: Float
            )
              .returns(T.attached_class)
          end
          def self.new(
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
          sig do
            override
              .returns(
                {
                  amount_granted: Float,
                  amount_granted_credit_type: MetronomeSDK::Models::CreditTypeData,
                  amount_paid: Float,
                  amount_paid_credit_type: MetronomeSDK::Models::CreditTypeData,
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
          def to_hash; end
        end

        class Minimum < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(MetronomeSDK::Models::CreditTypeData) }
          attr_reader :credit_type

          sig { params(credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash)).void }
          attr_writer :credit_type

          sig { returns(String) }
          attr_accessor :name

          # Used in price ramps. Indicates how many billing periods pass before the charge
          # applies.
          sig { returns(Float) }
          attr_accessor :start_period

          sig { returns(Float) }
          attr_accessor :value

          sig do
            params(
              credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash),
              name: String,
              start_period: Float,
              value: Float
            )
              .returns(T.attached_class)
          end
          def self.new(
            credit_type:,
            name:,
            # Used in price ramps. Indicates how many billing periods pass before the charge
            # applies.
            start_period:,
            value:
          ); end
          sig do
            override
              .returns(
                {credit_type: MetronomeSDK::Models::CreditTypeData, name: String, start_period: Float, value: Float}
              )
          end
          def to_hash; end
        end

        class OverageRate < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(MetronomeSDK::Models::CreditTypeData) }
          attr_reader :credit_type

          sig { params(credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash)).void }
          attr_writer :credit_type

          sig { returns(MetronomeSDK::Models::CreditTypeData) }
          attr_reader :fiat_credit_type

          sig do
            params(fiat_credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash)).void
          end
          attr_writer :fiat_credit_type

          # Used in price ramps. Indicates how many billing periods pass before the charge
          # applies.
          sig { returns(Float) }
          attr_accessor :start_period

          sig { returns(Float) }
          attr_accessor :to_fiat_conversion_factor

          sig do
            params(
              credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash),
              fiat_credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash),
              start_period: Float,
              to_fiat_conversion_factor: Float
            )
              .returns(T.attached_class)
          end
          def self.new(
            credit_type:,
            fiat_credit_type:,
            # Used in price ramps. Indicates how many billing periods pass before the charge
            # applies.
            start_period:,
            to_fiat_conversion_factor:
          ); end
          sig do
            override
              .returns(
                {
                  credit_type: MetronomeSDK::Models::CreditTypeData,
                  fiat_credit_type: MetronomeSDK::Models::CreditTypeData,
                  start_period: Float,
                  to_fiat_conversion_factor: Float
                }
              )
          end
          def to_hash; end
        end
      end
    end
  end
end
