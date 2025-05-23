# typed: strong

module MetronomeSDK
  module Models
    module V1
      CustomerAlert = Customers::CustomerAlert

      module Customers
        class CustomerAlert < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Customers::CustomerAlert,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(MetronomeSDK::V1::Customers::CustomerAlert::Alert) }
          attr_reader :alert

          sig do
            params(
              alert: MetronomeSDK::V1::Customers::CustomerAlert::Alert::OrHash
            ).void
          end
          attr_writer :alert

          # The status of the customer alert. If the alert is archived, null will be
          # returned.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus::TaggedSymbol
              )
            )
          end
          attr_accessor :customer_status

          # If present, indicates the reason the alert was triggered.
          sig { returns(T.nilable(String)) }
          attr_accessor :triggered_by

          sig do
            params(
              alert: MetronomeSDK::V1::Customers::CustomerAlert::Alert::OrHash,
              customer_status:
                T.nilable(
                  MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus::OrSymbol
                ),
              triggered_by: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            alert:,
            # The status of the customer alert. If the alert is archived, null will be
            # returned.
            customer_status:,
            # If present, indicates the reason the alert was triggered.
            triggered_by: nil
          )
          end

          sig do
            override.returns(
              {
                alert: MetronomeSDK::V1::Customers::CustomerAlert::Alert,
                customer_status:
                  T.nilable(
                    MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus::TaggedSymbol
                  ),
                triggered_by: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Alert < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # the Metronome ID of the alert
            sig { returns(String) }
            attr_accessor :id

            # Name of the alert
            sig { returns(String) }
            attr_accessor :name

            # Status of the alert
            sig do
              returns(
                MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Threshold value of the alert policy
            sig { returns(Float) }
            attr_accessor :threshold

            # Type of the alert
            sig do
              returns(
                MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # Timestamp for when the alert was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # An array of strings, representing a way to filter the credit grant this alert
            # applies to, by looking at the credit_grant_type field on the credit grant. This
            # field is only defined for CreditPercentage and CreditBalance alerts
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :credit_grant_type_filters

            sig { params(credit_grant_type_filters: T::Array[String]).void }
            attr_writer :credit_grant_type_filters

            sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
            attr_reader :credit_type

            sig do
              params(
                credit_type: T.nilable(MetronomeSDK::CreditTypeData::OrHash)
              ).void
            end
            attr_writer :credit_type

            # A list of custom field filters for alert types that support advanced filtering
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter
                  ]
                )
              )
            end
            attr_reader :custom_field_filters

            sig do
              params(
                custom_field_filters:
                  T::Array[
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::OrHash
                  ]
              ).void
            end
            attr_writer :custom_field_filters

            # Scopes alert evaluation to a specific presentation group key on individual line
            # items. Only present for spend alerts.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::GroupKeyFilter
                )
              )
            end
            attr_reader :group_key_filter

            sig do
              params(
                group_key_filter:
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::GroupKeyFilter::OrHash
              ).void
            end
            attr_writer :group_key_filter

            # Only supported for invoice_total_reached alerts. A list of invoice types to
            # evaluate.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :invoice_types_filter

            sig { params(invoice_types_filter: T::Array[String]).void }
            attr_writer :invoice_types_filter

            # Prevents the creation of duplicates. If a request to create a record is made
            # with a previously used uniqueness key, a new record will not be created and the
            # request will fail with a 409 error.
            sig { returns(T.nilable(String)) }
            attr_reader :uniqueness_key

            sig { params(uniqueness_key: String).void }
            attr_writer :uniqueness_key

            sig do
              params(
                id: String,
                name: String,
                status:
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status::OrSymbol,
                threshold: Float,
                type:
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::OrSymbol,
                updated_at: Time,
                credit_grant_type_filters: T::Array[String],
                credit_type: T.nilable(MetronomeSDK::CreditTypeData::OrHash),
                custom_field_filters:
                  T::Array[
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::OrHash
                  ],
                group_key_filter:
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::GroupKeyFilter::OrHash,
                invoice_types_filter: T::Array[String],
                uniqueness_key: String
              ).returns(T.attached_class)
            end
            def self.new(
              # the Metronome ID of the alert
              id:,
              # Name of the alert
              name:,
              # Status of the alert
              status:,
              # Threshold value of the alert policy
              threshold:,
              # Type of the alert
              type:,
              # Timestamp for when the alert was last updated
              updated_at:,
              # An array of strings, representing a way to filter the credit grant this alert
              # applies to, by looking at the credit_grant_type field on the credit grant. This
              # field is only defined for CreditPercentage and CreditBalance alerts
              credit_grant_type_filters: nil,
              credit_type: nil,
              # A list of custom field filters for alert types that support advanced filtering
              custom_field_filters: nil,
              # Scopes alert evaluation to a specific presentation group key on individual line
              # items. Only present for spend alerts.
              group_key_filter: nil,
              # Only supported for invoice_total_reached alerts. A list of invoice types to
              # evaluate.
              invoice_types_filter: nil,
              # Prevents the creation of duplicates. If a request to create a record is made
              # with a previously used uniqueness key, a new record will not be created and the
              # request will fail with a 409 error.
              uniqueness_key: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  name: String,
                  status:
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status::TaggedSymbol,
                  threshold: Float,
                  type:
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol,
                  updated_at: Time,
                  credit_grant_type_filters: T::Array[String],
                  credit_type: T.nilable(MetronomeSDK::CreditTypeData),
                  custom_field_filters:
                    T::Array[
                      MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter
                    ],
                  group_key_filter:
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::GroupKeyFilter,
                  invoice_types_filter: T::Array[String],
                  uniqueness_key: String
                }
              )
            end
            def to_hash
            end

            # Status of the alert
            module Status
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ENABLED =
                T.let(
                  :enabled,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status::TaggedSymbol
                )
              ARCHIVED =
                T.let(
                  :archived,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status::TaggedSymbol
                )
              DISABLED =
                T.let(
                  :disabled,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Type of the alert
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LOW_CREDIT_BALANCE_REACHED =
                T.let(
                  :low_credit_balance_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              SPEND_THRESHOLD_REACHED =
                T.let(
                  :spend_threshold_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              MONTHLY_INVOICE_TOTAL_SPEND_THRESHOLD_REACHED =
                T.let(
                  :monthly_invoice_total_spend_threshold_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              LOW_REMAINING_DAYS_IN_PLAN_REACHED =
                T.let(
                  :low_remaining_days_in_plan_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              LOW_REMAINING_CREDIT_PERCENTAGE_REACHED =
                T.let(
                  :low_remaining_credit_percentage_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              USAGE_THRESHOLD_REACHED =
                T.let(
                  :usage_threshold_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              LOW_REMAINING_DAYS_FOR_COMMIT_SEGMENT_REACHED =
                T.let(
                  :low_remaining_days_for_commit_segment_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              LOW_REMAINING_COMMIT_BALANCE_REACHED =
                T.let(
                  :low_remaining_commit_balance_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              LOW_REMAINING_COMMIT_PERCENTAGE_REACHED =
                T.let(
                  :low_remaining_commit_percentage_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              LOW_REMAINING_DAYS_FOR_CONTRACT_CREDIT_SEGMENT_REACHED =
                T.let(
                  :low_remaining_days_for_contract_credit_segment_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              LOW_REMAINING_CONTRACT_CREDIT_BALANCE_REACHED =
                T.let(
                  :low_remaining_contract_credit_balance_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              LOW_REMAINING_CONTRACT_CREDIT_PERCENTAGE_REACHED =
                T.let(
                  :low_remaining_contract_credit_percentage_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              LOW_REMAINING_CONTRACT_CREDIT_AND_COMMIT_BALANCE_REACHED =
                T.let(
                  :low_remaining_contract_credit_and_commit_balance_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )
              INVOICE_TOTAL_REACHED =
                T.let(
                  :invoice_total_reached,
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity::TaggedSymbol
                )
              end
              attr_accessor :entity

              sig { returns(String) }
              attr_accessor :key

              sig { returns(String) }
              attr_accessor :value

              sig do
                params(
                  entity:
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity::OrSymbol,
                  key: String,
                  value: String
                ).returns(T.attached_class)
              end
              def self.new(entity:, key:, value:)
              end

              sig do
                override.returns(
                  {
                    entity:
                      MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity::TaggedSymbol,
                    key: String,
                    value: String
                  }
                )
              end
              def to_hash
              end

              module Entity
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CONTRACT =
                  T.let(
                    :Contract,
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity::TaggedSymbol
                  )
                COMMIT =
                  T.let(
                    :Commit,
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity::TaggedSymbol
                  )
                CONTRACT_CREDIT =
                  T.let(
                    :ContractCredit,
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class GroupKeyFilter < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::V1::Customers::CustomerAlert::Alert::GroupKeyFilter,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :key

              sig { returns(String) }
              attr_accessor :value

              # Scopes alert evaluation to a specific presentation group key on individual line
              # items. Only present for spend alerts.
              sig do
                params(key: String, value: String).returns(T.attached_class)
              end
              def self.new(key:, value:)
              end

              sig { override.returns({ key: String, value: String }) }
              def to_hash
              end
            end
          end

          # The status of the customer alert. If the alert is archived, null will be
          # returned.
          module CustomerStatus
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OK =
              T.let(
                :ok,
                MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus::TaggedSymbol
              )
            IN_ALARM =
              T.let(
                :in_alarm,
                MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus::TaggedSymbol
              )
            EVALUATING =
              T.let(
                :evaluating,
                MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
