# typed: strong

module Metronome
  module Models
    module Customers
      class PlanListResponse < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :custom_fields

        sig { returns(String) }
        attr_accessor :plan_description

        sig { returns(String) }
        attr_accessor :plan_id

        sig { returns(String) }
        attr_accessor :plan_name

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

        sig { returns(T.nilable(Metronome::Models::Customers::PlanListResponse::TrialInfo)) }
        attr_reader :trial_info

        sig { params(trial_info: Metronome::Models::Customers::PlanListResponse::TrialInfo).void }
        attr_writer :trial_info

        sig do
          params(
            id: String,
            custom_fields: T::Hash[Symbol, String],
            plan_description: String,
            plan_id: String,
            plan_name: String,
            starting_on: Time,
            ending_before: Time,
            net_payment_terms_days: Float,
            trial_info: Metronome::Models::Customers::PlanListResponse::TrialInfo
          ).void
        end
        def initialize(
          id:,
          custom_fields:,
          plan_description:,
          plan_id:,
          plan_name:,
          starting_on:,
          ending_before: nil,
          net_payment_terms_days: nil,
          trial_info: nil
        ); end

        sig do
          override.returns(
            {
              id: String,
              custom_fields: T::Hash[Symbol, String],
              plan_description: String,
              plan_id: String,
              plan_name: String,
              starting_on: Time,
              ending_before: Time,
              net_payment_terms_days: Float,
              trial_info: Metronome::Models::Customers::PlanListResponse::TrialInfo
            }
          )
        end
        def to_hash; end

        class TrialInfo < Metronome::BaseModel
          sig { returns(Time) }
          attr_accessor :ending_before

          sig { returns(T::Array[Metronome::Models::Customers::PlanListResponse::TrialInfo::SpendingCap]) }
          attr_accessor :spending_caps

          sig do
            params(
              ending_before: Time,
              spending_caps: T::Array[Metronome::Models::Customers::PlanListResponse::TrialInfo::SpendingCap]
            ).void
          end
          def initialize(ending_before:, spending_caps:); end

          sig do
            override.returns(
              {
                ending_before: Time,
                spending_caps: T::Array[Metronome::Models::Customers::PlanListResponse::TrialInfo::SpendingCap]
              }
            )
          end
          def to_hash; end

          class SpendingCap < Metronome::BaseModel
            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Float) }
            attr_accessor :amount_remaining

            sig { returns(Metronome::Models::CreditTypeData) }
            attr_accessor :credit_type

            sig do
              params(
                amount: Float,
                amount_remaining: Float,
                credit_type: Metronome::Models::CreditTypeData
              ).void
            end
            def initialize(amount:, amount_remaining:, credit_type:); end

            sig do
              override.returns(
                {
                  amount: Float,
                  amount_remaining: Float,
                  credit_type: Metronome::Models::CreditTypeData
                }
              )
            end
            def to_hash; end
          end
        end
      end
    end
  end
end
