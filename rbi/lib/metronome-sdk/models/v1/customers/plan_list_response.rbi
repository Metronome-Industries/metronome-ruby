# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanListResponse < MetronomeSDK::BaseModel
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
          def plan_description
          end

          sig { params(_: String).returns(String) }
          def plan_description=(_)
          end

          sig { returns(String) }
          def plan_id
          end

          sig { params(_: String).returns(String) }
          def plan_id=(_)
          end

          sig { returns(String) }
          def plan_name
          end

          sig { params(_: String).returns(String) }
          def plan_name=(_)
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

          sig { returns(T.nilable(MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo)) }
          def trial_info
          end

          sig do
            params(_: MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo)
              .returns(MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo)
          end
          def trial_info=(_)
          end

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
              trial_info: MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo
            )
              .void
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
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  custom_fields: T::Hash[Symbol, String],
                  plan_description: String,
                  plan_id: String,
                  plan_name: String,
                  starting_on: Time,
                  ending_before: Time,
                  net_payment_terms_days: Float,
                  trial_info: MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo
                }
              )
          end
          def to_hash
          end

          class TrialInfo < MetronomeSDK::BaseModel
            sig { returns(Time) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(T::Array[MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap]) }
            def spending_caps
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap])
                .returns(T::Array[MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap])
            end
            def spending_caps=(_)
            end

            sig do
              params(
                ending_before: Time,
                spending_caps: T::Array[MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap]
              )
                .void
            end
            def initialize(ending_before:, spending_caps:)
            end

            sig do
              override
                .returns(
                  {
                    ending_before: Time,
                    spending_caps: T::Array[MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap]
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

              sig { returns(Float) }
              def amount_remaining
              end

              sig { params(_: Float).returns(Float) }
              def amount_remaining=(_)
              end

              sig { returns(MetronomeSDK::Models::CreditTypeData) }
              def credit_type
              end

              sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
              def credit_type=(_)
              end

              sig { params(amount: Float, amount_remaining: Float, credit_type: MetronomeSDK::Models::CreditTypeData).void }
              def initialize(amount:, amount_remaining:, credit_type:)
              end

              sig do
                override
                  .returns({amount: Float, amount_remaining: Float, credit_type: MetronomeSDK::Models::CreditTypeData})
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
