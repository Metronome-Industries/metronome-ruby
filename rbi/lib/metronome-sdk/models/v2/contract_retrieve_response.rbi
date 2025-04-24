# typed: strong

module MetronomeSDK
  module Models
    module V2
      class ContractRetrieveResponse < MetronomeSDK::BaseModel
        sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data) }
        def data
        end

        sig do
          params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data)
            .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data)
        end
        def data=(_)
        end

        sig { params(data: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data).void }
        def initialize(data:)
        end

        sig { override.returns({data: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data}) }
        def to_hash
        end

        class Data < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit]) }
          def commits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit])
          end
          def commits=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(String) }
          def created_by
          end

          sig { params(_: String).returns(String) }
          def created_by=(_)
          end

          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig { returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override]) }
          def overrides
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override])
          end
          def overrides=(_)
          end

          sig { returns(T::Array[MetronomeSDK::Models::ScheduledCharge]) }
          def scheduled_charges
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::ScheduledCharge])
              .returns(T::Array[MetronomeSDK::Models::ScheduledCharge])
          end
          def scheduled_charges=(_)
          end

          sig { returns(Time) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition]) }
          def transitions
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition])
          end
          def transitions=(_)
          end

          sig { returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter]) }
          def usage_filter
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter])
          end
          def usage_filter=(_)
          end

          sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule) }
          def usage_statement_schedule
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule)
              .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule)
          end
          def usage_statement_schedule=(_)
          end

          sig { returns(T.nilable(Time)) }
          def archived_at
          end

          sig { params(_: Time).returns(Time) }
          def archived_at=(_)
          end

          sig do
            returns(
              T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CreditBalanceThresholdConfiguration)
            )
          end
          def credit_balance_threshold_configuration
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CreditBalanceThresholdConfiguration)
              .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CreditBalanceThresholdConfiguration)
          end
          def credit_balance_threshold_configuration=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit])) }
          def credits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit])
          end
          def credits=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def custom_fields
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def custom_fields=(_)
          end

          sig do
            returns(
              T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration)
            )
          end
          def customer_billing_provider_configuration
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration)
              .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration)
          end
          def customer_billing_provider_configuration=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Discount])) }
          def discounts
          end

          sig { params(_: T::Array[MetronomeSDK::Models::Discount]).returns(T::Array[MetronomeSDK::Models::Discount]) }
          def discounts=(_)
          end

          sig { returns(T.nilable(Time)) }
          def ending_before
          end

          sig { params(_: Time).returns(Time) }
          def ending_before=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def multiplier_override_prioritization
          end

          sig { params(_: Symbol).returns(Symbol) }
          def multiplier_override_prioritization=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(Float)) }
          def net_payment_terms_days
          end

          sig { params(_: Float).returns(Float) }
          def net_payment_terms_days=(_)
          end

          sig { returns(T.nilable(String)) }
          def netsuite_sales_order_id
          end

          sig { params(_: String).returns(String) }
          def netsuite_sales_order_id=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::ProService])) }
          def professional_services
          end

          sig { params(_: T::Array[MetronomeSDK::Models::ProService]).returns(T::Array[MetronomeSDK::Models::ProService]) }
          def professional_services=(_)
          end

          sig { returns(T.nilable(String)) }
          def rate_card_id
          end

          sig { params(_: String).returns(String) }
          def rate_card_id=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit])) }
          def recurring_commits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit])
          end
          def recurring_commits=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit])) }
          def recurring_credits
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit])
          end
          def recurring_credits=(_)
          end

          sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty])) }
          def reseller_royalties
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty])
              .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty])
          end
          def reseller_royalties=(_)
          end

          sig { returns(T.nilable(String)) }
          def salesforce_opportunity_id
          end

          sig { params(_: String).returns(String) }
          def salesforce_opportunity_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def scheduled_charges_on_usage_invoices
          end

          sig { params(_: Symbol).returns(Symbol) }
          def scheduled_charges_on_usage_invoices=(_)
          end

          sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration)) }
          def spend_threshold_configuration
          end

          sig do
            params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration)
              .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration)
          end
          def spend_threshold_configuration=(_)
          end

          sig { returns(T.nilable(Float)) }
          def total_contract_value
          end

          sig { params(_: Float).returns(Float) }
          def total_contract_value=(_)
          end

          sig { returns(T.nilable(String)) }
          def uniqueness_key
          end

          sig { params(_: String).returns(String) }
          def uniqueness_key=(_)
          end

          sig do
            params(
              id: String,
              commits: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit],
              created_at: Time,
              created_by: String,
              customer_id: String,
              overrides: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override],
              scheduled_charges: T::Array[MetronomeSDK::Models::ScheduledCharge],
              starting_at: Time,
              transitions: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition],
              usage_filter: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter],
              usage_statement_schedule: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule,
              archived_at: Time,
              credit_balance_threshold_configuration: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CreditBalanceThresholdConfiguration,
              credits: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit],
              custom_fields: T::Hash[Symbol, String],
              customer_billing_provider_configuration: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration,
              discounts: T::Array[MetronomeSDK::Models::Discount],
              ending_before: Time,
              multiplier_override_prioritization: Symbol,
              name: String,
              net_payment_terms_days: Float,
              netsuite_sales_order_id: String,
              professional_services: T::Array[MetronomeSDK::Models::ProService],
              rate_card_id: String,
              recurring_commits: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit],
              recurring_credits: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit],
              reseller_royalties: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty],
              salesforce_opportunity_id: String,
              scheduled_charges_on_usage_invoices: Symbol,
              spend_threshold_configuration: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration,
              total_contract_value: Float,
              uniqueness_key: String
            )
              .void
          end
          def initialize(
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
            credit_balance_threshold_configuration: nil,
            credits: nil,
            custom_fields: nil,
            customer_billing_provider_configuration: nil,
            discounts: nil,
            ending_before: nil,
            multiplier_override_prioritization: nil,
            name: nil,
            net_payment_terms_days: nil,
            netsuite_sales_order_id: nil,
            professional_services: nil,
            rate_card_id: nil,
            recurring_commits: nil,
            recurring_credits: nil,
            reseller_royalties: nil,
            salesforce_opportunity_id: nil,
            scheduled_charges_on_usage_invoices: nil,
            spend_threshold_configuration: nil,
            total_contract_value: nil,
            uniqueness_key: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  commits: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit],
                  created_at: Time,
                  created_by: String,
                  customer_id: String,
                  overrides: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override],
                  scheduled_charges: T::Array[MetronomeSDK::Models::ScheduledCharge],
                  starting_at: Time,
                  transitions: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition],
                  usage_filter: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter],
                  usage_statement_schedule: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule,
                  archived_at: Time,
                  credit_balance_threshold_configuration: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CreditBalanceThresholdConfiguration,
                  credits: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit],
                  custom_fields: T::Hash[Symbol, String],
                  customer_billing_provider_configuration: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration,
                  discounts: T::Array[MetronomeSDK::Models::Discount],
                  ending_before: Time,
                  multiplier_override_prioritization: Symbol,
                  name: String,
                  net_payment_terms_days: Float,
                  netsuite_sales_order_id: String,
                  professional_services: T::Array[MetronomeSDK::Models::ProService],
                  rate_card_id: String,
                  recurring_commits: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit],
                  recurring_credits: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit],
                  reseller_royalties: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty],
                  salesforce_opportunity_id: String,
                  scheduled_charges_on_usage_invoices: Symbol,
                  spend_threshold_configuration: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration,
                  total_contract_value: Float,
                  uniqueness_key: String
                }
              )
          end
          def to_hash
          end

          class Commit < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product)
            end
            def product=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::ScheduleDuration)) }
            def access_schedule
            end

            sig { params(_: MetronomeSDK::Models::ScheduleDuration).returns(MetronomeSDK::Models::ScheduleDuration) }
            def access_schedule=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_contract_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_contract_ids=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_product_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_product_ids=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_product_tags
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_product_tags=(_)
            end

            sig { returns(T.nilable(Time)) }
            def archived_at
            end

            sig { params(_: Time).returns(Time) }
            def archived_at=(_)
            end

            sig { returns(T.nilable(Float)) }
            def balance
            end

            sig { params(_: Float).returns(Float) }
            def balance=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract)) }
            def contract
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract)
            end
            def contract=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            def custom_fields
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def custom_fields=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: String).returns(String) }
            def description=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract)) }
            def invoice_contract
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract)
            end
            def invoice_contract=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::SchedulePointInTime)) }
            def invoice_schedule
            end

            sig { params(_: MetronomeSDK::Models::SchedulePointInTime).returns(MetronomeSDK::Models::SchedulePointInTime) }
            def invoice_schedule=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[
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
                  ]
                )
              )
            end
            def ledger
            end

            sig do
              params(
                _: T::Array[
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
                ]
              )
                .returns(
                  T::Array[
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
                  ]
                )
            end
            def ledger=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def netsuite_sales_order_id
            end

            sig { params(_: String).returns(String) }
            def netsuite_sales_order_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def priority
            end

            sig { params(_: Float).returns(Float) }
            def priority=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def rate_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def rate_type=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom)) }
            def rolled_over_from
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom)
            end
            def rolled_over_from=(_)
            end

            sig { returns(T.nilable(Float)) }
            def rollover_fraction
            end

            sig { params(_: Float).returns(Float) }
            def rollover_fraction=(_)
            end

            sig { returns(T.nilable(String)) }
            def salesforce_opportunity_id
            end

            sig { params(_: String).returns(String) }
            def salesforce_opportunity_id=(_)
            end

            sig do
              params(
                id: String,
                product: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product,
                type: Symbol,
                access_schedule: MetronomeSDK::Models::ScheduleDuration,
                applicable_contract_ids: T::Array[String],
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                archived_at: Time,
                balance: Float,
                contract: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                invoice_contract: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract,
                invoice_schedule: MetronomeSDK::Models::SchedulePointInTime,
                ledger: T::Array[
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
                ],
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                rate_type: Symbol,
                rolled_over_from: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom,
                rollover_fraction: Float,
                salesforce_opportunity_id: String
              )
                .void
            end
            def initialize(
              id:,
              product:,
              type:,
              access_schedule: nil,
              applicable_contract_ids: nil,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              archived_at: nil,
              balance: nil,
              contract: nil,
              custom_fields: nil,
              description: nil,
              invoice_contract: nil,
              invoice_schedule: nil,
              ledger: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              priority: nil,
              rate_type: nil,
              rolled_over_from: nil,
              rollover_fraction: nil,
              salesforce_opportunity_id: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    product: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product,
                    type: Symbol,
                    access_schedule: MetronomeSDK::Models::ScheduleDuration,
                    applicable_contract_ids: T::Array[String],
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    archived_at: Time,
                    balance: Float,
                    contract: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract,
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    invoice_contract: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract,
                    invoice_schedule: MetronomeSDK::Models::SchedulePointInTime,
                    ledger: T::Array[
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
                    ],
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    rate_type: Symbol,
                    rolled_over_from: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom,
                    rollover_fraction: Float,
                    salesforce_opportunity_id: String
                  }
                )
            end
            def to_hash
            end

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
              end
            end

            class Type < MetronomeSDK::Enum
              abstract!

              PREPAID = :PREPAID
              POSTPAID = :POSTPAID

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Contract < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { params(id: String).void }
              def initialize(id:)
              end

              sig { override.returns({id: String}) }
              def to_hash
              end
            end

            class InvoiceContract < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { params(id: String).void }
              def initialize(id:)
              end

              sig { override.returns({id: String}) }
              def to_hash
              end
            end

            class Ledger < MetronomeSDK::Union
              abstract!

              class PrepaidCommitSegmentStartLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Float, segment_id: String, timestamp: Time, type: Symbol).void }
                def initialize(amount:, segment_id:, timestamp:, type:)
                end

                sig { override.returns({amount: Float, segment_id: String, timestamp: Time, type: Symbol}) }
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def invoice_id
                end

                sig { params(_: String).returns(String) }
                def invoice_id=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type: Symbol
                  ).void
                end
                def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type: Symbol
                    }
                  )
                end
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PrepaidCommitRolloverLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def new_contract_id
                end

                sig { params(_: String).returns(String) }
                def new_contract_id=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig do
                  params(
                    amount: Float,
                    new_contract_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type: Symbol
                  ).void
                end
                def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                end

                sig do
                  override
                    .returns({
                               amount: Float,
                               new_contract_id: String,
                               segment_id: String,
                               timestamp: Time,
                               type: Symbol
                             })
                end
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PrepaidCommitExpirationLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Float, segment_id: String, timestamp: Time, type: Symbol).void }
                def initialize(amount:, segment_id:, timestamp:, type:)
                end

                sig { override.returns({amount: Float, segment_id: String, timestamp: Time, type: Symbol}) }
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PrepaidCommitCanceledLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def invoice_id
                end

                sig { params(_: String).returns(String) }
                def invoice_id=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type: Symbol
                  ).void
                end
                def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type: Symbol
                    }
                  )
                end
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PrepaidCommitCreditedLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def invoice_id
                end

                sig { params(_: String).returns(String) }
                def invoice_id=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type: Symbol
                  ).void
                end
                def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type: Symbol
                    }
                  )
                end
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PostpaidCommitInitialBalanceLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Float, timestamp: Time, type: Symbol).void }
                def initialize(amount:, timestamp:, type:)
                end

                sig { override.returns({amount: Float, timestamp: Time, type: Symbol}) }
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def invoice_id
                end

                sig { params(_: String).returns(String) }
                def invoice_id=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type: Symbol
                  ).void
                end
                def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type: Symbol
                    }
                  )
                end
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PostpaidCommitRolloverLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def new_contract_id
                end

                sig { params(_: String).returns(String) }
                def new_contract_id=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig do
                  params(
                    amount: Float,
                    new_contract_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type: Symbol
                  ).void
                end
                def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                end

                sig do
                  override
                    .returns({
                               amount: Float,
                               new_contract_id: String,
                               segment_id: String,
                               timestamp: Time,
                               type: Symbol
                             })
                end
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PostpaidCommitTrueupLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def invoice_id
                end

                sig { params(_: String).returns(String) }
                def invoice_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Float, invoice_id: String, timestamp: Time, type: Symbol).void }
                def initialize(amount:, invoice_id:, timestamp:, type:)
                end

                sig { override.returns({amount: Float, invoice_id: String, timestamp: Time, type: Symbol}) }
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PrepaidCommitManualLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def reason
                end

                sig { params(_: String).returns(String) }
                def reason=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Float, reason: String, timestamp: Time, type: Symbol).void }
                def initialize(amount:, reason:, timestamp:, type:)
                end

                sig { override.returns({amount: Float, reason: String, timestamp: Time, type: Symbol}) }
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PostpaidCommitManualLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def reason
                end

                sig { params(_: String).returns(String) }
                def reason=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Float, reason: String, timestamp: Time, type: Symbol).void }
                def initialize(amount:, reason:, timestamp:, type:)
                end

                sig { override.returns({amount: Float, reason: String, timestamp: Time, type: Symbol}) }
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class PostpaidCommitExpirationLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Float, timestamp: Time, type: Symbol).void }
                def initialize(amount:, timestamp:, type:)
                end

                sig { override.returns({amount: Float, timestamp: Time, type: Symbol}) }
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              sig do
                override
                  .returns(
                    [[NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry]]
                  )
              end
              private_class_method def self.variants
              end
            end

            class RateType < MetronomeSDK::Enum
              abstract!

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class RolledOverFrom < MetronomeSDK::BaseModel
              sig { returns(String) }
              def commit_id
              end

              sig { params(_: String).returns(String) }
              def commit_id=(_)
              end

              sig { returns(String) }
              def contract_id
              end

              sig { params(_: String).returns(String) }
              def contract_id=(_)
              end

              sig { params(commit_id: String, contract_id: String).void }
              def initialize(commit_id:, contract_id:)
              end

              sig { override.returns({commit_id: String, contract_id: String}) }
              def to_hash
              end
            end
          end

          class Override < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_product_tags
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_product_tags=(_)
            end

            sig { returns(T.nilable(Time)) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def entitled
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def entitled=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_commit_specific
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_commit_specific=(_)
            end

            sig { returns(T.nilable(Float)) }
            def multiplier
            end

            sig { params(_: Float).returns(Float) }
            def multiplier=(_)
            end

            sig do
              returns(
                T.nilable(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier])
              )
            end
            def override_specifiers
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier])
                .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier])
            end
            def override_specifiers=(_)
            end

            sig do
              returns(
                T.nilable(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier])
              )
            end
            def override_tiers
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier])
                .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier])
            end
            def override_tiers=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate)) }
            def overwrite_rate
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate)
            end
            def overwrite_rate=(_)
            end

            sig { returns(T.nilable(Float)) }
            def priority
            end

            sig { params(_: Float).returns(Float) }
            def priority=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product)) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product)
            end
            def product=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def target
            end

            sig { params(_: Symbol).returns(Symbol) }
            def target=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig do
              params(
                id: String,
                starting_at: Time,
                applicable_product_tags: T::Array[String],
                ending_before: Time,
                entitled: T::Boolean,
                is_commit_specific: T::Boolean,
                multiplier: Float,
                override_specifiers: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier],
                override_tiers: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier],
                overwrite_rate: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate,
                priority: Float,
                product: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product,
                target: Symbol,
                type: Symbol
              )
                .void
            end
            def initialize(
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
              override
                .returns(
                  {
                    id: String,
                    starting_at: Time,
                    applicable_product_tags: T::Array[String],
                    ending_before: Time,
                    entitled: T::Boolean,
                    is_commit_specific: T::Boolean,
                    multiplier: Float,
                    override_specifiers: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier],
                    override_tiers: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier],
                    overwrite_rate: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate,
                    priority: Float,
                    product: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product,
                    target: Symbol,
                    type: Symbol
                  }
                )
            end
            def to_hash
            end

            class OverrideSpecifier < MetronomeSDK::BaseModel
              sig { returns(T.nilable(Symbol)) }
              def billing_frequency
              end

              sig { params(_: Symbol).returns(Symbol) }
              def billing_frequency=(_)
              end

              sig { returns(T.nilable(T::Array[String])) }
              def commit_ids
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def commit_ids=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
              def presentation_group_values
              end

              sig do
                params(_: T::Hash[Symbol, T.nilable(String)]).returns(T::Hash[Symbol, T.nilable(String)])
              end
              def presentation_group_values=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              def pricing_group_values
              end

              sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
              def pricing_group_values=(_)
              end

              sig { returns(T.nilable(String)) }
              def product_id
              end

              sig { params(_: String).returns(String) }
              def product_id=(_)
              end

              sig { returns(T.nilable(T::Array[String])) }
              def product_tags
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def product_tags=(_)
              end

              sig { returns(T.nilable(T::Array[String])) }
              def recurring_commit_ids
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def recurring_commit_ids=(_)
              end

              sig { returns(T.nilable(T::Array[String])) }
              def recurring_credit_ids
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def recurring_credit_ids=(_)
              end

              sig do
                params(
                  billing_frequency: Symbol,
                  commit_ids: T::Array[String],
                  presentation_group_values: T::Hash[Symbol, T.nilable(String)],
                  pricing_group_values: T::Hash[Symbol, String],
                  product_id: String,
                  product_tags: T::Array[String],
                  recurring_commit_ids: T::Array[String],
                  recurring_credit_ids: T::Array[String]
                )
                  .void
              end
              def initialize(
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
                override
                  .returns(
                    {
                      billing_frequency: Symbol,
                      commit_ids: T::Array[String],
                      presentation_group_values: T::Hash[Symbol, T.nilable(String)],
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

              class BillingFrequency < MetronomeSDK::Enum
                abstract!

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class OverrideTier < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def multiplier
              end

              sig { params(_: Float).returns(Float) }
              def multiplier=(_)
              end

              sig { returns(T.nilable(Float)) }
              def size
              end

              sig { params(_: Float).returns(Float) }
              def size=(_)
              end

              sig { params(multiplier: Float, size: Float).void }
              def initialize(multiplier:, size: nil)
              end

              sig { override.returns({multiplier: Float, size: Float}) }
              def to_hash
              end
            end

            class OverwriteRate < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def rate_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def rate_type=(_)
              end

              sig { returns(T.nilable(MetronomeSDK::Models::CreditTypeData)) }
              def credit_type
              end

              sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
              def credit_type=(_)
              end

              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              def custom_rate
              end

              sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
              def custom_rate=(_)
              end

              sig { returns(T.nilable(T::Boolean)) }
              def is_prorated
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def is_prorated=(_)
              end

              sig { returns(T.nilable(Float)) }
              def price
              end

              sig { params(_: Float).returns(Float) }
              def price=(_)
              end

              sig { returns(T.nilable(Float)) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Tier])) }
              def tiers
              end

              sig { params(_: T::Array[MetronomeSDK::Models::Tier]).returns(T::Array[MetronomeSDK::Models::Tier]) }
              def tiers=(_)
              end

              sig do
                params(
                  rate_type: Symbol,
                  credit_type: MetronomeSDK::Models::CreditTypeData,
                  custom_rate: T::Hash[Symbol, T.anything],
                  is_prorated: T::Boolean,
                  price: Float,
                  quantity: Float,
                  tiers: T::Array[MetronomeSDK::Models::Tier]
                )
                  .void
              end
              def initialize(
                rate_type:,
                credit_type: nil,
                custom_rate: nil,
                is_prorated: nil,
                price: nil,
                quantity: nil,
                tiers: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      rate_type: Symbol,
                      credit_type: MetronomeSDK::Models::CreditTypeData,
                      custom_rate: T::Hash[Symbol, T.anything],
                      is_prorated: T::Boolean,
                      price: Float,
                      quantity: Float,
                      tiers: T::Array[MetronomeSDK::Models::Tier]
                    }
                  )
              end
              def to_hash
              end

              class RateType < MetronomeSDK::Enum
                abstract!

                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                CUSTOM = :CUSTOM

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
              end
            end

            class Target < MetronomeSDK::Enum
              abstract!

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Type < MetronomeSDK::Enum
              abstract!

              OVERWRITE = :OVERWRITE
              MULTIPLIER = :MULTIPLIER
              TIERED = :TIERED

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class Transition < MetronomeSDK::BaseModel
            sig { returns(String) }
            def from_contract_id
            end

            sig { params(_: String).returns(String) }
            def from_contract_id=(_)
            end

            sig { returns(String) }
            def to_contract_id
            end

            sig { params(_: String).returns(String) }
            def to_contract_id=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(from_contract_id: String, to_contract_id: String, type: Symbol).void }
            def initialize(from_contract_id:, to_contract_id:, type:)
            end

            sig { override.returns({from_contract_id: String, to_contract_id: String, type: Symbol}) }
            def to_hash
            end

            class Type < MetronomeSDK::Enum
              abstract!

              SUPERSEDE = :SUPERSEDE
              RENEWAL = :RENEWAL

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class UsageFilter < MetronomeSDK::BaseModel
            sig { returns(String) }
            def group_key
            end

            sig { params(_: String).returns(String) }
            def group_key=(_)
            end

            sig { returns(T::Array[String]) }
            def group_values
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def group_values=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { returns(T.nilable(Time)) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig do
              params(
                group_key: String,
                group_values: T::Array[String],
                starting_at: Time,
                ending_before: Time
              ).void
            end
            def initialize(group_key:, group_values:, starting_at:, ending_before: nil)
            end

            sig do
              override
                .returns({
                           group_key: String,
                           group_values: T::Array[String],
                           starting_at: Time,
                           ending_before: Time
                         })
            end
            def to_hash
            end
          end

          class UsageStatementSchedule < MetronomeSDK::BaseModel
            sig { returns(Time) }
            def billing_anchor_date
            end

            sig { params(_: Time).returns(Time) }
            def billing_anchor_date=(_)
            end

            sig { returns(Symbol) }
            def frequency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def frequency=(_)
            end

            sig { params(billing_anchor_date: Time, frequency: Symbol).void }
            def initialize(billing_anchor_date:, frequency:)
            end

            sig { override.returns({billing_anchor_date: Time, frequency: Symbol}) }
            def to_hash
            end

            class Frequency < MetronomeSDK::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class CreditBalanceThresholdConfiguration < MetronomeSDK::BaseModel
            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CreditBalanceThresholdConfiguration::Commit
              )
            end
            def commit
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CreditBalanceThresholdConfiguration::Commit
              )
                .returns(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CreditBalanceThresholdConfiguration::Commit
                )
            end
            def commit=(_)
            end

            sig { returns(T::Boolean) }
            def is_enabled
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_enabled=(_)
            end

            sig { returns(Float) }
            def recharge_to_amount
            end

            sig { params(_: Float).returns(Float) }
            def recharge_to_amount=(_)
            end

            sig { returns(Float) }
            def threshold_amount
            end

            sig { params(_: Float).returns(Float) }
            def threshold_amount=(_)
            end

            sig do
              params(
                commit: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CreditBalanceThresholdConfiguration::Commit,
                is_enabled: T::Boolean,
                recharge_to_amount: Float,
                threshold_amount: Float
              )
                .void
            end
            def initialize(commit:, is_enabled:, recharge_to_amount:, threshold_amount:)
            end

            sig do
              override
                .returns(
                  {
                    commit: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CreditBalanceThresholdConfiguration::Commit,
                    is_enabled: T::Boolean,
                    recharge_to_amount: Float,
                    threshold_amount: Float
                  }
                )
            end
            def to_hash
            end

            class Commit < MetronomeSDK::BaseModel
              sig { returns(String) }
              def product_id
              end

              sig { params(_: String).returns(String) }
              def product_id=(_)
              end

              sig { returns(T.nilable(T::Array[String])) }
              def applicable_product_ids
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def applicable_product_ids=(_)
              end

              sig { returns(T.nilable(T::Array[String])) }
              def applicable_product_tags
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def applicable_product_tags=(_)
              end

              sig { returns(T.nilable(String)) }
              def description
              end

              sig { params(_: String).returns(String) }
              def description=(_)
              end

              sig { returns(T.nilable(String)) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig do
                params(
                  product_id: String,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  name: String
                )
                  .void
              end
              def initialize(
                product_id:,
                applicable_product_ids: nil,
                applicable_product_tags: nil,
                description: nil,
                name: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      product_id: String,
                      applicable_product_ids: T::Array[String],
                      applicable_product_tags: T::Array[String],
                      description: String,
                      name: String
                    }
                  )
              end
              def to_hash
              end
            end
          end

          class Credit < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product)
            end
            def product=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::ScheduleDuration)) }
            def access_schedule
            end

            sig { params(_: MetronomeSDK::Models::ScheduleDuration).returns(MetronomeSDK::Models::ScheduleDuration) }
            def access_schedule=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_contract_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_contract_ids=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_product_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_product_ids=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_product_tags
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_product_tags=(_)
            end

            sig { returns(T.nilable(Float)) }
            def balance
            end

            sig { params(_: Float).returns(Float) }
            def balance=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract)) }
            def contract
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract)
            end
            def contract=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            def custom_fields
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def custom_fields=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: String).returns(String) }
            def description=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry
                  )
                  ]
                )
              )
            end
            def ledger
            end

            sig do
              params(
                _: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry
                )
                ]
              )
                .returns(
                  T::Array[
                  T.any(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry,
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry
                  )
                  ]
                )
            end
            def ledger=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def netsuite_sales_order_id
            end

            sig { params(_: String).returns(String) }
            def netsuite_sales_order_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def priority
            end

            sig { params(_: Float).returns(Float) }
            def priority=(_)
            end

            sig { returns(T.nilable(String)) }
            def salesforce_opportunity_id
            end

            sig { params(_: String).returns(String) }
            def salesforce_opportunity_id=(_)
            end

            sig do
              params(
                id: String,
                product: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product,
                type: Symbol,
                access_schedule: MetronomeSDK::Models::ScheduleDuration,
                applicable_contract_ids: T::Array[String],
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                balance: Float,
                contract: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract,
                custom_fields: T::Hash[Symbol, String],
                description: String,
                ledger: T::Array[
                T.any(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry,
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry
                )
                ],
                name: String,
                netsuite_sales_order_id: String,
                priority: Float,
                salesforce_opportunity_id: String
              )
                .void
            end
            def initialize(
              id:,
              product:,
              type:,
              access_schedule: nil,
              applicable_contract_ids: nil,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              balance: nil,
              contract: nil,
              custom_fields: nil,
              description: nil,
              ledger: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              priority: nil,
              salesforce_opportunity_id: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    product: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product,
                    type: Symbol,
                    access_schedule: MetronomeSDK::Models::ScheduleDuration,
                    applicable_contract_ids: T::Array[String],
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    balance: Float,
                    contract: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract,
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    ledger: T::Array[
                    T.any(
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry,
                      MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry
                    )
                    ],
                    name: String,
                    netsuite_sales_order_id: String,
                    priority: Float,
                    salesforce_opportunity_id: String
                  }
                )
            end
            def to_hash
            end

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
              end
            end

            class Type < MetronomeSDK::Enum
              abstract!

              CREDIT = :CREDIT

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Contract < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { params(id: String).void }
              def initialize(id:)
              end

              sig { override.returns({id: String}) }
              def to_hash
              end
            end

            class Ledger < MetronomeSDK::Union
              abstract!

              class CreditSegmentStartLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Float, segment_id: String, timestamp: Time, type: Symbol).void }
                def initialize(amount:, segment_id:, timestamp:, type:)
                end

                sig { override.returns({amount: Float, segment_id: String, timestamp: Time, type: Symbol}) }
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class CreditAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def invoice_id
                end

                sig { params(_: String).returns(String) }
                def invoice_id=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type: Symbol
                  ).void
                end
                def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type: Symbol
                    }
                  )
                end
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class CreditExpirationLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Float, segment_id: String, timestamp: Time, type: Symbol).void }
                def initialize(amount:, segment_id:, timestamp:, type:)
                end

                sig { override.returns({amount: Float, segment_id: String, timestamp: Time, type: Symbol}) }
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  CREDIT_EXPIRATION = :CREDIT_EXPIRATION

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class CreditCanceledLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def invoice_id
                end

                sig { params(_: String).returns(String) }
                def invoice_id=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type: Symbol
                  ).void
                end
                def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type: Symbol
                    }
                  )
                end
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  CREDIT_CANCELED = :CREDIT_CANCELED

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class CreditCreditedLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def invoice_id
                end

                sig { params(_: String).returns(String) }
                def invoice_id=(_)
                end

                sig { returns(String) }
                def segment_id
                end

                sig { params(_: String).returns(String) }
                def segment_id=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig do
                  params(
                    amount: Float,
                    invoice_id: String,
                    segment_id: String,
                    timestamp: Time,
                    type: Symbol
                  ).void
                end
                def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      invoice_id: String,
                      segment_id: String,
                      timestamp: Time,
                      type: Symbol
                    }
                  )
                end
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  CREDIT_CREDITED = :CREDIT_CREDITED

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class CreditManualLedgerEntry < MetronomeSDK::BaseModel
                sig { returns(Float) }
                def amount
                end

                sig { params(_: Float).returns(Float) }
                def amount=(_)
                end

                sig { returns(String) }
                def reason
                end

                sig { params(_: String).returns(String) }
                def reason=(_)
                end

                sig { returns(Time) }
                def timestamp
                end

                sig { params(_: Time).returns(Time) }
                def timestamp=(_)
                end

                sig { returns(Symbol) }
                def type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def type=(_)
                end

                sig { params(amount: Float, reason: String, timestamp: Time, type: Symbol).void }
                def initialize(amount:, reason:, timestamp:, type:)
                end

                sig { override.returns({amount: Float, reason: String, timestamp: Time, type: Symbol}) }
                def to_hash
                end

                class Type < MetronomeSDK::Enum
                  abstract!

                  CREDIT_MANUAL = :CREDIT_MANUAL

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              sig do
                override
                  .returns(
                    [[NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry], [NilClass, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry]]
                  )
              end
              private_class_method def self.variants
              end
            end
          end

          class CustomerBillingProviderConfiguration < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def billing_provider
            end

            sig { params(_: Symbol).returns(Symbol) }
            def billing_provider=(_)
            end

            sig { returns(Symbol) }
            def delivery_method
            end

            sig { params(_: Symbol).returns(Symbol) }
            def delivery_method=(_)
            end

            sig { params(billing_provider: Symbol, delivery_method: Symbol).void }
            def initialize(billing_provider:, delivery_method:)
            end

            sig { override.returns({billing_provider: Symbol, delivery_method: Symbol}) }
            def to_hash
            end

            class BillingProvider < MetronomeSDK::Enum
              abstract!

              AWS_MARKETPLACE = :aws_marketplace
              STRIPE = :stripe
              NETSUITE = :netsuite
              CUSTOM = :custom
              AZURE_MARKETPLACE = :azure_marketplace
              QUICKBOOKS_ONLINE = :quickbooks_online
              WORKDAY = :workday
              GCP_MARKETPLACE = :gcp_marketplace

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class DeliveryMethod < MetronomeSDK::Enum
              abstract!

              DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
              AWS_SQS = :aws_sqs
              TACKLE = :tackle
              AWS_SNS = :aws_sns

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class MultiplierOverridePrioritization < MetronomeSDK::Enum
            abstract!

            LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
            EXPLICIT = :EXPLICIT

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class RecurringCommit < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount) }
            def access_amount
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount)
            end
            def access_amount=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration) }
            def commit_duration
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration)
            end
            def commit_duration=(_)
            end

            sig { returns(Float) }
            def priority
            end

            sig { params(_: Float).returns(Float) }
            def priority=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product)
            end
            def product=(_)
            end

            sig { returns(Symbol) }
            def rate_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def rate_type=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_product_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_product_ids=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_product_tags
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_product_tags=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract)) }
            def contract
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract)
            end
            def contract=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: String).returns(String) }
            def description=(_)
            end

            sig { returns(T.nilable(Time)) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig do
              returns(
                T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount)
              )
            end
            def invoice_amount
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount)
            end
            def invoice_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def netsuite_sales_order_id
            end

            sig { params(_: String).returns(String) }
            def netsuite_sales_order_id=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def proration
            end

            sig { params(_: Symbol).returns(Symbol) }
            def proration=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def recurrence_frequency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def recurrence_frequency=(_)
            end

            sig { returns(T.nilable(Float)) }
            def rollover_fraction
            end

            sig { params(_: Float).returns(Float) }
            def rollover_fraction=(_)
            end

            sig do
              params(
                id: String,
                access_amount: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount,
                commit_duration: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration,
                priority: Float,
                product: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product,
                rate_type: Symbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract,
                description: String,
                ending_before: Time,
                invoice_amount: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount,
                name: String,
                netsuite_sales_order_id: String,
                proration: Symbol,
                recurrence_frequency: Symbol,
                rollover_fraction: Float
              )
                .void
            end
            def initialize(
              id:,
              access_amount:,
              commit_duration:,
              priority:,
              product:,
              rate_type:,
              starting_at:,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              contract: nil,
              description: nil,
              ending_before: nil,
              invoice_amount: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              proration: nil,
              recurrence_frequency: nil,
              rollover_fraction: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    access_amount: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount,
                    commit_duration: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration,
                    priority: Float,
                    product: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product,
                    rate_type: Symbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract,
                    description: String,
                    ending_before: Time,
                    invoice_amount: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration: Symbol,
                    recurrence_frequency: Symbol,
                    rollover_fraction: Float
                  }
                )
            end
            def to_hash
            end

            class AccessAmount < MetronomeSDK::BaseModel
              sig { returns(String) }
              def credit_type_id
              end

              sig { params(_: String).returns(String) }
              def credit_type_id=(_)
              end

              sig { returns(Float) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(Float) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
              def initialize(credit_type_id:, quantity:, unit_price:)
              end

              sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
              def to_hash
              end
            end

            class CommitDuration < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def value
              end

              sig { params(_: Float).returns(Float) }
              def value=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def unit=(_)
              end

              sig { params(value: Float, unit: Symbol).void }
              def initialize(value:, unit: nil)
              end

              sig { override.returns({value: Float, unit: Symbol}) }
              def to_hash
              end

              class Unit < MetronomeSDK::Enum
                abstract!

                PERIODS = :PERIODS

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
              end
            end

            class RateType < MetronomeSDK::Enum
              abstract!

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Contract < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { params(id: String).void }
              def initialize(id:)
              end

              sig { override.returns({id: String}) }
              def to_hash
              end
            end

            class InvoiceAmount < MetronomeSDK::BaseModel
              sig { returns(String) }
              def credit_type_id
              end

              sig { params(_: String).returns(String) }
              def credit_type_id=(_)
              end

              sig { returns(Float) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(Float) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
              def initialize(credit_type_id:, quantity:, unit_price:)
              end

              sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
              def to_hash
              end
            end

            class Proration < MetronomeSDK::Enum
              abstract!

              NONE = :NONE
              FIRST = :FIRST
              LAST = :LAST
              FIRST_AND_LAST = :FIRST_AND_LAST

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class RecurrenceFrequency < MetronomeSDK::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class RecurringCredit < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount) }
            def access_amount
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount)
            end
            def access_amount=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration) }
            def commit_duration
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration)
            end
            def commit_duration=(_)
            end

            sig { returns(Float) }
            def priority
            end

            sig { params(_: Float).returns(Float) }
            def priority=(_)
            end

            sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product) }
            def product
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product)
            end
            def product=(_)
            end

            sig { returns(Symbol) }
            def rate_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def rate_type=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_product_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_product_ids=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def applicable_product_tags
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applicable_product_tags=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract)) }
            def contract
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract)
            end
            def contract=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: String).returns(String) }
            def description=(_)
            end

            sig { returns(T.nilable(Time)) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(T.nilable(String)) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def netsuite_sales_order_id
            end

            sig { params(_: String).returns(String) }
            def netsuite_sales_order_id=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def proration
            end

            sig { params(_: Symbol).returns(Symbol) }
            def proration=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def recurrence_frequency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def recurrence_frequency=(_)
            end

            sig { returns(T.nilable(Float)) }
            def rollover_fraction
            end

            sig { params(_: Float).returns(Float) }
            def rollover_fraction=(_)
            end

            sig do
              params(
                id: String,
                access_amount: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount,
                commit_duration: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration,
                priority: Float,
                product: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product,
                rate_type: Symbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract,
                description: String,
                ending_before: Time,
                name: String,
                netsuite_sales_order_id: String,
                proration: Symbol,
                recurrence_frequency: Symbol,
                rollover_fraction: Float
              )
                .void
            end
            def initialize(
              id:,
              access_amount:,
              commit_duration:,
              priority:,
              product:,
              rate_type:,
              starting_at:,
              applicable_product_ids: nil,
              applicable_product_tags: nil,
              contract: nil,
              description: nil,
              ending_before: nil,
              name: nil,
              netsuite_sales_order_id: nil,
              proration: nil,
              recurrence_frequency: nil,
              rollover_fraction: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    access_amount: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount,
                    commit_duration: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration,
                    priority: Float,
                    product: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product,
                    rate_type: Symbol,
                    starting_at: Time,
                    applicable_product_ids: T::Array[String],
                    applicable_product_tags: T::Array[String],
                    contract: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract,
                    description: String,
                    ending_before: Time,
                    name: String,
                    netsuite_sales_order_id: String,
                    proration: Symbol,
                    recurrence_frequency: Symbol,
                    rollover_fraction: Float
                  }
                )
            end
            def to_hash
            end

            class AccessAmount < MetronomeSDK::BaseModel
              sig { returns(String) }
              def credit_type_id
              end

              sig { params(_: String).returns(String) }
              def credit_type_id=(_)
              end

              sig { returns(Float) }
              def quantity
              end

              sig { params(_: Float).returns(Float) }
              def quantity=(_)
              end

              sig { returns(Float) }
              def unit_price
              end

              sig { params(_: Float).returns(Float) }
              def unit_price=(_)
              end

              sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
              def initialize(credit_type_id:, quantity:, unit_price:)
              end

              sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
              def to_hash
              end
            end

            class CommitDuration < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def value
              end

              sig { params(_: Float).returns(Float) }
              def value=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def unit=(_)
              end

              sig { params(value: Float, unit: Symbol).void }
              def initialize(value:, unit: nil)
              end

              sig { override.returns({value: Float, unit: Symbol}) }
              def to_hash
              end

              class Unit < MetronomeSDK::Enum
                abstract!

                PERIODS = :PERIODS

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class Product < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(id: String, name: String).void }
              def initialize(id:, name:)
              end

              sig { override.returns({id: String, name: String}) }
              def to_hash
              end
            end

            class RateType < MetronomeSDK::Enum
              abstract!

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Contract < MetronomeSDK::BaseModel
              sig { returns(String) }
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { params(id: String).void }
              def initialize(id:)
              end

              sig { override.returns({id: String}) }
              def to_hash
              end
            end

            class Proration < MetronomeSDK::Enum
              abstract!

              NONE = :NONE
              FIRST = :FIRST
              LAST = :LAST
              FIRST_AND_LAST = :FIRST_AND_LAST

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class RecurrenceFrequency < MetronomeSDK::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class ResellerRoyalty < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def reseller_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def reseller_type=(_)
            end

            sig { returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment]) }
            def segments
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment])
                .returns(T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment])
            end
            def segments=(_)
            end

            sig do
              params(
                reseller_type: Symbol,
                segments: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment]
              )
                .void
            end
            def initialize(reseller_type:, segments:)
            end

            sig do
              override
                .returns(
                  {
                    reseller_type: Symbol,
                    segments: T::Array[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment]
                  }
                )
            end
            def to_hash
            end

            class ResellerType < MetronomeSDK::Enum
              abstract!

              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Segment < MetronomeSDK::BaseModel
              sig { returns(Float) }
              def fraction
              end

              sig { params(_: Float).returns(Float) }
              def fraction=(_)
              end

              sig { returns(String) }
              def netsuite_reseller_id
              end

              sig { params(_: String).returns(String) }
              def netsuite_reseller_id=(_)
              end

              sig { returns(Symbol) }
              def reseller_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def reseller_type=(_)
              end

              sig { returns(Time) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { returns(T.nilable(T::Array[String])) }
              def applicable_product_ids
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def applicable_product_ids=(_)
              end

              sig { returns(T.nilable(T::Array[String])) }
              def applicable_product_tags
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def applicable_product_tags=(_)
              end

              sig { returns(T.nilable(String)) }
              def aws_account_number
              end

              sig { params(_: String).returns(String) }
              def aws_account_number=(_)
              end

              sig { returns(T.nilable(String)) }
              def aws_offer_id
              end

              sig { params(_: String).returns(String) }
              def aws_offer_id=(_)
              end

              sig { returns(T.nilable(String)) }
              def aws_payer_reference_id
              end

              sig { params(_: String).returns(String) }
              def aws_payer_reference_id=(_)
              end

              sig { returns(T.nilable(Time)) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(T.nilable(String)) }
              def gcp_account_id
              end

              sig { params(_: String).returns(String) }
              def gcp_account_id=(_)
              end

              sig { returns(T.nilable(String)) }
              def gcp_offer_id
              end

              sig { params(_: String).returns(String) }
              def gcp_offer_id=(_)
              end

              sig { returns(T.nilable(Float)) }
              def reseller_contract_value
              end

              sig { params(_: Float).returns(Float) }
              def reseller_contract_value=(_)
              end

              sig do
                params(
                  fraction: Float,
                  netsuite_reseller_id: String,
                  reseller_type: Symbol,
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
                )
                  .void
              end
              def initialize(
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
                override
                  .returns(
                    {
                      fraction: Float,
                      netsuite_reseller_id: String,
                      reseller_type: Symbol,
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

              class ResellerType < MetronomeSDK::Enum
                abstract!

                AWS = :AWS
                AWS_PRO_SERVICE = :AWS_PRO_SERVICE
                GCP = :GCP
                GCP_PRO_SERVICE = :GCP_PRO_SERVICE

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class ScheduledChargesOnUsageInvoices < MetronomeSDK::Enum
            abstract!

            ALL = :ALL

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class SpendThresholdConfiguration < MetronomeSDK::BaseModel
            sig { returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit) }
            def commit
            end

            sig do
              params(_: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit)
                .returns(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit)
            end
            def commit=(_)
            end

            sig { returns(T::Boolean) }
            def is_enabled
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_enabled=(_)
            end

            sig do
              returns(
                MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig
              )
            end
            def payment_gate_config
            end

            sig do
              params(
                _: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig
              )
                .returns(
                  MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig
                )
            end
            def payment_gate_config=(_)
            end

            sig { returns(Float) }
            def threshold_amount
            end

            sig { params(_: Float).returns(Float) }
            def threshold_amount=(_)
            end

            sig do
              params(
                commit: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit,
                is_enabled: T::Boolean,
                payment_gate_config: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig,
                threshold_amount: Float
              )
                .void
            end
            def initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
            end

            sig do
              override
                .returns(
                  {
                    commit: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit,
                    is_enabled: T::Boolean,
                    payment_gate_config: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig,
                    threshold_amount: Float
                  }
                )
            end
            def to_hash
            end

            class Commit < MetronomeSDK::BaseModel
              sig { returns(String) }
              def product_id
              end

              sig { params(_: String).returns(String) }
              def product_id=(_)
              end

              sig { returns(T.nilable(String)) }
              def description
              end

              sig { params(_: String).returns(String) }
              def description=(_)
              end

              sig { returns(T.nilable(String)) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { params(product_id: String, description: String, name: String).void }
              def initialize(product_id:, description: nil, name: nil)
              end

              sig { override.returns({product_id: String, description: String, name: String}) }
              def to_hash
              end
            end

            class PaymentGateConfig < MetronomeSDK::BaseModel
              sig { returns(Symbol) }
              def payment_gate_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def payment_gate_type=(_)
              end

              sig do
                returns(
                  T.nilable(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
                )
              end
              def stripe_config
              end

              sig do
                params(
                  _: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                )
                  .returns(
                    MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                  )
              end
              def stripe_config=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def tax_type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def tax_type=(_)
              end

              sig do
                params(
                  payment_gate_type: Symbol,
                  stripe_config: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type: Symbol
                )
                  .void
              end
              def initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
              end

              sig do
                override
                  .returns(
                    {
                      payment_gate_type: Symbol,
                      stripe_config: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                      tax_type: Symbol
                    }
                  )
              end
              def to_hash
              end

              class PaymentGateType < MetronomeSDK::Enum
                abstract!

                NONE = :NONE
                STRIPE = :STRIPE
                EXTERNAL = :EXTERNAL

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class StripeConfig < MetronomeSDK::BaseModel
                sig { returns(Symbol) }
                def payment_type
                end

                sig { params(_: Symbol).returns(Symbol) }
                def payment_type=(_)
                end

                sig { params(payment_type: Symbol).void }
                def initialize(payment_type:)
                end

                sig { override.returns({payment_type: Symbol}) }
                def to_hash
                end

                class PaymentType < MetronomeSDK::Enum
                  abstract!

                  INVOICE = :INVOICE
                  PAYMENT_INTENT = :PAYMENT_INTENT

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end

              class TaxType < MetronomeSDK::Enum
                abstract!

                NONE = :NONE
                STRIPE = :STRIPE

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end
        end
      end
    end
  end
end
