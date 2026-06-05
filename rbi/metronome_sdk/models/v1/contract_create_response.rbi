# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractCreateResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractCreateResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(MetronomeSDK::Models::V1::ContractCreateResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: MetronomeSDK::Models::V1::ContractCreateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: MetronomeSDK::Models::V1::ContractCreateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: MetronomeSDK::Models::V1::ContractCreateResponse::Data }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractCreateResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # The created contract.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract
              )
            )
          end
          attr_reader :contract

          sig do
            params(
              contract:
                MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::OrHash
            ).void
          end
          attr_writer :contract

          sig do
            params(
              id: String,
              contract:
                MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The created contract.
            contract: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                contract:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract
              }
            )
          end
          def to_hash
          end

          class Contract < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T::Array[MetronomeSDK::Commit]) }
            attr_accessor :commits

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(String) }
            attr_accessor :created_by

            sig { returns(String) }
            attr_accessor :customer_id

            sig { returns(T::Array[MetronomeSDK::Override]) }
            attr_accessor :overrides

            sig { returns(T::Array[MetronomeSDK::ScheduledCharge]) }
            attr_accessor :scheduled_charges

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition
                ]
              )
            end
            attr_accessor :transitions

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageFilter
                ]
              )
            end
            attr_accessor :usage_filter

            sig do
              returns(
                MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule
              )
            end
            attr_reader :usage_statement_schedule

            sig do
              params(
                usage_statement_schedule:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::OrHash
              ).void
            end
            attr_writer :usage_statement_schedule

            sig { returns(T.nilable(T::Array[MetronomeSDK::Credit])) }
            attr_reader :credits

            sig { params(credits: T::Array[MetronomeSDK::Credit::OrHash]).void }
            attr_writer :credits

            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            # The billing provider configuration associated with the contract.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration
                )
              )
            end
            attr_reader :customer_billing_provider_configuration

            sig do
              params(
                customer_billing_provider_configuration:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::OrHash
              ).void
            end
            attr_writer :customer_billing_provider_configuration

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            # Indicates whether there are more items than the limit for this endpoint. Use the
            # respective list endpoints to get the full lists.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::HasMore
                )
              )
            end
            attr_reader :has_more

            sig do
              params(
                has_more:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::HasMore::OrHash
              ).void
            end
            attr_writer :has_more

            # Either a **parent** configuration with a list of children or a **child**
            # configuration with a single parent.
            sig do
              returns(T.nilable(MetronomeSDK::HierarchyConfiguration::Variants))
            end
            attr_reader :hierarchy_configuration

            sig do
              params(
                hierarchy_configuration:
                  T.any(
                    MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration::OrHash,
                    MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :hierarchy_configuration

            # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
            # prices automatically. EXPLICIT prioritization requires specifying priorities for
            # each multiplier; the one with the lowest priority value will be prioritized
            # first.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization::TaggedSymbol
                )
              )
            end
            attr_reader :multiplier_override_prioritization

            sig do
              params(
                multiplier_override_prioritization:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization::OrSymbol
              ).void
            end
            attr_writer :multiplier_override_prioritization

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(Float)) }
            attr_reader :net_payment_terms_days

            sig { params(net_payment_terms_days: Float).void }
            attr_writer :net_payment_terms_days

            # ID of the package this contract was created from, if applicable.
            sig { returns(T.nilable(String)) }
            attr_reader :package_id

            sig { params(package_id: String).void }
            attr_writer :package_id

            sig do
              returns(
                T.nilable(MetronomeSDK::PrepaidBalanceThresholdConfiguration)
              )
            end
            attr_reader :prepaid_balance_threshold_configuration

            sig do
              params(
                prepaid_balance_threshold_configuration:
                  MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash
              ).void
            end
            attr_writer :prepaid_balance_threshold_configuration

            sig { returns(T.nilable(String)) }
            attr_reader :rate_card_id

            sig { params(rate_card_id: String).void }
            attr_writer :rate_card_id

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit
                  ]
                )
              )
            end
            attr_reader :recurring_commits

            sig do
              params(
                recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::OrHash
                  ]
              ).void
            end
            attr_writer :recurring_commits

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit
                  ]
                )
              )
            end
            attr_reader :recurring_credits

            sig do
              params(
                recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::OrHash
                  ]
              ).void
            end
            attr_writer :recurring_credits

            # Determines which scheduled and commit charges to consolidate onto the Contract's
            # usage invoice. The charge's `timestamp` must match the usage invoice's
            # `ending_before` date for consolidation to occur. This field cannot be modified
            # after a Contract has been created. If this field is omitted, charges will appear
            # on a separate invoice from usage charges.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::ScheduledChargesOnUsageInvoices::TaggedSymbol
                )
              )
            end
            attr_reader :scheduled_charges_on_usage_invoices

            sig do
              params(
                scheduled_charges_on_usage_invoices:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::ScheduledChargesOnUsageInvoices::OrSymbol
              ).void
            end
            attr_writer :scheduled_charges_on_usage_invoices

            sig do
              returns(T.nilable(MetronomeSDK::SpendThresholdConfiguration))
            end
            attr_reader :spend_threshold_configuration

            sig do
              params(
                spend_threshold_configuration:
                  MetronomeSDK::SpendThresholdConfiguration::OrHash
              ).void
            end
            attr_writer :spend_threshold_configuration

            # List of subscriptions on the contract.
            sig { returns(T.nilable(T::Array[MetronomeSDK::Subscription])) }
            attr_reader :subscriptions

            sig do
              params(
                subscriptions: T::Array[MetronomeSDK::Subscription::OrHash]
              ).void
            end
            attr_writer :subscriptions

            # Optional uniqueness key to prevent duplicate contract creations.
            sig { returns(T.nilable(String)) }
            attr_reader :uniqueness_key

            sig { params(uniqueness_key: String).void }
            attr_writer :uniqueness_key

            # The created contract.
            sig do
              params(
                id: String,
                commits: T::Array[MetronomeSDK::Commit::OrHash],
                created_at: Time,
                created_by: String,
                customer_id: String,
                overrides: T::Array[MetronomeSDK::Override::OrHash],
                scheduled_charges:
                  T::Array[MetronomeSDK::ScheduledCharge::OrHash],
                starting_at: Time,
                transitions:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::OrHash
                  ],
                usage_filter:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageFilter::OrHash
                  ],
                usage_statement_schedule:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::OrHash,
                credits: T::Array[MetronomeSDK::Credit::OrHash],
                custom_fields: T::Hash[Symbol, String],
                customer_billing_provider_configuration:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::OrHash,
                ending_before: Time,
                has_more:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::HasMore::OrHash,
                hierarchy_configuration:
                  T.any(
                    MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration::OrHash,
                    MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::OrHash
                  ),
                multiplier_override_prioritization:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization::OrSymbol,
                name: String,
                net_payment_terms_days: Float,
                package_id: String,
                prepaid_balance_threshold_configuration:
                  MetronomeSDK::PrepaidBalanceThresholdConfiguration::OrHash,
                rate_card_id: String,
                recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::OrHash
                  ],
                recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::OrHash
                  ],
                scheduled_charges_on_usage_invoices:
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::ScheduledChargesOnUsageInvoices::OrSymbol,
                spend_threshold_configuration:
                  MetronomeSDK::SpendThresholdConfiguration::OrHash,
                subscriptions: T::Array[MetronomeSDK::Subscription::OrHash],
                uniqueness_key: String
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              commits:,
              created_at:,
              created_by:,
              customer_id:,
              overrides:,
              scheduled_charges:,
              starting_at:,
              transitions:,
              usage_filter:,
              usage_statement_schedule:,
              credits: nil,
              # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
              custom_fields: nil,
              # The billing provider configuration associated with the contract.
              customer_billing_provider_configuration: nil,
              ending_before: nil,
              # Indicates whether there are more items than the limit for this endpoint. Use the
              # respective list endpoints to get the full lists.
              has_more: nil,
              # Either a **parent** configuration with a list of children or a **child**
              # configuration with a single parent.
              hierarchy_configuration: nil,
              # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
              # prices automatically. EXPLICIT prioritization requires specifying priorities for
              # each multiplier; the one with the lowest priority value will be prioritized
              # first.
              multiplier_override_prioritization: nil,
              name: nil,
              net_payment_terms_days: nil,
              # ID of the package this contract was created from, if applicable.
              package_id: nil,
              prepaid_balance_threshold_configuration: nil,
              rate_card_id: nil,
              recurring_commits: nil,
              recurring_credits: nil,
              # Determines which scheduled and commit charges to consolidate onto the Contract's
              # usage invoice. The charge's `timestamp` must match the usage invoice's
              # `ending_before` date for consolidation to occur. This field cannot be modified
              # after a Contract has been created. If this field is omitted, charges will appear
              # on a separate invoice from usage charges.
              scheduled_charges_on_usage_invoices: nil,
              spend_threshold_configuration: nil,
              # List of subscriptions on the contract.
              subscriptions: nil,
              # Optional uniqueness key to prevent duplicate contract creations.
              uniqueness_key: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  commits: T::Array[MetronomeSDK::Commit],
                  created_at: Time,
                  created_by: String,
                  customer_id: String,
                  overrides: T::Array[MetronomeSDK::Override],
                  scheduled_charges: T::Array[MetronomeSDK::ScheduledCharge],
                  starting_at: Time,
                  transitions:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition
                    ],
                  usage_filter:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageFilter
                    ],
                  usage_statement_schedule:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule,
                  credits: T::Array[MetronomeSDK::Credit],
                  custom_fields: T::Hash[Symbol, String],
                  customer_billing_provider_configuration:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration,
                  ending_before: Time,
                  has_more:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::HasMore,
                  hierarchy_configuration:
                    MetronomeSDK::HierarchyConfiguration::Variants,
                  multiplier_override_prioritization:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization::TaggedSymbol,
                  name: String,
                  net_payment_terms_days: Float,
                  package_id: String,
                  prepaid_balance_threshold_configuration:
                    MetronomeSDK::PrepaidBalanceThresholdConfiguration,
                  rate_card_id: String,
                  recurring_commits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit
                    ],
                  recurring_credits:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit
                    ],
                  scheduled_charges_on_usage_invoices:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::ScheduledChargesOnUsageInvoices::TaggedSymbol,
                  spend_threshold_configuration:
                    MetronomeSDK::SpendThresholdConfiguration,
                  subscriptions: T::Array[MetronomeSDK::Subscription],
                  uniqueness_key: String
                }
              )
            end
            def to_hash
            end

            class Transition < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :from_contract_id

              sig { returns(String) }
              attr_accessor :to_contract_id

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  from_contract_id: String,
                  to_contract_id: String,
                  type:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(from_contract_id:, to_contract_id:, type:)
              end

              sig do
                override.returns(
                  {
                    from_contract_id: String,
                    to_contract_id: String,
                    type:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::Type::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUPERSEDE =
                  T.let(
                    :SUPERSEDE,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::Type::TaggedSymbol
                  )
                RENEWAL =
                  T.let(
                    :RENEWAL,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::Transition::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class UsageFilter < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageFilter,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :group_key

              sig { returns(T::Array[String]) }
              attr_accessor :group_values

              sig { returns(Time) }
              attr_accessor :starting_at

              sig { returns(T.nilable(Time)) }
              attr_reader :ending_before

              sig { params(ending_before: Time).void }
              attr_writer :ending_before

              sig do
                params(
                  group_key: String,
                  group_values: T::Array[String],
                  starting_at: Time,
                  ending_before: Time
                ).returns(T.attached_class)
              end
              def self.new(
                group_key:,
                group_values:,
                starting_at:,
                ending_before: nil
              )
              end

              sig do
                override.returns(
                  {
                    group_key: String,
                    group_values: T::Array[String],
                    starting_at: Time,
                    ending_before: Time
                  }
                )
              end
              def to_hash
              end
            end

            class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Contract usage statements follow a selected cadence based on this date.
              sig { returns(Time) }
              attr_accessor :billing_anchor_date

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency::TaggedSymbol
                )
              end
              attr_accessor :frequency

              sig do
                params(
                  billing_anchor_date: Time,
                  frequency:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Contract usage statements follow a selected cadence based on this date.
                billing_anchor_date:,
                frequency:
              )
              end

              sig do
                override.returns(
                  {
                    billing_anchor_date: Time,
                    frequency:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module Frequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::UsageStatementSchedule::Frequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :id

              sig { params(id: String).void }
              attr_writer :id

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                  )
                )
              end
              attr_reader :billing_provider

              sig do
                params(
                  billing_provider:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::OrSymbol
                ).void
              end
              attr_writer :billing_provider

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                  )
                )
              end
              attr_reader :delivery_method

              sig do
                params(
                  delivery_method:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol
                ).void
              end
              attr_writer :delivery_method

              # The billing provider configuration associated with the contract.
              sig do
                params(
                  id: String,
                  billing_provider:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::OrSymbol,
                  delivery_method:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(id: nil, billing_provider: nil, delivery_method: nil)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    billing_provider:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol,
                    delivery_method:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module BillingProvider
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AWS_MARKETPLACE =
                  T.let(
                    :aws_marketplace,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :stripe,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                  )
                NETSUITE =
                  T.let(
                    :netsuite,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :custom,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                  )
                AZURE_MARKETPLACE =
                  T.let(
                    :azure_marketplace,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                  )
                QUICKBOOKS_ONLINE =
                  T.let(
                    :quickbooks_online,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                  )
                WORKDAY =
                  T.let(
                    :workday,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                  )
                GCP_MARKETPLACE =
                  T.let(
                    :gcp_marketplace,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                  )
                METRONOME =
                  T.let(
                    :metronome,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module DeliveryMethod
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DIRECT_TO_BILLING_PROVIDER =
                  T.let(
                    :direct_to_billing_provider,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                  )
                AWS_SQS =
                  T.let(
                    :aws_sqs,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                  )
                TACKLE =
                  T.let(
                    :tackle,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                  )
                AWS_SNS =
                  T.let(
                    :aws_sns,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class HasMore < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::HasMore,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Whether there are more commits on this contract than the limit for this
              # endpoint. Use the /contracts/customerCommits/list endpoint to get the full list
              # of commits.
              sig { returns(T::Boolean) }
              attr_accessor :commits

              # Whether there are more credits on this contract than the limit for this
              # endpoint. Use the /contracts/customerCredits/list endpoint to get the full list
              # of credits.
              sig { returns(T::Boolean) }
              attr_accessor :credits

              # Indicates whether there are more items than the limit for this endpoint. Use the
              # respective list endpoints to get the full lists.
              sig do
                params(commits: T::Boolean, credits: T::Boolean).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Whether there are more commits on this contract than the limit for this
                # endpoint. Use the /contracts/customerCommits/list endpoint to get the full list
                # of commits.
                commits:,
                # Whether there are more credits on this contract than the limit for this
                # endpoint. Use the /contracts/customerCredits/list endpoint to get the full list
                # of credits.
                credits:
              )
              end

              sig do
                override.returns({ commits: T::Boolean, credits: T::Boolean })
              end
              def to_hash
              end
            end

            # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
            # prices automatically. EXPLICIT prioritization requires specifying priorities for
            # each multiplier; the one with the lowest priority value will be prioritized
            # first.
            module MultiplierOverridePrioritization
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LOWEST_MULTIPLIER =
                T.let(
                  :LOWEST_MULTIPLIER,
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization::TaggedSymbol
                )
              EXPLICIT =
                T.let(
                  :EXPLICIT,
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::MultiplierOverridePrioritization::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The amount of commit to grant.
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::AccessAmount
                )
              end
              attr_reader :access_amount

              sig do
                params(
                  access_amount:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::AccessAmount::OrHash
                ).void
              end
              attr_writer :access_amount

              # The amount of time the created commits will be valid for
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration
                )
              end
              attr_reader :commit_duration

              sig do
                params(
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::OrHash
                ).void
              end
              attr_writer :commit_duration

              # Will be passed down to the individual commits
              sig { returns(Float) }
              attr_accessor :priority

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Product::OrHash
                ).void
              end
              attr_writer :product

              # Whether the created commits will use the commit rate or list rate
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RateType::TaggedSymbol
                )
              end
              attr_accessor :rate_type

              # Determines the start time for the first commit
              sig { returns(Time) }
              attr_accessor :starting_at

              # Will be passed down to the individual commits
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_ids

              sig { params(applicable_product_ids: T::Array[String]).void }
              attr_writer :applicable_product_ids

              # Will be passed down to the individual commits
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_tags

              sig { params(applicable_product_tags: T::Array[String]).void }
              attr_writer :applicable_product_tags

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Contract::OrHash
                ).void
              end
              attr_writer :contract

              # Will be passed down to the individual commits
              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # Determines when the contract will stop creating recurring commits. Optional
              sig { returns(T.nilable(Time)) }
              attr_reader :ending_before

              sig { params(ending_before: Time).void }
              attr_writer :ending_before

              # Optional configuration for recurring commit/credit hierarchy access control
              sig do
                returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration))
              end
              attr_reader :hierarchy_configuration

              sig do
                params(
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash
                ).void
              end
              attr_writer :hierarchy_configuration

              # The amount the customer should be billed for the commit. Not required.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::InvoiceAmount
                  )
                )
              end
              attr_reader :invoice_amount

              sig do
                params(
                  invoice_amount:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::InvoiceAmount::OrHash
                ).void
              end
              attr_writer :invoice_amount

              # Displayed on invoices. Will be passed through to the individual commits
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # Will be passed down to the individual commits
              sig { returns(T.nilable(String)) }
              attr_reader :netsuite_sales_order_id

              sig { params(netsuite_sales_order_id: String).void }
              attr_writer :netsuite_sales_order_id

              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration::TaggedSymbol
                  )
                )
              end
              attr_reader :proration

              sig do
                params(
                  proration:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration::OrSymbol
                ).void
              end
              attr_writer :proration

              # Rounding configuration for prorated recurring commit amounts.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding
                  )
                )
              end
              attr_reader :proration_rounding

              sig do
                params(
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::OrHash
                    )
                ).void
              end
              attr_writer :proration_rounding

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's starting_at rather than the usage
              # invoice dates.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :recurrence_frequency

              sig do
                params(
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency::OrSymbol
                ).void
              end
              attr_writer :recurrence_frequency

              # Will be passed down to the individual commits. This controls how much of an
              # individual unexpired commit will roll over upon contract transition. Must be
              # between 0 and 1.
              sig { returns(T.nilable(Float)) }
              attr_reader :rollover_fraction

              sig { params(rollover_fraction: Float).void }
              attr_writer :rollover_fraction

              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown.
              sig do
                returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifier]))
              end
              attr_reader :specifiers

              sig do
                params(
                  specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
                ).void
              end
              attr_writer :specifiers

              # Attach a subscription to the recurring commit/credit.
              sig do
                returns(
                  T.nilable(MetronomeSDK::RecurringCommitSubscriptionConfig)
                )
              end
              attr_reader :subscription_config

              sig do
                params(
                  subscription_config:
                    MetronomeSDK::RecurringCommitSubscriptionConfig::OrHash
                ).void
              end
              attr_writer :subscription_config

              sig do
                params(
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::AccessAmount::OrHash,
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::OrHash,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Product::OrHash,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RateType::OrSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Contract::OrHash,
                  description: String,
                  ending_before: Time,
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash,
                  invoice_amount:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::InvoiceAmount::OrHash,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration::OrSymbol,
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::OrHash
                    ),
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency::OrSymbol,
                  rollover_fraction: Float,
                  specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash],
                  subscription_config:
                    MetronomeSDK::RecurringCommitSubscriptionConfig::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The amount of commit to grant.
                access_amount:,
                # The amount of time the created commits will be valid for
                commit_duration:,
                # Will be passed down to the individual commits
                priority:,
                product:,
                # Whether the created commits will use the commit rate or list rate
                rate_type:,
                # Determines the start time for the first commit
                starting_at:,
                # Will be passed down to the individual commits
                applicable_product_ids: nil,
                # Will be passed down to the individual commits
                applicable_product_tags: nil,
                contract: nil,
                # Will be passed down to the individual commits
                description: nil,
                # Determines when the contract will stop creating recurring commits. Optional
                ending_before: nil,
                # Optional configuration for recurring commit/credit hierarchy access control
                hierarchy_configuration: nil,
                # The amount the customer should be billed for the commit. Not required.
                invoice_amount: nil,
                # Displayed on invoices. Will be passed through to the individual commits
                name: nil,
                # Will be passed down to the individual commits
                netsuite_sales_order_id: nil,
                # Determines whether the first and last commit will be prorated. If not provided,
                # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
                proration: nil,
                # Rounding configuration for prorated recurring commit amounts.
                proration_rounding: nil,
                # The frequency at which the recurring commits will be created. If not provided: -
                # The commits will be created on the usage invoice frequency. If provided: - The
                # period defined in the duration will correspond to this frequency. - Commits will
                # be created aligned with the recurring commit's starting_at rather than the usage
                # invoice dates.
                recurrence_frequency: nil,
                # Will be passed down to the individual commits. This controls how much of an
                # individual unexpired commit will roll over upon contract transition. Must be
                # between 0 and 1.
                rollover_fraction: nil,
                # List of filters that determine what kind of customer usage draws down a commit
                # or credit. A customer's usage needs to meet the condition of at least one of the
                # specifiers to contribute to a commit's or credit's drawdown.
                specifiers: nil,
                # Attach a subscription to the recurring commit/credit.
                subscription_config: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    access_amount:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::AccessAmount,
                    commit_duration:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Product,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RateType::TaggedSymbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Contract,
                    description: String,
                    ending_before: Time,
                    hierarchy_configuration:
                      MetronomeSDK::CommitHierarchyConfiguration,
                    invoice_amount:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::InvoiceAmount,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration::TaggedSymbol,
                    proration_rounding:
                      T.nilable(
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding
                      ),
                    recurrence_frequency:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency::TaggedSymbol,
                    rollover_fraction: Float,
                    specifiers: T::Array[MetronomeSDK::CommitSpecifier],
                    subscription_config:
                      MetronomeSDK::RecurringCommitSubscriptionConfig
                  }
                )
              end
              def to_hash
              end

              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::AccessAmount,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :credit_type_id

                sig { returns(Float) }
                attr_accessor :unit_price

                sig { returns(T.nilable(Float)) }
                attr_reader :quantity

                sig { params(quantity: Float).void }
                attr_writer :quantity

                # The amount of commit to grant.
                sig do
                  params(
                    credit_type_id: String,
                    unit_price: Float,
                    quantity: Float
                  ).returns(T.attached_class)
                end
                def self.new(credit_type_id:, unit_price:, quantity: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type_id: String,
                      unit_price: Float,
                      quantity: Float
                    }
                  )
                end
                def to_hash
                end
              end

              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :value

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                    )
                  )
                end
                attr_reader :unit

                sig do
                  params(
                    unit:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::Unit::OrSymbol
                  ).void
                end
                attr_writer :unit

                # The amount of time the created commits will be valid for
                sig do
                  params(
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::Unit::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(value:, unit: nil)
                end

                sig do
                  override.returns(
                    {
                      value: Float,
                      unit:
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::Unit
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PERIODS =
                    T.let(
                      :PERIODS,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Product,
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

              # Whether the created commits will use the commit rate or list rate
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Contract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Contract,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { params(id: String).returns(T.attached_class) }
                def self.new(id:)
                end

                sig { override.returns({ id: String }) }
                def to_hash
                end
              end

              class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::InvoiceAmount,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :credit_type_id

                sig { returns(Float) }
                attr_accessor :quantity

                sig { returns(Float) }
                attr_accessor :unit_price

                # The amount the customer should be billed for the commit. Not required.
                sig do
                  params(
                    credit_type_id: String,
                    quantity: Float,
                    unit_price: Float
                  ).returns(T.attached_class)
                end
                def self.new(credit_type_id:, quantity:, unit_price:)
                end

                sig do
                  override.returns(
                    {
                      credit_type_id: String,
                      quantity: Float,
                      unit_price: Float
                    }
                  )
                end
                def to_hash
                end
              end

              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              module Proration
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration::TaggedSymbol
                  )
                FIRST =
                  T.let(
                    :FIRST,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration::TaggedSymbol
                  )
                LAST =
                  T.let(
                    :LAST,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration::TaggedSymbol
                  )
                FIRST_AND_LAST =
                  T.let(
                    :FIRST_AND_LAST,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::Proration::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access
                    )
                  )
                end
                attr_reader :access

                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::OrHash
                  ).void
                end
                attr_writer :access

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice
                    )
                  )
                end
                attr_reader :invoice

                sig do
                  params(
                    invoice:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::OrHash
                  ).void
                end
                attr_writer :invoice

                # Rounding configuration for prorated recurring commit amounts.
                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::OrHash,
                    invoice:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(access: nil, invoice: nil)
                end

                sig do
                  override.returns(
                    {
                      access:
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access,
                      invoice:
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice
                    }
                  )
                end
                def to_hash
                end

                class Access < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Number of decimal places to round to. Applied directly to the stored monetary
                  # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  # nearest 100 in the stored unit. For USD, this means rounding to the nearest
                  # dollar).
                  sig { returns(Float) }
                  attr_accessor :decimal_places

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                    )
                  end
                  attr_accessor :rounding_method

                  sig do
                    params(
                      decimal_places: Float,
                      rounding_method:
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Number of decimal places to round to. Applied directly to the stored monetary
                    # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                    # nearest 100 in the stored unit. For USD, this means rounding to the nearest
                    # dollar).
                    decimal_places:,
                    rounding_method:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        decimal_places: Float,
                        rounding_method:
                          MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HALF_UP =
                      T.let(
                        :HALF_UP,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    FLOOR =
                      T.let(
                        :FLOOR,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    CEILING =
                      T.let(
                        :CEILING,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class Invoice < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Number of decimal places to round to. Applied directly to the stored monetary
                  # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  # nearest 100 in the stored unit. For USD, this means rounding to the nearest
                  # dollar).
                  sig { returns(Float) }
                  attr_accessor :decimal_places

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                    )
                  end
                  attr_accessor :rounding_method

                  sig do
                    params(
                      decimal_places: Float,
                      rounding_method:
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Number of decimal places to round to. Applied directly to the stored monetary
                    # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                    # nearest 100 in the stored unit. For USD, this means rounding to the nearest
                    # dollar).
                    decimal_places:,
                    rounding_method:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        decimal_places: Float,
                        rounding_method:
                          MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HALF_UP =
                      T.let(
                        :HALF_UP,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                      )
                    FLOOR =
                      T.let(
                        :FLOOR,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                      )
                    CEILING =
                      T.let(
                        :CEILING,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::ProrationRounding::Invoice::RoundingMethod::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's starting_at rather than the usage
              # invoice dates.
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The amount of commit to grant.
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::AccessAmount
                )
              end
              attr_reader :access_amount

              sig do
                params(
                  access_amount:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::AccessAmount::OrHash
                ).void
              end
              attr_writer :access_amount

              # The amount of time the created commits will be valid for
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration
                )
              end
              attr_reader :commit_duration

              sig do
                params(
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::OrHash
                ).void
              end
              attr_writer :commit_duration

              # Will be passed down to the individual commits
              sig { returns(Float) }
              attr_accessor :priority

              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Product::OrHash
                ).void
              end
              attr_writer :product

              # Whether the created commits will use the commit rate or list rate
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RateType::TaggedSymbol
                )
              end
              attr_accessor :rate_type

              # Determines the start time for the first commit
              sig { returns(Time) }
              attr_accessor :starting_at

              # Will be passed down to the individual commits
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_ids

              sig { params(applicable_product_ids: T::Array[String]).void }
              attr_writer :applicable_product_ids

              # Will be passed down to the individual commits
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_tags

              sig { params(applicable_product_tags: T::Array[String]).void }
              attr_writer :applicable_product_tags

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Contract
                  )
                )
              end
              attr_reader :contract

              sig do
                params(
                  contract:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Contract::OrHash
                ).void
              end
              attr_writer :contract

              # Will be passed down to the individual commits
              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # Determines when the contract will stop creating recurring commits. Optional
              sig { returns(T.nilable(Time)) }
              attr_reader :ending_before

              sig { params(ending_before: Time).void }
              attr_writer :ending_before

              # Optional configuration for recurring commit/credit hierarchy access control
              sig do
                returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration))
              end
              attr_reader :hierarchy_configuration

              sig do
                params(
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash
                ).void
              end
              attr_writer :hierarchy_configuration

              # Displayed on invoices. Will be passed through to the individual commits
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # Will be passed down to the individual commits
              sig { returns(T.nilable(String)) }
              attr_reader :netsuite_sales_order_id

              sig { params(netsuite_sales_order_id: String).void }
              attr_writer :netsuite_sales_order_id

              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration::TaggedSymbol
                  )
                )
              end
              attr_reader :proration

              sig do
                params(
                  proration:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration::OrSymbol
                ).void
              end
              attr_writer :proration

              # Rounding configuration for prorated recurring credit amounts.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding
                  )
                )
              end
              attr_reader :proration_rounding

              sig do
                params(
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::OrHash
                    )
                ).void
              end
              attr_writer :proration_rounding

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's starting_at rather than the usage
              # invoice dates.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :recurrence_frequency

              sig do
                params(
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency::OrSymbol
                ).void
              end
              attr_writer :recurrence_frequency

              # Will be passed down to the individual commits. This controls how much of an
              # individual unexpired commit will roll over upon contract transition. Must be
              # between 0 and 1.
              sig { returns(T.nilable(Float)) }
              attr_reader :rollover_fraction

              sig { params(rollover_fraction: Float).void }
              attr_writer :rollover_fraction

              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown.
              sig do
                returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifier]))
              end
              attr_reader :specifiers

              sig do
                params(
                  specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
                ).void
              end
              attr_writer :specifiers

              # Attach a subscription to the recurring commit/credit.
              sig do
                returns(
                  T.nilable(MetronomeSDK::RecurringCommitSubscriptionConfig)
                )
              end
              attr_reader :subscription_config

              sig do
                params(
                  subscription_config:
                    MetronomeSDK::RecurringCommitSubscriptionConfig::OrHash
                ).void
              end
              attr_writer :subscription_config

              sig do
                params(
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::AccessAmount::OrHash,
                  commit_duration:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::OrHash,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Product::OrHash,
                  rate_type:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RateType::OrSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Contract::OrHash,
                  description: String,
                  ending_before: Time,
                  hierarchy_configuration:
                    MetronomeSDK::CommitHierarchyConfiguration::OrHash,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration::OrSymbol,
                  proration_rounding:
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::OrHash
                    ),
                  recurrence_frequency:
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency::OrSymbol,
                  rollover_fraction: Float,
                  specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash],
                  subscription_config:
                    MetronomeSDK::RecurringCommitSubscriptionConfig::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The amount of commit to grant.
                access_amount:,
                # The amount of time the created commits will be valid for
                commit_duration:,
                # Will be passed down to the individual commits
                priority:,
                product:,
                # Whether the created commits will use the commit rate or list rate
                rate_type:,
                # Determines the start time for the first commit
                starting_at:,
                # Will be passed down to the individual commits
                applicable_product_ids: nil,
                # Will be passed down to the individual commits
                applicable_product_tags: nil,
                contract: nil,
                # Will be passed down to the individual commits
                description: nil,
                # Determines when the contract will stop creating recurring commits. Optional
                ending_before: nil,
                # Optional configuration for recurring commit/credit hierarchy access control
                hierarchy_configuration: nil,
                # Displayed on invoices. Will be passed through to the individual commits
                name: nil,
                # Will be passed down to the individual commits
                netsuite_sales_order_id: nil,
                # Determines whether the first and last commit will be prorated. If not provided,
                # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
                proration: nil,
                # Rounding configuration for prorated recurring credit amounts.
                proration_rounding: nil,
                # The frequency at which the recurring commits will be created. If not provided: -
                # The commits will be created on the usage invoice frequency. If provided: - The
                # period defined in the duration will correspond to this frequency. - Commits will
                # be created aligned with the recurring commit's starting_at rather than the usage
                # invoice dates.
                recurrence_frequency: nil,
                # Will be passed down to the individual commits. This controls how much of an
                # individual unexpired commit will roll over upon contract transition. Must be
                # between 0 and 1.
                rollover_fraction: nil,
                # List of filters that determine what kind of customer usage draws down a commit
                # or credit. A customer's usage needs to meet the condition of at least one of the
                # specifiers to contribute to a commit's or credit's drawdown.
                specifiers: nil,
                # Attach a subscription to the recurring commit/credit.
                subscription_config: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    access_amount:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::AccessAmount,
                    commit_duration:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration,
                    priority: Float,
                    product:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Product,
                    rate_type:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RateType::TaggedSymbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Contract,
                    description: String,
                    ending_before: Time,
                    hierarchy_configuration:
                      MetronomeSDK::CommitHierarchyConfiguration,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration::TaggedSymbol,
                    proration_rounding:
                      T.nilable(
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding
                      ),
                    recurrence_frequency:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency::TaggedSymbol,
                    rollover_fraction: Float,
                    specifiers: T::Array[MetronomeSDK::CommitSpecifier],
                    subscription_config:
                      MetronomeSDK::RecurringCommitSubscriptionConfig
                  }
                )
              end
              def to_hash
              end

              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::AccessAmount,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :credit_type_id

                sig { returns(Float) }
                attr_accessor :unit_price

                sig { returns(T.nilable(Float)) }
                attr_reader :quantity

                sig { params(quantity: Float).void }
                attr_writer :quantity

                # The amount of commit to grant.
                sig do
                  params(
                    credit_type_id: String,
                    unit_price: Float,
                    quantity: Float
                  ).returns(T.attached_class)
                end
                def self.new(credit_type_id:, unit_price:, quantity: nil)
                end

                sig do
                  override.returns(
                    {
                      credit_type_id: String,
                      unit_price: Float,
                      quantity: Float
                    }
                  )
                end
                def to_hash
                end
              end

              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :value

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                    )
                  )
                end
                attr_reader :unit

                sig do
                  params(
                    unit:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::Unit::OrSymbol
                  ).void
                end
                attr_writer :unit

                # The amount of time the created commits will be valid for
                sig do
                  params(
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::Unit::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(value:, unit: nil)
                end

                sig do
                  override.returns(
                    {
                      value: Float,
                      unit:
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::Unit
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PERIODS =
                    T.let(
                      :PERIODS,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Product,
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

              # Whether the created commits will use the commit rate or list rate
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                COMMIT_RATE =
                  T.let(
                    :COMMIT_RATE,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RateType::TaggedSymbol
                  )
                LIST_RATE =
                  T.let(
                    :LIST_RATE,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Contract < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Contract,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { params(id: String).returns(T.attached_class) }
                def self.new(id:)
                end

                sig { override.returns({ id: String }) }
                def to_hash
                end
              end

              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              module Proration
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration::TaggedSymbol
                  )
                FIRST =
                  T.let(
                    :FIRST,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration::TaggedSymbol
                  )
                LAST =
                  T.let(
                    :LAST,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration::TaggedSymbol
                  )
                FIRST_AND_LAST =
                  T.let(
                    :FIRST_AND_LAST,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::Proration::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access
                    )
                  )
                end
                attr_reader :access

                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::OrHash
                  ).void
                end
                attr_writer :access

                # Rounding configuration for prorated recurring credit amounts.
                sig do
                  params(
                    access:
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(access: nil)
                end

                sig do
                  override.returns(
                    {
                      access:
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access
                    }
                  )
                end
                def to_hash
                end

                class Access < MetronomeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access,
                        MetronomeSDK::Internal::AnyHash
                      )
                    end

                  # Number of decimal places to round to. Applied directly to the stored monetary
                  # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  # nearest 100 in the stored unit. For USD, this means rounding to the nearest
                  # dollar).
                  sig { returns(Float) }
                  attr_accessor :decimal_places

                  sig do
                    returns(
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                    )
                  end
                  attr_accessor :rounding_method

                  sig do
                    params(
                      decimal_places: Float,
                      rounding_method:
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Number of decimal places to round to. Applied directly to the stored monetary
                    # representation. Negative values round to powers of 10 (e.g., -2 rounds to
                    # nearest 100 in the stored unit. For USD, this means rounding to the nearest
                    # dollar).
                    decimal_places:,
                    rounding_method:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        decimal_places: Float,
                        rounding_method:
                          MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HALF_UP =
                      T.let(
                        :HALF_UP,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    FLOOR =
                      T.let(
                        :FLOOR,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )
                    CEILING =
                      T.let(
                        :CEILING,
                        MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::ProrationRounding::Access::RoundingMethod::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's starting_at rather than the usage
              # invoice dates.
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # Determines which scheduled and commit charges to consolidate onto the Contract's
            # usage invoice. The charge's `timestamp` must match the usage invoice's
            # `ending_before` date for consolidation to occur. This field cannot be modified
            # after a Contract has been created. If this field is omitted, charges will appear
            # on a separate invoice from usage charges.
            module ScheduledChargesOnUsageInvoices
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::ScheduledChargesOnUsageInvoices
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALL =
                T.let(
                  :ALL,
                  MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::ScheduledChargesOnUsageInvoices::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractCreateResponse::Data::Contract::ScheduledChargesOnUsageInvoices::TaggedSymbol
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
end
