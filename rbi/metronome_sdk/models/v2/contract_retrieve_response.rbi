# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V2::ContractRetrieveResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit
              ]
            )
          end
          attr_accessor :commits

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :created_by

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override
              ]
            )
          end
          attr_accessor :overrides

          sig { returns(T::Array[MetronomeSDK::ScheduledCharge]) }
          attr_accessor :scheduled_charges

          sig { returns(Time) }
          attr_accessor :starting_at

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition
              ]
            )
          end
          attr_accessor :transitions

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter
              ]
            )
          end
          attr_accessor :usage_filter

          sig do
            returns(
              MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule
            )
          end
          attr_reader :usage_statement_schedule

          sig do
            params(
              usage_statement_schedule:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::OrHash
            ).void
          end
          attr_writer :usage_statement_schedule

          sig { returns(T.nilable(Time)) }
          attr_reader :archived_at

          sig { params(archived_at: Time).void }
          attr_writer :archived_at

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit
                ]
              )
            )
          end
          attr_reader :credits

          sig do
            params(
              credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::OrHash
                ]
            ).void
          end
          attr_writer :credits

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          # This field's availability is dependent on your client's configuration.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration
              )
            )
          end
          attr_reader :customer_billing_provider_configuration

          sig do
            params(
              customer_billing_provider_configuration:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::OrHash
            ).void
          end
          attr_writer :customer_billing_provider_configuration

          # This field's availability is dependent on your client's configuration.
          sig { returns(T.nilable(T::Array[MetronomeSDK::Discount])) }
          attr_reader :discounts

          sig do
            params(discounts: T::Array[MetronomeSDK::Discount::OrHash]).void
          end
          attr_writer :discounts

          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          # prices automatically. EXPLICIT prioritization requires specifying priorities for
          # each multiplier; the one with the lowest priority value will be prioritized
          # first.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization::TaggedSymbol
              )
            )
          end
          attr_reader :multiplier_override_prioritization

          sig do
            params(
              multiplier_override_prioritization:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization::OrSymbol
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

          # This field's availability is dependent on your client's configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :netsuite_sales_order_id

          sig { params(netsuite_sales_order_id: String).void }
          attr_writer :netsuite_sales_order_id

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration
              )
            )
          end
          attr_reader :prepaid_balance_threshold_configuration

          sig do
            params(
              prepaid_balance_threshold_configuration:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::OrHash
            ).void
          end
          attr_writer :prepaid_balance_threshold_configuration

          # This field's availability is dependent on your client's configuration.
          sig { returns(T.nilable(T::Array[MetronomeSDK::ProService])) }
          attr_reader :professional_services

          sig do
            params(
              professional_services: T::Array[MetronomeSDK::ProService::OrHash]
            ).void
          end
          attr_writer :professional_services

          sig { returns(T.nilable(String)) }
          attr_reader :rate_card_id

          sig { params(rate_card_id: String).void }
          attr_writer :rate_card_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit
                ]
              )
            )
          end
          attr_reader :recurring_commits

          sig do
            params(
              recurring_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::OrHash
                ]
            ).void
          end
          attr_writer :recurring_commits

          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit
                ]
              )
            )
          end
          attr_reader :recurring_credits

          sig do
            params(
              recurring_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::OrHash
                ]
            ).void
          end
          attr_writer :recurring_credits

          # This field's availability is dependent on your client's configuration.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty
                ]
              )
            )
          end
          attr_reader :reseller_royalties

          sig do
            params(
              reseller_royalties:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::OrHash
                ]
            ).void
          end
          attr_writer :reseller_royalties

          # This field's availability is dependent on your client's configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :salesforce_opportunity_id

          sig { params(salesforce_opportunity_id: String).void }
          attr_writer :salesforce_opportunity_id

          # Determines which scheduled and commit charges to consolidate onto the Contract's
          # usage invoice. The charge's `timestamp` must match the usage invoice's
          # `ending_before` date for consolidation to occur. This field cannot be modified
          # after a Contract has been created. If this field is omitted, charges will appear
          # on a separate invoice from usage charges.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
              )
            )
          end
          attr_reader :scheduled_charges_on_usage_invoices

          sig do
            params(
              scheduled_charges_on_usage_invoices:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::OrSymbol
            ).void
          end
          attr_writer :scheduled_charges_on_usage_invoices

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration
              )
            )
          end
          attr_reader :spend_threshold_configuration

          sig do
            params(
              spend_threshold_configuration:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::OrHash
            ).void
          end
          attr_writer :spend_threshold_configuration

          # (beta) List of subscriptions on the contract.
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription
                ]
              )
            )
          end
          attr_reader :subscriptions

          sig do
            params(
              subscriptions:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::OrHash
                ]
            ).void
          end
          attr_writer :subscriptions

          sig { returns(T.nilable(Float)) }
          attr_reader :total_contract_value

          sig { params(total_contract_value: Float).void }
          attr_writer :total_contract_value

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
              commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::OrHash
                ],
              created_at: Time,
              created_by: String,
              customer_id: String,
              overrides:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OrHash
                ],
              scheduled_charges:
                T::Array[MetronomeSDK::ScheduledCharge::OrHash],
              starting_at: Time,
              transitions:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::OrHash
                ],
              usage_filter:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter::OrHash
                ],
              usage_statement_schedule:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::OrHash,
              archived_at: Time,
              credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::OrHash
                ],
              custom_fields: T::Hash[Symbol, String],
              customer_billing_provider_configuration:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::OrHash,
              discounts: T::Array[MetronomeSDK::Discount::OrHash],
              ending_before: Time,
              multiplier_override_prioritization:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization::OrSymbol,
              name: String,
              net_payment_terms_days: Float,
              netsuite_sales_order_id: String,
              prepaid_balance_threshold_configuration:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::OrHash,
              professional_services: T::Array[MetronomeSDK::ProService::OrHash],
              rate_card_id: String,
              recurring_commits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::OrHash
                ],
              recurring_credits:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::OrHash
                ],
              reseller_royalties:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::OrHash
                ],
              salesforce_opportunity_id: String,
              scheduled_charges_on_usage_invoices:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::OrSymbol,
              spend_threshold_configuration:
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::OrHash,
              subscriptions:
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::OrHash
                ],
              total_contract_value: Float,
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
            archived_at: nil,
            credits: nil,
            custom_fields: nil,
            # This field's availability is dependent on your client's configuration.
            customer_billing_provider_configuration: nil,
            # This field's availability is dependent on your client's configuration.
            discounts: nil,
            ending_before: nil,
            # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
            # prices automatically. EXPLICIT prioritization requires specifying priorities for
            # each multiplier; the one with the lowest priority value will be prioritized
            # first.
            multiplier_override_prioritization: nil,
            name: nil,
            net_payment_terms_days: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil,
            prepaid_balance_threshold_configuration: nil,
            # This field's availability is dependent on your client's configuration.
            professional_services: nil,
            rate_card_id: nil,
            recurring_commits: nil,
            recurring_credits: nil,
            # This field's availability is dependent on your client's configuration.
            reseller_royalties: nil,
            # This field's availability is dependent on your client's configuration.
            salesforce_opportunity_id: nil,
            # Determines which scheduled and commit charges to consolidate onto the Contract's
            # usage invoice. The charge's `timestamp` must match the usage invoice's
            # `ending_before` date for consolidation to occur. This field cannot be modified
            # after a Contract has been created. If this field is omitted, charges will appear
            # on a separate invoice from usage charges.
            scheduled_charges_on_usage_invoices: nil,
            spend_threshold_configuration: nil,
            # (beta) List of subscriptions on the contract.
            subscriptions: nil,
            total_contract_value: nil,
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
                commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit
                  ],
                created_at: Time,
                created_by: String,
                customer_id: String,
                overrides:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override
                  ],
                scheduled_charges: T::Array[MetronomeSDK::ScheduledCharge],
                starting_at: Time,
                transitions:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition
                  ],
                usage_filter:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter
                  ],
                usage_statement_schedule:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule,
                archived_at: Time,
                credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit
                  ],
                custom_fields: T::Hash[Symbol, String],
                customer_billing_provider_configuration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration,
                discounts: T::Array[MetronomeSDK::Discount],
                ending_before: Time,
                multiplier_override_prioritization:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization::TaggedSymbol,
                name: String,
                net_payment_terms_days: Float,
                netsuite_sales_order_id: String,
                prepaid_balance_threshold_configuration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration,
                professional_services: T::Array[MetronomeSDK::ProService],
                rate_card_id: String,
                recurring_commits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit
                  ],
                recurring_credits:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit
                  ],
                reseller_royalties:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty
                  ],
                salesforce_opportunity_id: String,
                scheduled_charges_on_usage_invoices:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol,
                spend_threshold_configuration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration,
                subscriptions:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription
                  ],
                total_contract_value: Float,
                uniqueness_key: String
              }
            )
          end
          def to_hash
          end

          class Commit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The schedule that the customer will gain access to the credits purposed with
            # this commit.
            sig { returns(T.nilable(MetronomeSDK::ScheduleDuration)) }
            attr_reader :access_schedule

            sig do
              params(
                access_schedule: MetronomeSDK::ScheduleDuration::OrHash
              ).void
            end
            attr_writer :access_schedule

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_contract_ids

            sig { params(applicable_contract_ids: T::Array[String]).void }
            attr_writer :applicable_contract_ids

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_ids

            sig { params(applicable_product_ids: T::Array[String]).void }
            attr_writer :applicable_product_ids

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_tags

            sig { params(applicable_product_tags: T::Array[String]).void }
            attr_writer :applicable_product_tags

            sig { returns(T.nilable(Time)) }
            attr_reader :archived_at

            sig { params(archived_at: Time).void }
            attr_writer :archived_at

            # The current balance of the credit or commit. This balance reflects the amount of
            # credit or commit that the customer has access to use at this moment - thus,
            # expired and upcoming credit or commit segments contribute 0 to the balance. The
            # balance will match the sum of all ledger entries with the exception of the case
            # where the sum of negative manual ledger entries exceeds the positive amount
            # remaining on the credit or commit - in that case, the balance will be 0. All
            # manual ledger entries associated with active credit or commit segments are
            # included in the balance, including future-dated manual ledger entries.
            sig { returns(T.nilable(Float)) }
            attr_reader :balance

            sig { params(balance: Float).void }
            attr_writer :balance

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract
                )
              )
            end
            attr_reader :contract

            sig do
              params(
                contract:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract::OrHash
              ).void
            end
            attr_writer :contract

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # The contract that this commit will be billed on.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract
                )
              )
            end
            attr_reader :invoice_contract

            sig do
              params(
                invoice_contract:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract::OrHash
              ).void
            end
            attr_writer :invoice_contract

            # The schedule that the customer will be invoiced for this commit.
            sig { returns(T.nilable(MetronomeSDK::SchedulePointInTime)) }
            attr_reader :invoice_schedule

            sig do
              params(
                invoice_schedule: MetronomeSDK::SchedulePointInTime::OrHash
              ).void
            end
            attr_writer :invoice_schedule

            # A list of ordered events that impact the balance of a commit. For example, an
            # invoice deduction or a rollover.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::Variants
                  ]
                )
              )
            end
            attr_reader :ledger

            sig do
              params(
                ledger:
                  T::Array[
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::OrHash
                    )
                  ]
              ).void
            end
            attr_writer :ledger

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_sales_order_id

            sig { params(netsuite_sales_order_id: String).void }
            attr_writer :netsuite_sales_order_id

            # If multiple credits or commits are applicable, the one with the lower priority
            # will apply first.
            sig { returns(T.nilable(Float)) }
            attr_reader :priority

            sig { params(priority: Float).void }
            attr_writer :priority

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType::TaggedSymbol
                )
              )
            end
            attr_reader :rate_type

            sig do
              params(
                rate_type:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType::OrSymbol
              ).void
            end
            attr_writer :rate_type

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom
                )
              )
            end
            attr_reader :rolled_over_from

            sig do
              params(
                rolled_over_from:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom::OrHash
              ).void
            end
            attr_writer :rolled_over_from

            sig { returns(T.nilable(Float)) }
            attr_reader :rollover_fraction

            sig { params(rollover_fraction: Float).void }
            attr_writer :rollover_fraction

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :salesforce_opportunity_id

            sig { params(salesforce_opportunity_id: String).void }
            attr_writer :salesforce_opportunity_id

            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Specifier::OrHash
                  ]
              ).void
            end
            attr_writer :specifiers

            sig do
              params(
                id: String,
                product:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product::OrHash,
                type:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Type::OrSymbol,
                access_schedule: MetronomeSDK::ScheduleDuration::OrHash,
                applicable_contract_ids: T::Array[String],
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                archived_at: Time,
                balance: Float,
                contract:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract::OrHash,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                invoice_contract:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract::OrHash,
                invoice_schedule: MetronomeSDK::SchedulePointInTime::OrHash,
                ledger:
                  T::Array[
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::OrHash
                    )
                  ],
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType::OrSymbol,
                rolled_over_from:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom::OrHash,
                rollover_fraction: Float,
                salesforce_opportunity_id: String,
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Specifier::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              product:,
              type:,
              # The schedule that the customer will gain access to the credits purposed with
              # this commit.
              access_schedule: nil,
              applicable_contract_ids: nil,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              archived_at: nil,
              # The current balance of the credit or commit. This balance reflects the amount of
              # credit or commit that the customer has access to use at this moment - thus,
              # expired and upcoming credit or commit segments contribute 0 to the balance. The
              # balance will match the sum of all ledger entries with the exception of the case
              # where the sum of negative manual ledger entries exceeds the positive amount
              # remaining on the credit or commit - in that case, the balance will be 0. All
              # manual ledger entries associated with active credit or commit segments are
              # included in the balance, including future-dated manual ledger entries.
              balance: nil,
              contract: nil,
              custom_fields: nil,
              description: nil,
              # The contract that this commit will be billed on.
              invoice_contract: nil,
              # The schedule that the customer will be invoiced for this commit.
              invoice_schedule: nil,
              # A list of ordered events that impact the balance of a commit. For example, an
              # invoice deduction or a rollover.
              ledger: nil,
              name: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_sales_order_id: nil,
              # If multiple credits or commits are applicable, the one with the lower priority
              # will apply first.
              priority: nil,
              rate_type: nil,
              rolled_over_from: nil,
              rollover_fraction: nil,
              # This field's availability is dependent on your client's configuration.
              salesforce_opportunity_id: nil,
              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown.
              specifiers: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  product:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product,
                  type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Type::TaggedSymbol,
                  access_schedule: MetronomeSDK::ScheduleDuration,
                  applicable_contract_ids: T::Array[String],
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  archived_at: Time,
                  balance: Float,
                  contract:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  invoice_contract:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract,
                  invoice_schedule: MetronomeSDK::SchedulePointInTime,
                  ledger:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::Variants
                    ],
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType::TaggedSymbol,
                  rolled_over_from:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom,
                  rollover_fraction: Float,
                  salesforce_opportunity_id: String,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Specifier
                    ]
                }
              )
            end
            def to_hash
            end

            class Product < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product,
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

            module Type
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID =
                T.let(
                  :PREPAID,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Type::TaggedSymbol
                )
              POSTPAID =
                T.let(
                  :POSTPAID,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract,
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

            class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The contract that this commit will be billed on.
              sig { params(id: String).returns(T.attached_class) }
              def self.new(id:)
              end

              sig { override.returns({ id: String }) }
              def to_hash
              end
            end

            module Ledger
              extend MetronomeSDK::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
                  )
                end

              class PrepaidCommitSegmentStartLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(amount:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_SEGMENT_START =
                    T.let(
                      :PREPAID_COMMIT_SEGMENT_START,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :invoice_id

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                    T.let(
                      :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PrepaidCommitRolloverLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :new_contract_id

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    new_contract_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  new_contract_id:,
                  segment_id:,
                  timestamp:,
                  type:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      new_contract_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_ROLLOVER =
                    T.let(
                      :PREPAID_COMMIT_ROLLOVER,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PrepaidCommitExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(amount:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_EXPIRATION =
                    T.let(
                      :PREPAID_COMMIT_EXPIRATION,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PrepaidCommitCanceledLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :invoice_id

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_CANCELED =
                    T.let(
                      :PREPAID_COMMIT_CANCELED,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PrepaidCommitCreditedLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :invoice_id

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_CREDITED =
                    T.let(
                      :PREPAID_COMMIT_CREDITED,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PostpaidCommitInitialBalanceLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(amount:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_INITIAL_BALANCE =
                    T.let(
                      :POSTPAID_COMMIT_INITIAL_BALANCE,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :invoice_id

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                    T.let(
                      :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PostpaidCommitRolloverLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :new_contract_id

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    new_contract_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  new_contract_id:,
                  segment_id:,
                  timestamp:,
                  type:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      new_contract_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_ROLLOVER =
                    T.let(
                      :POSTPAID_COMMIT_ROLLOVER,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PostpaidCommitTrueupLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :invoice_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(amount:, invoice_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_TRUEUP =
                    T.let(
                      :POSTPAID_COMMIT_TRUEUP,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PrepaidCommitManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :reason

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    reason: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(amount:, reason:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PREPAID_COMMIT_MANUAL =
                    T.let(
                      :PREPAID_COMMIT_MANUAL,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PostpaidCommitManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :reason

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    reason: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(amount:, reason:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_MANUAL =
                    T.let(
                      :POSTPAID_COMMIT_MANUAL,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class PostpaidCommitExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(amount:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  POSTPAID_COMMIT_EXPIRATION =
                    T.let(
                      :POSTPAID_COMMIT_EXPIRATION,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::Variants
                  ]
                )
              end
              def self.variants
              end
            end

            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :commit_id

              sig { returns(String) }
              attr_accessor :contract_id

              sig do
                params(commit_id: String, contract_id: String).returns(
                  T.attached_class
                )
              end
              def self.new(commit_id:, contract_id:)
              end

              sig do
                override.returns({ commit_id: String, contract_id: String })
              end
              def to_hash
              end
            end

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Specifier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :presentation_group_values

              sig do
                params(presentation_group_values: T::Hash[Symbol, String]).void
              end
              attr_writer :presentation_group_values

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :pricing_group_values

              sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
              attr_writer :pricing_group_values

              # If provided, the specifier will only apply to the product with the specified ID.
              sig { returns(T.nilable(String)) }
              attr_reader :product_id

              sig { params(product_id: String).void }
              attr_writer :product_id

              # If provided, the specifier will only apply to products with all the specified
              # tags.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :product_tags

              sig { params(product_tags: T::Array[String]).void }
              attr_writer :product_tags

              sig do
                params(
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                presentation_group_values: nil,
                pricing_group_values: nil,
                # If provided, the specifier will only apply to the product with the specified ID.
                product_id: nil,
                # If provided, the specifier will only apply to products with all the specified
                # tags.
                product_tags: nil
              )
              end

              sig do
                override.returns(
                  {
                    presentation_group_values: T::Hash[Symbol, String],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String]
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Override < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Time) }
            attr_accessor :starting_at

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_tags

            sig { params(applicable_product_tags: T::Array[String]).void }
            attr_writer :applicable_product_tags

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :entitled

            sig { params(entitled: T::Boolean).void }
            attr_writer :entitled

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_commit_specific

            sig { params(is_commit_specific: T::Boolean).void }
            attr_writer :is_commit_specific

            sig { returns(T.nilable(Float)) }
            attr_reader :multiplier

            sig { params(multiplier: Float).void }
            attr_writer :multiplier

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier
                  ]
                )
              )
            end
            attr_reader :override_specifiers

            sig do
              params(
                override_specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::OrHash
                  ]
              ).void
            end
            attr_writer :override_specifiers

            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier
                  ]
                )
              )
            end
            attr_reader :override_tiers

            sig do
              params(
                override_tiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier::OrHash
                  ]
              ).void
            end
            attr_writer :override_tiers

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate
                )
              )
            end
            attr_reader :overwrite_rate

            sig do
              params(
                overwrite_rate:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::OrHash
              ).void
            end
            attr_writer :overwrite_rate

            sig { returns(T.nilable(Float)) }
            attr_reader :priority

            sig { params(priority: Float).void }
            attr_writer :priority

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product
                )
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target::TaggedSymbol
                )
              )
            end
            attr_reader :target

            sig do
              params(
                target:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target::OrSymbol
              ).void
            end
            attr_writer :target

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type::TaggedSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                id: String,
                starting_at: Time,
                applicable_product_tags: T::Array[String],
                ending_before: Time,
                entitled: T::Boolean,
                is_commit_specific: T::Boolean,
                multiplier: Float,
                override_specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::OrHash
                  ],
                override_tiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier::OrHash
                  ],
                overwrite_rate:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::OrHash,
                priority: Float,
                product:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product::OrHash,
                target:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target::OrSymbol,
                type:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              starting_at:,
              applicable_product_tags: nil,
              ending_before: nil,
              entitled: nil,
              is_commit_specific: nil,
              multiplier: nil,
              override_specifiers: nil,
              override_tiers: nil,
              overwrite_rate: nil,
              priority: nil,
              product: nil,
              target: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  starting_at: Time,
                  applicable_product_tags: T::Array[String],
                  ending_before: Time,
                  entitled: T::Boolean,
                  is_commit_specific: T::Boolean,
                  multiplier: Float,
                  override_specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier
                    ],
                  override_tiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier
                    ],
                  overwrite_rate:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product,
                  target:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target::TaggedSymbol,
                  type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                )
              end
              attr_reader :billing_frequency

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::OrSymbol
                ).void
              end
              attr_writer :billing_frequency

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :commit_ids

              sig { params(commit_ids: T::Array[String]).void }
              attr_writer :commit_ids

              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
              attr_reader :presentation_group_values

              sig do
                params(
                  presentation_group_values: T::Hash[Symbol, T.nilable(String)]
                ).void
              end
              attr_writer :presentation_group_values

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :pricing_group_values

              sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
              attr_writer :pricing_group_values

              sig { returns(T.nilable(String)) }
              attr_reader :product_id

              sig { params(product_id: String).void }
              attr_writer :product_id

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :product_tags

              sig { params(product_tags: T::Array[String]).void }
              attr_writer :product_tags

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :recurring_commit_ids

              sig { params(recurring_commit_ids: T::Array[String]).void }
              attr_writer :recurring_commit_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :recurring_credit_ids

              sig { params(recurring_credit_ids: T::Array[String]).void }
              attr_writer :recurring_credit_ids

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::OrSymbol,
                  commit_ids: T::Array[String],
                  presentation_group_values: T::Hash[Symbol, T.nilable(String)],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String],
                  recurring_commit_ids: T::Array[String],
                  recurring_credit_ids: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                billing_frequency: nil,
                commit_ids: nil,
                presentation_group_values: nil,
                pricing_group_values: nil,
                product_id: nil,
                product_tags: nil,
                recurring_commit_ids: nil,
                recurring_credit_ids: nil
              )
              end

              sig do
                override.returns(
                  {
                    billing_frequency:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol,
                    commit_ids: T::Array[String],
                    presentation_group_values:
                      T::Hash[Symbol, T.nilable(String)],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String],
                    recurring_commit_ids: T::Array[String],
                    recurring_credit_ids: T::Array[String]
                  }
                )
              end
              def to_hash
              end

              module BillingFrequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :multiplier

              sig { returns(T.nilable(Float)) }
              attr_reader :size

              sig { params(size: Float).void }
              attr_writer :size

              sig do
                params(multiplier: Float, size: Float).returns(T.attached_class)
              end
              def self.new(multiplier:, size: nil)
              end

              sig { override.returns({ multiplier: Float, size: Float }) }
              def to_hash
              end
            end

            class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType::TaggedSymbol
                )
              end
              attr_accessor :rate_type

              sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
              attr_reader :credit_type

              sig do
                params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
              end
              attr_writer :credit_type

              # Only set for CUSTOM rate_type. This field is interpreted by custom rate
              # processors.
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :custom_rate

              sig { params(custom_rate: T::Hash[Symbol, T.anything]).void }
              attr_writer :custom_rate

              # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              # set to true.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_prorated

              sig { params(is_prorated: T::Boolean).void }
              attr_writer :is_prorated

              # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              sig { returns(T.nilable(Float)) }
              attr_reader :price

              sig { params(price: Float).void }
              attr_writer :price

              # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # Only set for TIERED rate_type.
              sig { returns(T.nilable(T::Array[MetronomeSDK::Tier])) }
              attr_reader :tiers

              sig { params(tiers: T::Array[MetronomeSDK::Tier::OrHash]).void }
              attr_writer :tiers

              sig do
                params(
                  rate_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType::OrSymbol,
                  credit_type: MetronomeSDK::CreditTypeData::OrHash,
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  quantity: Float,
                  tiers: T::Array[MetronomeSDK::Tier::OrHash]
                ).returns(T.attached_class)
              end
              def self.new(
                rate_type:,
                credit_type: nil,
                # Only set for CUSTOM rate_type. This field is interpreted by custom rate
                # processors.
                custom_rate: nil,
                # Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                # set to true.
                is_prorated: nil,
                # Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
                # this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
                price: nil,
                # Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                quantity: nil,
                # Only set for TIERED rate_type.
                tiers: nil
              )
              end

              sig do
                override.returns(
                  {
                    rate_type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType::TaggedSymbol,
                    credit_type: MetronomeSDK::CreditTypeData,
                    custom_rate: T::Hash[Symbol, T.anything],
                    is_prorated: T::Boolean,
                    price: Float,
                    quantity: Float,
                    tiers: T::Array[MetronomeSDK::Tier]
                  }
                )
              end
              def to_hash
              end

              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FLAT =
                  T.let(
                    :FLAT,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType::TaggedSymbol
                  )
                PERCENTAGE =
                  T.let(
                    :PERCENTAGE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType::TaggedSymbol
                  )
                SUBSCRIPTION =
                  T.let(
                    :SUBSCRIPTION,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType::TaggedSymbol
                  )
                TIERED =
                  T.let(
                    :TIERED,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :CUSTOM,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product,
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

            module Target
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Type
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OVERWRITE =
                T.let(
                  :OVERWRITE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type::TaggedSymbol
                )
              MULTIPLIER =
                T.let(
                  :MULTIPLIER,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type::TaggedSymbol
                )
              TIERED =
                T.let(
                  :TIERED,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Transition < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :from_contract_id

            sig { returns(String) }
            attr_accessor :to_contract_id

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                from_contract_id: String,
                to_contract_id: String,
                type:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::Type::OrSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUPERSEDE =
                T.let(
                  :SUPERSEDE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::Type::TaggedSymbol
                )
              RENEWAL =
                T.let(
                  :RENEWAL,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::Type::TaggedSymbol
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
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :group_key

            sig { returns(T::Array[String]) }
            attr_accessor :group_values

            # This will match contract starting_at value if usage filter is active from the
            # beginning of the contract.
            sig { returns(Time) }
            attr_accessor :starting_at

            # This will match contract ending_before value if usage filter is active until the
            # end of the contract. It will be undefined if the contract is open-ended.
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
              # This will match contract starting_at value if usage filter is active from the
              # beginning of the contract.
              starting_at:,
              # This will match contract ending_before value if usage filter is active until the
              # end of the contract. It will be undefined if the contract is open-ended.
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
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Contract usage statements follow a selected cadence based on this date.
            sig { returns(Time) }
            attr_accessor :billing_anchor_date

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
              )
            end
            attr_accessor :frequency

            sig do
              params(
                billing_anchor_date: Time,
                frequency:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency::OrSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Credit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product::OrHash
              ).void
            end
            attr_writer :product

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The schedule that the customer will gain access to the credits.
            sig { returns(T.nilable(MetronomeSDK::ScheduleDuration)) }
            attr_reader :access_schedule

            sig do
              params(
                access_schedule: MetronomeSDK::ScheduleDuration::OrHash
              ).void
            end
            attr_writer :access_schedule

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_contract_ids

            sig { params(applicable_contract_ids: T::Array[String]).void }
            attr_writer :applicable_contract_ids

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_ids

            sig { params(applicable_product_ids: T::Array[String]).void }
            attr_writer :applicable_product_ids

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :applicable_product_tags

            sig { params(applicable_product_tags: T::Array[String]).void }
            attr_writer :applicable_product_tags

            # The current balance of the credit or commit. This balance reflects the amount of
            # credit or commit that the customer has access to use at this moment - thus,
            # expired and upcoming credit or commit segments contribute 0 to the balance. The
            # balance will match the sum of all ledger entries with the exception of the case
            # where the sum of negative manual ledger entries exceeds the positive amount
            # remaining on the credit or commit - in that case, the balance will be 0. All
            # manual ledger entries associated with active credit or commit segments are
            # included in the balance, including future-dated manual ledger entries.
            sig { returns(T.nilable(Float)) }
            attr_reader :balance

            sig { params(balance: Float).void }
            attr_writer :balance

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract
                )
              )
            end
            attr_reader :contract

            sig do
              params(
                contract:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract::OrHash
              ).void
            end
            attr_writer :contract

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # A list of ordered events that impact the balance of a credit. For example, an
            # invoice deduction or an expiration.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::Variants
                  ]
                )
              )
            end
            attr_reader :ledger

            sig do
              params(
                ledger:
                  T::Array[
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::OrHash
                    )
                  ]
              ).void
            end
            attr_writer :ledger

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :netsuite_sales_order_id

            sig { params(netsuite_sales_order_id: String).void }
            attr_writer :netsuite_sales_order_id

            # If multiple credits or commits are applicable, the one with the lower priority
            # will apply first.
            sig { returns(T.nilable(Float)) }
            attr_reader :priority

            sig { params(priority: Float).void }
            attr_writer :priority

            # This field's availability is dependent on your client's configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :salesforce_opportunity_id

            sig { params(salesforce_opportunity_id: String).void }
            attr_writer :salesforce_opportunity_id

            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Specifier::OrHash
                  ]
              ).void
            end
            attr_writer :specifiers

            sig do
              params(
                id: String,
                product:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product::OrHash,
                type:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Type::OrSymbol,
                access_schedule: MetronomeSDK::ScheduleDuration::OrHash,
                applicable_contract_ids: T::Array[String],
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                balance: Float,
                contract:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract::OrHash,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                ledger:
                  T::Array[
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::OrHash,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::OrHash
                    )
                  ],
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                salesforce_opportunity_id: String,
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Specifier::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              product:,
              type:,
              # The schedule that the customer will gain access to the credits.
              access_schedule: nil,
              applicable_contract_ids: nil,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              # The current balance of the credit or commit. This balance reflects the amount of
              # credit or commit that the customer has access to use at this moment - thus,
              # expired and upcoming credit or commit segments contribute 0 to the balance. The
              # balance will match the sum of all ledger entries with the exception of the case
              # where the sum of negative manual ledger entries exceeds the positive amount
              # remaining on the credit or commit - in that case, the balance will be 0. All
              # manual ledger entries associated with active credit or commit segments are
              # included in the balance, including future-dated manual ledger entries.
              balance: nil,
              contract: nil,
              custom_fields: nil,
              description: nil,
              # A list of ordered events that impact the balance of a credit. For example, an
              # invoice deduction or an expiration.
              ledger: nil,
              name: nil,
              # This field's availability is dependent on your client's configuration.
              netsuite_sales_order_id: nil,
              # If multiple credits or commits are applicable, the one with the lower priority
              # will apply first.
              priority: nil,
              # This field's availability is dependent on your client's configuration.
              salesforce_opportunity_id: nil,
              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown.
              specifiers: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  product:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product,
                  type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Type::TaggedSymbol,
                  access_schedule: MetronomeSDK::ScheduleDuration,
                  applicable_contract_ids: T::Array[String],
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  balance: Float,
                  contract:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  ledger:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::Variants
                    ],
                  name: String,
                  netsuite_sales_order_id: String,
                  priority: Float,
                  salesforce_opportunity_id: String,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Specifier
                    ]
                }
              )
            end
            def to_hash
            end

            class Product < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product,
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

            module Type
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT =
                T.let(
                  :CREDIT,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Type::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract,
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

            module Ledger
              extend MetronomeSDK::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry
                  )
                end

              class CreditSegmentStartLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(amount:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_SEGMENT_START =
                    T.let(
                      :CREDIT_SEGMENT_START,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class CreditAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :invoice_id

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_AUTOMATED_INVOICE_DEDUCTION =
                    T.let(
                      :CREDIT_AUTOMATED_INVOICE_DEDUCTION,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class CreditExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(amount:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_EXPIRATION =
                    T.let(
                      :CREDIT_EXPIRATION,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class CreditCanceledLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :invoice_id

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_CANCELED =
                    T.let(
                      :CREDIT_CANCELED,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class CreditCreditedLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :invoice_id

                sig { returns(String) }
                attr_accessor :segment_id

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  amount:,
                  invoice_id:,
                  segment_id:,
                  timestamp:,
                  type:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_CREDITED =
                    T.let(
                      :CREDIT_CREDITED,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class CreditManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :amount

                sig { returns(String) }
                attr_accessor :reason

                sig { returns(Time) }
                attr_accessor :timestamp

                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig do
                  params(
                    amount: Float,
                    reason: String,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(amount:, reason:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      reason: String,
                      timestamp: Time,
                      type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
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
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CREDIT_MANUAL =
                    T.let(
                      :CREDIT_MANUAL,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::Variants
                  ]
                )
              end
              def self.variants
              end
            end

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Specifier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :presentation_group_values

              sig do
                params(presentation_group_values: T::Hash[Symbol, String]).void
              end
              attr_writer :presentation_group_values

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :pricing_group_values

              sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
              attr_writer :pricing_group_values

              # If provided, the specifier will only apply to the product with the specified ID.
              sig { returns(T.nilable(String)) }
              attr_reader :product_id

              sig { params(product_id: String).void }
              attr_writer :product_id

              # If provided, the specifier will only apply to products with all the specified
              # tags.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :product_tags

              sig { params(product_tags: T::Array[String]).void }
              attr_writer :product_tags

              sig do
                params(
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                presentation_group_values: nil,
                pricing_group_values: nil,
                # If provided, the specifier will only apply to the product with the specified ID.
                product_id: nil,
                # If provided, the specifier will only apply to products with all the specified
                # tags.
                product_tags: nil
              )
              end

              sig do
                override.returns(
                  {
                    presentation_group_values: T::Hash[Symbol, String],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String]
                  }
                )
              end
              def to_hash
              end
            end
          end

          class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            end
            attr_accessor :billing_provider

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              )
            end
            attr_accessor :delivery_method

            # This field's availability is dependent on your client's configuration.
            sig do
              params(
                billing_provider:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::OrSymbol,
                delivery_method:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(billing_provider:, delivery_method:)
            end

            sig do
              override.returns(
                {
                  billing_provider:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol,
                  delivery_method:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AWS_MARKETPLACE =
                T.let(
                  :aws_marketplace,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :stripe,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              NETSUITE =
                T.let(
                  :netsuite,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              AZURE_MARKETPLACE =
                T.let(
                  :azure_marketplace,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              QUICKBOOKS_ONLINE =
                T.let(
                  :quickbooks_online,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              WORKDAY =
                T.let(
                  :workday,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )
              GCP_MARKETPLACE =
                T.let(
                  :gcp_marketplace,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DIRECT_TO_BILLING_PROVIDER =
                T.let(
                  :direct_to_billing_provider,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )
              AWS_SQS =
                T.let(
                  :aws_sqs,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )
              TACKLE =
                T.let(
                  :tackle,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )
              AWS_SNS =
                T.let(
                  :aws_sns,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
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
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOWEST_MULTIPLIER =
              T.let(
                :LOWEST_MULTIPLIER,
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization::TaggedSymbol
              )
            EXPLICIT =
              T.let(
                :EXPLICIT,
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit
              )
            end
            attr_reader :commit

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::OrHash
              ).void
            end
            attr_writer :commit

            # When set to false, the contract will not be evaluated against the
            # threshold_amount. Toggling to true will result an immediate evaluation,
            # regardless of prior state.
            sig { returns(T::Boolean) }
            attr_accessor :is_enabled

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig
              )
            end
            attr_reader :payment_gate_config

            sig do
              params(
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash
              ).void
            end
            attr_writer :payment_gate_config

            # Specify the amount the balance should be recharged to.
            sig { returns(Float) }
            attr_accessor :recharge_to_amount

            # Specify the threshold amount for the contract. Each time the contract's balance
            # lowers to this amount, a threshold charge will be initiated.
            sig { returns(Float) }
            attr_accessor :threshold_amount

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::OrHash,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::OrHash,
                recharge_to_amount: Float,
                threshold_amount: Float
              ).returns(T.attached_class)
            end
            def self.new(
              commit:,
              # When set to false, the contract will not be evaluated against the
              # threshold_amount. Toggling to true will result an immediate evaluation,
              # regardless of prior state.
              is_enabled:,
              payment_gate_config:,
              # Specify the amount the balance should be recharged to.
              recharge_to_amount:,
              # Specify the threshold amount for the contract. Each time the contract's balance
              # lowers to this amount, a threshold charge will be initiated.
              threshold_amount:
            )
            end

            sig do
              override.returns(
                {
                  commit:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                  recharge_to_amount: Float,
                  threshold_amount: Float
                }
              )
            end
            def to_hash
            end

            class Commit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # The commit product that will be used to generate the line item for commit
              # payment.
              sig { returns(String) }
              attr_accessor :product_id

              # Which products the threshold commit applies to. If both applicable_product_ids
              # and applicable_product_tags are not provided, the commit applies to all
              # products.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_ids

              sig { params(applicable_product_ids: T::Array[String]).void }
              attr_writer :applicable_product_ids

              # Which tags the threshold commit applies to. If both applicable_product_ids and
              # applicable_product_tags are not provided, the commit applies to all products.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_tags

              sig { params(applicable_product_tags: T::Array[String]).void }
              attr_writer :applicable_product_tags

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # Specify the name of the line item for the threshold charge. If left blank, it
              # will default to the commit product name.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # List of filters that determine what kind of customer usage draws down a commit
              # or credit. A customer's usage needs to meet the condition of at least one of the
              # specifiers to contribute to a commit's or credit's drawdown. This field cannot
              # be used together with `applicable_product_ids` or `applicable_product_tags`.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier
                    ]
                  )
                )
              end
              attr_reader :specifiers

              sig do
                params(
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
                    ]
                ).void
              end
              attr_writer :specifiers

              sig do
                params(
                  product_id: String,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  name: String,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # The commit product that will be used to generate the line item for commit
                # payment.
                product_id:,
                # Which products the threshold commit applies to. If both applicable_product_ids
                # and applicable_product_tags are not provided, the commit applies to all
                # products.
                applicable_product_ids: nil,
                # Which tags the threshold commit applies to. If both applicable_product_ids and
                # applicable_product_tags are not provided, the commit applies to all products.
                applicable_product_tags: nil,
                description: nil,
                # Specify the name of the line item for the threshold charge. If left blank, it
                # will default to the commit product name.
                name: nil,
                # List of filters that determine what kind of customer usage draws down a commit
                # or credit. A customer's usage needs to meet the condition of at least one of the
                # specifiers to contribute to a commit's or credit's drawdown. This field cannot
                # be used together with `applicable_product_ids` or `applicable_product_tags`.
                specifiers: nil
              )
              end

              sig do
                override.returns(
                  {
                    product_id: String,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    description: String,
                    name: String,
                    specifiers:
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier
                      ]
                  }
                )
              end
              def to_hash
              end

              class Specifier < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(T::Hash[Symbol, String])) }
                attr_reader :presentation_group_values

                sig do
                  params(
                    presentation_group_values: T::Hash[Symbol, String]
                  ).void
                end
                attr_writer :presentation_group_values

                sig { returns(T.nilable(T::Hash[Symbol, String])) }
                attr_reader :pricing_group_values

                sig do
                  params(pricing_group_values: T::Hash[Symbol, String]).void
                end
                attr_writer :pricing_group_values

                # If provided, the specifier will only apply to the product with the specified ID.
                sig { returns(T.nilable(String)) }
                attr_reader :product_id

                sig { params(product_id: String).void }
                attr_writer :product_id

                # If provided, the specifier will only apply to products with all the specified
                # tags.
                sig { returns(T.nilable(T::Array[String])) }
                attr_reader :product_tags

                sig { params(product_tags: T::Array[String]).void }
                attr_writer :product_tags

                sig do
                  params(
                    presentation_group_values: T::Hash[Symbol, String],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  presentation_group_values: nil,
                  pricing_group_values: nil,
                  # If provided, the specifier will only apply to the product with the specified ID.
                  product_id: nil,
                  # If provided, the specifier will only apply to products with all the specified
                  # tags.
                  product_tags: nil
                )
                end

                sig do
                  override.returns(
                    {
                      presentation_group_values: T::Hash[Symbol, String],
                      pricing_group_values: T::Hash[Symbol, String],
                      product_id: String,
                      product_tags: T::Array[String]
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              end
              attr_accessor :payment_gate_type

              # Only applicable if using Stripe as your payment gateway through Metronome.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              attr_reader :stripe_config

              sig do
                params(
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                ).void
              end
              attr_writer :stripe_config

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                )
              end
              attr_reader :tax_type

              sig do
                params(
                  tax_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).void
              end
              attr_writer :tax_type

              sig do
                params(
                  payment_gate_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                  tax_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Gate access to the commit balance based on successful collection of payment.
                # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                # facilitate payment using your own payment integration. Select NONE if you do not
                # wish to payment gate the commit balance.
                payment_gate_type:,
                # Only applicable if using Stripe as your payment gateway through Metronome.
                stripe_config: nil,
                # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                # not wish Metronome to calculate tax on your behalf. Leaving this field blank
                # will default to NONE.
                tax_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    payment_gate_type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                    stripe_config:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              module PaymentGateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                EXTERNAL =
                  T.let(
                    :EXTERNAL,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # If left blank, will default to INVOICE
                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                end
                attr_accessor :payment_type

                # Only applicable if using Stripe as your payment gateway through Metronome.
                sig do
                  params(
                    payment_type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # If left blank, will default to INVOICE
                  payment_type:
                )
                end

                sig do
                  override.returns(
                    {
                      payment_type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # If left blank, will default to INVOICE
                module PaymentType
                  extend MetronomeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INVOICE =
                    T.let(
                      :INVOICE,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  PAYMENT_INTENT =
                    T.let(
                      :PAYMENT_INTENT,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              module TaxType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            # The amount of commit to grant.
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount
              )
            end
            attr_reader :access_amount

            sig do
              params(
                access_amount:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount::OrHash
              ).void
            end
            attr_writer :access_amount

            # The amount of time the created commits will be valid for
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration
              )
            end
            attr_reader :commit_duration

            sig do
              params(
                commit_duration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::OrHash
              ).void
            end
            attr_writer :commit_duration

            # Will be passed down to the individual commits
            sig { returns(Float) }
            attr_accessor :priority

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product::OrHash
              ).void
            end
            attr_writer :product

            # Whether the created commits will use the commit rate or list rate
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RateType::TaggedSymbol
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
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract
                )
              )
            end
            attr_reader :contract

            sig do
              params(
                contract:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract::OrHash
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

            # The amount the customer should be billed for the commit. Not required.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount
                )
              )
            end
            attr_reader :invoice_amount

            sig do
              params(
                invoice_amount:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount::OrHash
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
            # subscription_config:
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                )
              )
            end
            attr_reader :proration

            sig do
              params(
                proration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration::OrSymbol
              ).void
            end
            attr_writer :proration

            # The frequency at which the recurring commits will be created. If not provided: -
            # The commits will be created on the usage invoice frequency. If provided: - The
            # period defined in the duration will correspond to this frequency. - Commits will
            # be created aligned with the recurring commit's starting_at rather than the usage
            # invoice dates.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              )
            end
            attr_reader :recurrence_frequency

            sig do
              params(
                recurrence_frequency:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::OrSymbol
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
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Specifier::OrHash
                  ]
              ).void
            end
            attr_writer :specifiers

            sig do
              params(
                id: String,
                access_amount:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount::OrHash,
                commit_duration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::OrHash,
                priority: Float,
                product:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product::OrHash,
                rate_type:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RateType::OrSymbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract::OrHash,
                description: String,
                ending_before: Time,
                invoice_amount:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount::OrHash,
                name: String,
                netsuite_sales_order_id: String,
                proration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Specifier::OrHash
                  ]
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
              # The amount the customer should be billed for the commit. Not required.
              invoice_amount: nil,
              # Displayed on invoices. Will be passed through to the individual commits
              name: nil,
              # Will be passed down to the individual commits
              netsuite_sales_order_id: nil,
              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              # subscription_config:
              proration: nil,
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
              specifiers: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount,
                  commit_duration:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RateType::TaggedSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract,
                  description: String,
                  ending_before: Time,
                  invoice_amount:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol,
                  recurrence_frequency:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol,
                  rollover_fraction: Float,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Specifier
                    ]
                }
              )
            end
            def to_hash
            end

            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount,
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
                  { credit_type_id: String, unit_price: Float, quantity: Float }
                )
              end
              def to_hash
              end
            end

            class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :value

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                  )
                )
              end
              attr_reader :unit

              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::OrSymbol
                ).void
              end
              attr_writer :unit

              # The amount of time the created commits will be valid for
              sig do
                params(
                  value: Float,
                  unit:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(value:, unit: nil)
              end

              sig do
                override.returns(
                  {
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PERIODS =
                  T.let(
                    :PERIODS,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product,
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

            # Whether the created commits will use the commit rate or list rate
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract,
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount,
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
                  { credit_type_id: String, quantity: Float, unit_price: Float }
                )
              end
              def to_hash
              end
            end

            # Determines whether the first and last commit will be prorated. If not provided,
            # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            # subscription_config:
            module Proration
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                )
              FIRST =
                T.let(
                  :FIRST,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                )
              LAST =
                T.let(
                  :LAST,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                )
              FIRST_AND_LAST =
                T.let(
                  :FIRST_AND_LAST,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration::TaggedSymbol
                  ]
                )
              end
              def self.values
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Specifier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :presentation_group_values

              sig do
                params(presentation_group_values: T::Hash[Symbol, String]).void
              end
              attr_writer :presentation_group_values

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :pricing_group_values

              sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
              attr_writer :pricing_group_values

              # If provided, the specifier will only apply to the product with the specified ID.
              sig { returns(T.nilable(String)) }
              attr_reader :product_id

              sig { params(product_id: String).void }
              attr_writer :product_id

              # If provided, the specifier will only apply to products with all the specified
              # tags.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :product_tags

              sig { params(product_tags: T::Array[String]).void }
              attr_writer :product_tags

              sig do
                params(
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                presentation_group_values: nil,
                pricing_group_values: nil,
                # If provided, the specifier will only apply to the product with the specified ID.
                product_id: nil,
                # If provided, the specifier will only apply to products with all the specified
                # tags.
                product_tags: nil
              )
              end

              sig do
                override.returns(
                  {
                    presentation_group_values: T::Hash[Symbol, String],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String]
                  }
                )
              end
              def to_hash
              end
            end
          end

          class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            # The amount of commit to grant.
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount
              )
            end
            attr_reader :access_amount

            sig do
              params(
                access_amount:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount::OrHash
              ).void
            end
            attr_writer :access_amount

            # The amount of time the created commits will be valid for
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration
              )
            end
            attr_reader :commit_duration

            sig do
              params(
                commit_duration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::OrHash
              ).void
            end
            attr_writer :commit_duration

            # Will be passed down to the individual commits
            sig { returns(Float) }
            attr_accessor :priority

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product
              )
            end
            attr_reader :product

            sig do
              params(
                product:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product::OrHash
              ).void
            end
            attr_writer :product

            # Whether the created commits will use the commit rate or list rate
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RateType::TaggedSymbol
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
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract
                )
              )
            end
            attr_reader :contract

            sig do
              params(
                contract:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract::OrHash
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
            # subscription_config:
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                )
              )
            end
            attr_reader :proration

            sig do
              params(
                proration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration::OrSymbol
              ).void
            end
            attr_writer :proration

            # The frequency at which the recurring commits will be created. If not provided: -
            # The commits will be created on the usage invoice frequency. If provided: - The
            # period defined in the duration will correspond to this frequency. - Commits will
            # be created aligned with the recurring commit's starting_at rather than the usage
            # invoice dates.
            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              )
            end
            attr_reader :recurrence_frequency

            sig do
              params(
                recurrence_frequency:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::OrSymbol
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
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Specifier
                  ]
                )
              )
            end
            attr_reader :specifiers

            sig do
              params(
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Specifier::OrHash
                  ]
              ).void
            end
            attr_writer :specifiers

            sig do
              params(
                id: String,
                access_amount:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount::OrHash,
                commit_duration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::OrHash,
                priority: Float,
                product:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product::OrHash,
                rate_type:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RateType::OrSymbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract::OrHash,
                description: String,
                ending_before: Time,
                name: String,
                netsuite_sales_order_id: String,
                proration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration::OrSymbol,
                recurrence_frequency:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::OrSymbol,
                rollover_fraction: Float,
                specifiers:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Specifier::OrHash
                  ]
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
              # Displayed on invoices. Will be passed through to the individual commits
              name: nil,
              # Will be passed down to the individual commits
              netsuite_sales_order_id: nil,
              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              # subscription_config:
              proration: nil,
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
              specifiers: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  access_amount:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount,
                  commit_duration:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration,
                  priority: Float,
                  product:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product,
                  rate_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RateType::TaggedSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  contract:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract,
                  description: String,
                  ending_before: Time,
                  name: String,
                  netsuite_sales_order_id: String,
                  proration:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol,
                  recurrence_frequency:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol,
                  rollover_fraction: Float,
                  specifiers:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Specifier
                    ]
                }
              )
            end
            def to_hash
            end

            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount,
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
                  { credit_type_id: String, unit_price: Float, quantity: Float }
                )
              end
              def to_hash
              end
            end

            class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :value

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                  )
                )
              end
              attr_reader :unit

              sig do
                params(
                  unit:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::OrSymbol
                ).void
              end
              attr_writer :unit

              # The amount of time the created commits will be valid for
              sig do
                params(
                  value: Float,
                  unit:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(value:, unit: nil)
              end

              sig do
                override.returns(
                  {
                    value: Float,
                    unit:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PERIODS =
                  T.let(
                    :PERIODS,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product,
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

            # Whether the created commits will use the commit rate or list rate
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RateType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT_RATE =
                T.let(
                  :COMMIT_RATE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RateType::TaggedSymbol
                )
              LIST_RATE =
                T.let(
                  :LIST_RATE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RateType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RateType::TaggedSymbol
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract,
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
            # subscription_config:
            module Proration
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                )
              FIRST =
                T.let(
                  :FIRST,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                )
              LAST =
                T.let(
                  :LAST,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                )
              FIRST_AND_LAST =
                T.let(
                  :FIRST_AND_LAST,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration::TaggedSymbol
                  ]
                )
              end
              def self.values
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
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :QUARTERLY,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :ANNUAL,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                )
              WEEKLY =
                T.let(
                  :WEEKLY,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Specifier,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :presentation_group_values

              sig do
                params(presentation_group_values: T::Hash[Symbol, String]).void
              end
              attr_writer :presentation_group_values

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :pricing_group_values

              sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
              attr_writer :pricing_group_values

              # If provided, the specifier will only apply to the product with the specified ID.
              sig { returns(T.nilable(String)) }
              attr_reader :product_id

              sig { params(product_id: String).void }
              attr_writer :product_id

              # If provided, the specifier will only apply to products with all the specified
              # tags.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :product_tags

              sig { params(product_tags: T::Array[String]).void }
              attr_writer :product_tags

              sig do
                params(
                  presentation_group_values: T::Hash[Symbol, String],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                presentation_group_values: nil,
                pricing_group_values: nil,
                # If provided, the specifier will only apply to the product with the specified ID.
                product_id: nil,
                # If provided, the specifier will only apply to products with all the specified
                # tags.
                product_tags: nil
              )
              end

              sig do
                override.returns(
                  {
                    presentation_group_values: T::Hash[Symbol, String],
                    pricing_group_values: T::Hash[Symbol, String],
                    product_id: String,
                    product_tags: T::Array[String]
                  }
                )
              end
              def to_hash
              end
            end
          end

          class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType::TaggedSymbol
              )
            end
            attr_accessor :reseller_type

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment
                ]
              )
            end
            attr_accessor :segments

            sig do
              params(
                reseller_type:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType::OrSymbol,
                segments:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(reseller_type:, segments:)
            end

            sig do
              override.returns(
                {
                  reseller_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType::TaggedSymbol,
                  segments:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment
                    ]
                }
              )
            end
            def to_hash
            end

            module ResellerType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AWS =
                T.let(
                  :AWS,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType::TaggedSymbol
                )
              AWS_PRO_SERVICE =
                T.let(
                  :AWS_PRO_SERVICE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType::TaggedSymbol
                )
              GCP =
                T.let(
                  :GCP,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType::TaggedSymbol
                )
              GCP_PRO_SERVICE =
                T.let(
                  :GCP_PRO_SERVICE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Segment < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :fraction

              sig { returns(String) }
              attr_accessor :netsuite_reseller_id

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
                )
              end
              attr_accessor :reseller_type

              sig { returns(Time) }
              attr_accessor :starting_at

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_ids

              sig { params(applicable_product_ids: T::Array[String]).void }
              attr_writer :applicable_product_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :applicable_product_tags

              sig { params(applicable_product_tags: T::Array[String]).void }
              attr_writer :applicable_product_tags

              sig { returns(T.nilable(String)) }
              attr_reader :aws_account_number

              sig { params(aws_account_number: String).void }
              attr_writer :aws_account_number

              sig { returns(T.nilable(String)) }
              attr_reader :aws_offer_id

              sig { params(aws_offer_id: String).void }
              attr_writer :aws_offer_id

              sig { returns(T.nilable(String)) }
              attr_reader :aws_payer_reference_id

              sig { params(aws_payer_reference_id: String).void }
              attr_writer :aws_payer_reference_id

              sig { returns(T.nilable(Time)) }
              attr_reader :ending_before

              sig { params(ending_before: Time).void }
              attr_writer :ending_before

              sig { returns(T.nilable(String)) }
              attr_reader :gcp_account_id

              sig { params(gcp_account_id: String).void }
              attr_writer :gcp_account_id

              sig { returns(T.nilable(String)) }
              attr_reader :gcp_offer_id

              sig { params(gcp_offer_id: String).void }
              attr_writer :gcp_offer_id

              sig { returns(T.nilable(Float)) }
              attr_reader :reseller_contract_value

              sig { params(reseller_contract_value: Float).void }
              attr_writer :reseller_contract_value

              sig do
                params(
                  fraction: Float,
                  netsuite_reseller_id: String,
                  reseller_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType::OrSymbol,
                  starting_at: Time,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  aws_account_number: String,
                  aws_offer_id: String,
                  aws_payer_reference_id: String,
                  ending_before: Time,
                  gcp_account_id: String,
                  gcp_offer_id: String,
                  reseller_contract_value: Float
                ).returns(T.attached_class)
              end
              def self.new(
                fraction:,
                netsuite_reseller_id:,
                reseller_type:,
                starting_at:,
                applicable_product_ids: nil,
                applicable_product_tags: nil,
                aws_account_number: nil,
                aws_offer_id: nil,
                aws_payer_reference_id: nil,
                ending_before: nil,
                gcp_account_id: nil,
                gcp_offer_id: nil,
                reseller_contract_value: nil
              )
              end

              sig do
                override.returns(
                  {
                    fraction: Float,
                    netsuite_reseller_id: String,
                    reseller_type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType::TaggedSymbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    aws_account_number: String,
                    aws_offer_id: String,
                    aws_payer_reference_id: String,
                    ending_before: Time,
                    gcp_account_id: String,
                    gcp_offer_id: String,
                    reseller_contract_value: Float
                  }
                )
              end
              def to_hash
              end

              module ResellerType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AWS =
                  T.let(
                    :AWS,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
                  )
                AWS_PRO_SERVICE =
                  T.let(
                    :AWS_PRO_SERVICE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
                  )
                GCP =
                  T.let(
                    :GCP,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
                  )
                GCP_PRO_SERVICE =
                  T.let(
                    :GCP_PRO_SERVICE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
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
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALL =
              T.let(
                :ALL,
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit
              )
            end
            attr_reader :commit

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit::OrHash
              ).void
            end
            attr_writer :commit

            # When set to false, the contract will not be evaluated against the
            # threshold_amount. Toggling to true will result an immediate evaluation,
            # regardless of prior state.
            sig { returns(T::Boolean) }
            attr_accessor :is_enabled

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig
              )
            end
            attr_reader :payment_gate_config

            sig do
              params(
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::OrHash
              ).void
            end
            attr_writer :payment_gate_config

            # Specify the threshold amount for the contract. Each time the contract's usage
            # hits this amount, a threshold charge will be initiated.
            sig { returns(Float) }
            attr_accessor :threshold_amount

            sig do
              params(
                commit:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit::OrHash,
                is_enabled: T::Boolean,
                payment_gate_config:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::OrHash,
                threshold_amount: Float
              ).returns(T.attached_class)
            end
            def self.new(
              commit:,
              # When set to false, the contract will not be evaluated against the
              # threshold_amount. Toggling to true will result an immediate evaluation,
              # regardless of prior state.
              is_enabled:,
              payment_gate_config:,
              # Specify the threshold amount for the contract. Each time the contract's usage
              # hits this amount, a threshold charge will be initiated.
              threshold_amount:
            )
            end

            sig do
              override.returns(
                {
                  commit:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit,
                  is_enabled: T::Boolean,
                  payment_gate_config:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig,
                  threshold_amount: Float
                }
              )
            end
            def to_hash
            end

            class Commit < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # The commit product that will be used to generate the line item for commit
              # payment.
              sig { returns(String) }
              attr_accessor :product_id

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # Specify the name of the line item for the threshold charge. If left blank, it
              # will default to the commit product name.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig do
                params(
                  product_id: String,
                  description: String,
                  name: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The commit product that will be used to generate the line item for commit
                # payment.
                product_id:,
                description: nil,
                # Specify the name of the line item for the threshold charge. If left blank, it
                # will default to the commit product name.
                name: nil
              )
              end

              sig do
                override.returns(
                  { product_id: String, description: String, name: String }
                )
              end
              def to_hash
              end
            end

            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                )
              end
              attr_accessor :payment_gate_type

              # Only applicable if using Stripe as your payment gateway through Metronome.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              attr_reader :stripe_config

              sig do
                params(
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash
                ).void
              end
              attr_writer :stripe_config

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                )
              end
              attr_reader :tax_type

              sig do
                params(
                  tax_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).void
              end
              attr_writer :tax_type

              sig do
                params(
                  payment_gate_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
                  stripe_config:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::OrHash,
                  tax_type:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Gate access to the commit balance based on successful collection of payment.
                # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                # facilitate payment using your own payment integration. Select NONE if you do not
                # wish to payment gate the commit balance.
                payment_gate_type:,
                # Only applicable if using Stripe as your payment gateway through Metronome.
                stripe_config: nil,
                # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                # not wish Metronome to calculate tax on your behalf. Leaving this field blank
                # will default to NONE.
                tax_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    payment_gate_type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                    stripe_config:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                    tax_type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              module PaymentGateType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )
                EXTERNAL =
                  T.let(
                    :EXTERNAL,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      MetronomeSDK::Internal::AnyHash
                    )
                  end

                # If left blank, will default to INVOICE
                sig do
                  returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  )
                end
                attr_accessor :payment_type

                # Only applicable if using Stripe as your payment gateway through Metronome.
                sig do
                  params(
                    payment_type:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # If left blank, will default to INVOICE
                  payment_type:
                )
                end

                sig do
                  override.returns(
                    {
                      payment_type:
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # If left blank, will default to INVOICE
                module PaymentType
                  extend MetronomeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INVOICE =
                    T.let(
                      :INVOICE,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )
                  PAYMENT_INTENT =
                    T.let(
                      :PAYMENT_INTENT,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              module TaxType
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NONE =
                  T.let(
                    :NONE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )
                STRIPE =
                  T.let(
                    :STRIPE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Subscription < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
              )
            end
            attr_accessor :collection_schedule

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration
              )
            end
            attr_reader :proration

            sig do
              params(
                proration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::OrHash
              ).void
            end
            attr_writer :proration

            sig do
              returns(
                T::Array[
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::QuantitySchedule
                ]
              )
            end
            attr_accessor :quantity_schedule

            sig { returns(Time) }
            attr_accessor :starting_at

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate
              )
            end
            attr_reader :subscription_rate

            sig do
              params(
                subscription_rate:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::OrHash
              ).void
            end
            attr_writer :subscription_rate

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :custom_fields

            sig { params(custom_fields: T::Hash[Symbol, String]).void }
            attr_writer :custom_fields

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig { returns(T.nilable(Time)) }
            attr_reader :ending_before

            sig { params(ending_before: Time).void }
            attr_writer :ending_before

            sig { returns(T.nilable(String)) }
            attr_reader :fiat_credit_type_id

            sig { params(fiat_credit_type_id: String).void }
            attr_writer :fiat_credit_type_id

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(
                collection_schedule:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::CollectionSchedule::OrSymbol,
                proration:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::OrHash,
                quantity_schedule:
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::QuantitySchedule::OrHash
                  ],
                starting_at: Time,
                subscription_rate:
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::OrHash,
                id: String,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                ending_before: Time,
                fiat_credit_type_id: String,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              collection_schedule:,
              proration:,
              quantity_schedule:,
              starting_at:,
              subscription_rate:,
              id: nil,
              custom_fields: nil,
              description: nil,
              ending_before: nil,
              fiat_credit_type_id: nil,
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  collection_schedule:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::CollectionSchedule::TaggedSymbol,
                  proration:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration,
                  quantity_schedule:
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::QuantitySchedule
                    ],
                  starting_at: Time,
                  subscription_rate:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate,
                  id: String,
                  custom_fields: T::Hash[Symbol, String],
                  description: String,
                  ending_before: Time,
                  fiat_credit_type_id: String,
                  name: String
                }
              )
            end
            def to_hash
            end

            module CollectionSchedule
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::CollectionSchedule
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ADVANCE =
                T.let(
                  :ADVANCE,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
                )
              ARREARS =
                T.let(
                  :ARREARS,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::CollectionSchedule::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Proration < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                )
              end
              attr_accessor :invoice_behavior

              sig { returns(T::Boolean) }
              attr_accessor :is_prorated

              sig do
                params(
                  invoice_behavior:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::OrSymbol,
                  is_prorated: T::Boolean
                ).returns(T.attached_class)
              end
              def self.new(invoice_behavior:, is_prorated:)
              end

              sig do
                override.returns(
                  {
                    invoice_behavior:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol,
                    is_prorated: T::Boolean
                  }
                )
              end
              def to_hash
              end

              module InvoiceBehavior
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                BILL_IMMEDIATELY =
                  T.let(
                    :BILL_IMMEDIATELY,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                  )
                BILL_ON_NEXT_COLLECTION_DATE =
                  T.let(
                    :BILL_ON_NEXT_COLLECTION_DATE,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class QuantitySchedule < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::QuantitySchedule,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :quantity

              sig { returns(Time) }
              attr_accessor :starting_at

              sig { returns(T.nilable(Time)) }
              attr_reader :ending_before

              sig { params(ending_before: Time).void }
              attr_writer :ending_before

              sig do
                params(
                  quantity: Float,
                  starting_at: Time,
                  ending_before: Time
                ).returns(T.attached_class)
              end
              def self.new(quantity:, starting_at:, ending_before: nil)
              end

              sig do
                override.returns(
                  { quantity: Float, starting_at: Time, ending_before: Time }
                )
              end
              def to_hash
              end
            end

            class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                )
              end
              attr_accessor :billing_frequency

              sig do
                returns(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::Product
                )
              end
              attr_reader :product

              sig do
                params(
                  product:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::Product::OrHash
                ).void
              end
              attr_writer :product

              sig do
                params(
                  billing_frequency:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::OrSymbol,
                  product:
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::Product::OrHash
                ).returns(T.attached_class)
              end
              def self.new(billing_frequency:, product:)
              end

              sig do
                override.returns(
                  {
                    billing_frequency:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol,
                    product:
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::Product
                  }
                )
              end
              def to_hash
              end

              module BillingFrequency
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTHLY =
                  T.let(
                    :MONTHLY,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :QUARTERLY,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                ANNUAL =
                  T.let(
                    :ANNUAL,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )
                WEEKLY =
                  T.let(
                    :WEEKLY,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Product < MetronomeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::Product,
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
