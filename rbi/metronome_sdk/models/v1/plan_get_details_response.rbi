# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PlanGetDetailsResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::PlanGetDetailsResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :custom_fields

          sig { returns(String) }
          attr_accessor :name

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant
                ]
              )
            )
          end
          attr_reader :credit_grants

          sig do
            params(
              credit_grants:
                T::Array[
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::OrHash
                ]
            ).void
          end
          attr_writer :credit_grants

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::Minimum
                ]
              )
            )
          end
          attr_reader :minimums

          sig do
            params(
              minimums:
                T::Array[
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::Minimum::OrHash
                ]
            ).void
          end
          attr_writer :minimums

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate
                ]
              )
            )
          end
          attr_reader :overage_rates

          sig do
            params(
              overage_rates:
                T::Array[
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::OrHash
                ]
            ).void
          end
          attr_writer :overage_rates

          sig do
            params(
              id: String,
              custom_fields: T::Hash[Symbol, String],
              name: String,
              credit_grants:
                T::Array[
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::OrHash
                ],
              description: String,
              minimums:
                T::Array[
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::Minimum::OrHash
                ],
              overage_rates:
                T::Array[
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::OrHash
                ]
            ).returns(T.attached_class)
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
            override.returns(
              {
                id: String,
                custom_fields: T::Hash[Symbol, String],
                name: String,
                credit_grants:
                  T::Array[
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant
                  ],
                description: String,
                minimums:
                  T::Array[
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::Minimum
                  ],
                overage_rates:
                  T::Array[
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate
                  ]
              }
            )
          end
          def to_hash
          end

          class CreditGrant < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :amount_granted

            sig do
              returns(
                MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::AmountGrantedCreditType
              )
            end
            attr_reader :amount_granted_credit_type

            sig do
              params(
                amount_granted_credit_type:
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::AmountGrantedCreditType::OrHash
              ).void
            end
            attr_writer :amount_granted_credit_type

            sig { returns(Float) }
            attr_accessor :amount_paid

            sig do
              returns(
                MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::AmountPaidCreditType
              )
            end
            attr_reader :amount_paid_credit_type

            sig do
              params(
                amount_paid_credit_type:
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::AmountPaidCreditType::OrHash
              ).void
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
                amount_granted_credit_type:
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::AmountGrantedCreditType::OrHash,
                amount_paid: Float,
                amount_paid_credit_type:
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::AmountPaidCreditType::OrHash,
                effective_duration: Float,
                name: String,
                priority: String,
                send_invoice: T::Boolean,
                reason: String,
                recurrence_duration: Float,
                recurrence_interval: Float
              ).returns(T.attached_class)
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
            )
            end

            sig do
              override.returns(
                {
                  amount_granted: Float,
                  amount_granted_credit_type:
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::AmountGrantedCreditType,
                  amount_paid: Float,
                  amount_paid_credit_type:
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::AmountPaidCreditType,
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

            class AmountGrantedCreditType < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::AmountGrantedCreditType,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(String) }
              attr_accessor :name

              sig { params(id: String, name: String).returns(T.attached_class) }
              def self.new(id:, name:)
              end

              sig { override.returns({ id: String, name: String }) }
              def to_hash
              end
            end

            class AmountPaidCreditType < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::CreditGrant::AmountPaidCreditType,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(String) }
              attr_accessor :name

              sig { params(id: String, name: String).returns(T.attached_class) }
              def self.new(id:, name:)
              end

              sig { override.returns({ id: String, name: String }) }
              def to_hash
              end
            end
          end

          class Minimum < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::Minimum,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::Minimum::CreditType
              )
            end
            attr_reader :credit_type

            sig do
              params(
                credit_type:
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::Minimum::CreditType::OrHash
              ).void
            end
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
                credit_type:
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::Minimum::CreditType::OrHash,
                name: String,
                start_period: Float,
                value: Float
              ).returns(T.attached_class)
            end
            def self.new(
              credit_type:,
              name:,
              # Used in price ramps. Indicates how many billing periods pass before the charge
              # applies.
              start_period:,
              value:
            )
            end

            sig do
              override.returns(
                {
                  credit_type:
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::Minimum::CreditType,
                  name: String,
                  start_period: Float,
                  value: Float
                }
              )
            end
            def to_hash
            end

            class CreditType < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::Minimum::CreditType,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(String) }
              attr_accessor :name

              sig { params(id: String, name: String).returns(T.attached_class) }
              def self.new(id:, name:)
              end

              sig { override.returns({ id: String, name: String }) }
              def to_hash
              end
            end
          end

          class OverageRate < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::CreditType
              )
            end
            attr_reader :credit_type

            sig do
              params(
                credit_type:
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::CreditType::OrHash
              ).void
            end
            attr_writer :credit_type

            sig do
              returns(
                MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::FiatCreditType
              )
            end
            attr_reader :fiat_credit_type

            sig do
              params(
                fiat_credit_type:
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::FiatCreditType::OrHash
              ).void
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
                credit_type:
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::CreditType::OrHash,
                fiat_credit_type:
                  MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::FiatCreditType::OrHash,
                start_period: Float,
                to_fiat_conversion_factor: Float
              ).returns(T.attached_class)
            end
            def self.new(
              credit_type:,
              fiat_credit_type:,
              # Used in price ramps. Indicates how many billing periods pass before the charge
              # applies.
              start_period:,
              to_fiat_conversion_factor:
            )
            end

            sig do
              override.returns(
                {
                  credit_type:
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::CreditType,
                  fiat_credit_type:
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::FiatCreditType,
                  start_period: Float,
                  to_fiat_conversion_factor: Float
                }
              )
            end
            def to_hash
            end

            class CreditType < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::CreditType,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(String) }
              attr_accessor :name

              sig { params(id: String, name: String).returns(T.attached_class) }
              def self.new(id:, name:)
              end

              sig { override.returns({ id: String, name: String }) }
              def to_hash
              end
            end

            class FiatCreditType < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::PlanGetDetailsResponse::Data::OverageRate::FiatCreditType,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(String) }
              attr_accessor :name

              sig { params(id: String, name: String).returns(T.attached_class) }
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
