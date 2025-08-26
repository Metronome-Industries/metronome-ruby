# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanListResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::Customers::PlanListResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # the ID of the customer plan
          sig { returns(String) }
          attr_accessor :id

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :custom_fields

          sig { returns(String) }
          attr_accessor :plan_description

          # the ID of the plan
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

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo
              )
            )
          end
          attr_reader :trial_info

          sig do
            params(
              trial_info:
                MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::OrHash
            ).void
          end
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
              trial_info:
                MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # the ID of the customer plan
            id:,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields:,
            plan_description:,
            # the ID of the plan
            plan_id:,
            plan_name:,
            starting_on:,
            ending_before: nil,
            net_payment_terms_days: nil,
            trial_info: nil
          )
          end

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
                trial_info:
                  MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo
              }
            )
          end
          def to_hash
          end

          class TrialInfo < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :ending_before

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap
                ]
              )
            end
            attr_accessor :spending_caps

            sig do
              params(
                ending_before: Time,
                spending_caps:
                  T::Array[
                    MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(ending_before:, spending_caps:)
            end

            sig do
              override.returns(
                {
                  ending_before: Time,
                  spending_caps:
                    T::Array[
                      MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap
                    ]
                }
              )
            end
            def to_hash
            end

            class SpendingCap < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :amount

              sig { returns(Float) }
              attr_accessor :amount_remaining

              sig do
                returns(
                  MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap::CreditType
                )
              end
              attr_reader :credit_type

              sig do
                params(
                  credit_type:
                    MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap::CreditType::OrHash
                ).void
              end
              attr_writer :credit_type

              sig do
                params(
                  amount: Float,
                  amount_remaining: Float,
                  credit_type:
                    MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap::CreditType::OrHash
                ).returns(T.attached_class)
              end
              def self.new(amount:, amount_remaining:, credit_type:)
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    amount_remaining: Float,
                    credit_type:
                      MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap::CreditType
                  }
                )
              end
              def to_hash
              end

              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::Customers::PlanListResponse::TrialInfo::SpendingCap::CreditType,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(String) }
                attr_accessor :name

                sig do
                  params(id: String, name: String).returns(T.attached_class)
                end
                def self.new(id:, name:)
                end

                sig { override.returns({ id: String, name: String }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
