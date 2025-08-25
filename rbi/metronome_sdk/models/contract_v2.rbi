# typed: strong

module MetronomeSDK
  module Models
    class ContractV2 < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::ContractV2, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[MetronomeSDK::ContractV2::Commit]) }
      attr_accessor :commits

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :created_by

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T::Array[MetronomeSDK::ContractV2::Override]) }
      attr_accessor :overrides

      sig { returns(T::Array[MetronomeSDK::ScheduledCharge]) }
      attr_accessor :scheduled_charges

      sig { returns(Time) }
      attr_accessor :starting_at

      sig { returns(T::Array[MetronomeSDK::ContractV2::Transition]) }
      attr_accessor :transitions

      sig { returns(T::Array[MetronomeSDK::ContractV2::UsageFilter]) }
      attr_accessor :usage_filter

      sig { returns(MetronomeSDK::ContractV2::UsageStatementSchedule) }
      attr_reader :usage_statement_schedule

      sig do
        params(
          usage_statement_schedule:
            MetronomeSDK::ContractV2::UsageStatementSchedule::OrHash
        ).void
      end
      attr_writer :usage_statement_schedule

      sig { returns(T.nilable(Time)) }
      attr_reader :archived_at

      sig { params(archived_at: Time).void }
      attr_writer :archived_at

      sig { returns(T.nilable(T::Array[MetronomeSDK::ContractV2::Credit])) }
      attr_reader :credits

      sig do
        params(credits: T::Array[MetronomeSDK::ContractV2::Credit::OrHash]).void
      end
      attr_writer :credits

      # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      # This field's availability is dependent on your client's configuration.
      sig do
        returns(
          T.nilable(
            MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration
          )
        )
      end
      attr_reader :customer_billing_provider_configuration

      sig do
        params(
          customer_billing_provider_configuration:
            MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::OrHash
        ).void
      end
      attr_writer :customer_billing_provider_configuration

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Discount])) }
      attr_reader :discounts

      sig { params(discounts: T::Array[MetronomeSDK::Discount::OrHash]).void }
      attr_writer :discounts

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      # Indicates whether there are more items than the limit for this endpoint. Use the
      # respective list endpoints to get the full lists.
      sig { returns(T.nilable(MetronomeSDK::ContractV2::HasMore)) }
      attr_reader :has_more

      sig { params(has_more: MetronomeSDK::ContractV2::HasMore::OrHash).void }
      attr_writer :has_more

      # Either a **parent** configuration with a list of children or a **child**
      # configuration with a single parent.
      sig { returns(T.nilable(MetronomeSDK::HierarchyConfiguration::Variants)) }
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
            MetronomeSDK::ContractV2::MultiplierOverridePrioritization::TaggedSymbol
          )
        )
      end
      attr_reader :multiplier_override_prioritization

      sig do
        params(
          multiplier_override_prioritization:
            MetronomeSDK::ContractV2::MultiplierOverridePrioritization::OrSymbol
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
        returns(T.nilable(MetronomeSDK::PrepaidBalanceThresholdConfigurationV2))
      end
      attr_reader :prepaid_balance_threshold_configuration

      sig do
        params(
          prepaid_balance_threshold_configuration:
            MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::OrHash
        ).void
      end
      attr_writer :prepaid_balance_threshold_configuration

      # Priority of the contract.
      sig { returns(T.nilable(Float)) }
      attr_reader :priority

      sig { params(priority: Float).void }
      attr_writer :priority

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
        returns(T.nilable(T::Array[MetronomeSDK::ContractV2::RecurringCommit]))
      end
      attr_reader :recurring_commits

      sig do
        params(
          recurring_commits:
            T::Array[MetronomeSDK::ContractV2::RecurringCommit::OrHash]
        ).void
      end
      attr_writer :recurring_commits

      sig do
        returns(T.nilable(T::Array[MetronomeSDK::ContractV2::RecurringCredit]))
      end
      attr_reader :recurring_credits

      sig do
        params(
          recurring_credits:
            T::Array[MetronomeSDK::ContractV2::RecurringCredit::OrHash]
        ).void
      end
      attr_writer :recurring_credits

      # This field's availability is dependent on your client's configuration.
      sig do
        returns(T.nilable(T::Array[MetronomeSDK::ContractV2::ResellerRoyalty]))
      end
      attr_reader :reseller_royalties

      sig do
        params(
          reseller_royalties:
            T::Array[MetronomeSDK::ContractV2::ResellerRoyalty::OrHash]
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
            MetronomeSDK::ContractV2::ScheduledChargesOnUsageInvoices::TaggedSymbol
          )
        )
      end
      attr_reader :scheduled_charges_on_usage_invoices

      sig do
        params(
          scheduled_charges_on_usage_invoices:
            MetronomeSDK::ContractV2::ScheduledChargesOnUsageInvoices::OrSymbol
        ).void
      end
      attr_writer :scheduled_charges_on_usage_invoices

      sig { returns(T.nilable(MetronomeSDK::SpendThresholdConfigurationV2)) }
      attr_reader :spend_threshold_configuration

      sig do
        params(
          spend_threshold_configuration:
            MetronomeSDK::SpendThresholdConfigurationV2::OrHash
        ).void
      end
      attr_writer :spend_threshold_configuration

      # List of subscriptions on the contract.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Subscription])) }
      attr_reader :subscriptions

      sig do
        params(subscriptions: T::Array[MetronomeSDK::Subscription::OrHash]).void
      end
      attr_writer :subscriptions

      sig { returns(T.nilable(Float)) }
      attr_reader :total_contract_value

      sig { params(total_contract_value: Float).void }
      attr_writer :total_contract_value

      # Optional uniqueness key to prevent duplicate contract creations.
      sig { returns(T.nilable(String)) }
      attr_reader :uniqueness_key

      sig { params(uniqueness_key: String).void }
      attr_writer :uniqueness_key

      sig do
        params(
          id: String,
          commits: T::Array[MetronomeSDK::ContractV2::Commit::OrHash],
          created_at: Time,
          created_by: String,
          customer_id: String,
          overrides: T::Array[MetronomeSDK::ContractV2::Override::OrHash],
          scheduled_charges: T::Array[MetronomeSDK::ScheduledCharge::OrHash],
          starting_at: Time,
          transitions: T::Array[MetronomeSDK::ContractV2::Transition::OrHash],
          usage_filter: T::Array[MetronomeSDK::ContractV2::UsageFilter::OrHash],
          usage_statement_schedule:
            MetronomeSDK::ContractV2::UsageStatementSchedule::OrHash,
          archived_at: Time,
          credits: T::Array[MetronomeSDK::ContractV2::Credit::OrHash],
          custom_fields: T::Hash[Symbol, String],
          customer_billing_provider_configuration:
            MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::OrHash,
          discounts: T::Array[MetronomeSDK::Discount::OrHash],
          ending_before: Time,
          has_more: MetronomeSDK::ContractV2::HasMore::OrHash,
          hierarchy_configuration:
            T.any(
              MetronomeSDK::HierarchyConfiguration::ParentHierarchyConfiguration::OrHash,
              MetronomeSDK::HierarchyConfiguration::ChildHierarchyConfiguration::OrHash
            ),
          multiplier_override_prioritization:
            MetronomeSDK::ContractV2::MultiplierOverridePrioritization::OrSymbol,
          name: String,
          net_payment_terms_days: Float,
          netsuite_sales_order_id: String,
          prepaid_balance_threshold_configuration:
            MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::OrHash,
          priority: Float,
          professional_services: T::Array[MetronomeSDK::ProService::OrHash],
          rate_card_id: String,
          recurring_commits:
            T::Array[MetronomeSDK::ContractV2::RecurringCommit::OrHash],
          recurring_credits:
            T::Array[MetronomeSDK::ContractV2::RecurringCredit::OrHash],
          reseller_royalties:
            T::Array[MetronomeSDK::ContractV2::ResellerRoyalty::OrHash],
          salesforce_opportunity_id: String,
          scheduled_charges_on_usage_invoices:
            MetronomeSDK::ContractV2::ScheduledChargesOnUsageInvoices::OrSymbol,
          spend_threshold_configuration:
            MetronomeSDK::SpendThresholdConfigurationV2::OrHash,
          subscriptions: T::Array[MetronomeSDK::Subscription::OrHash],
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
        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        custom_fields: nil,
        # This field's availability is dependent on your client's configuration.
        customer_billing_provider_configuration: nil,
        # This field's availability is dependent on your client's configuration.
        discounts: nil,
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
        # This field's availability is dependent on your client's configuration.
        netsuite_sales_order_id: nil,
        prepaid_balance_threshold_configuration: nil,
        # Priority of the contract.
        priority: nil,
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
        # List of subscriptions on the contract.
        subscriptions: nil,
        total_contract_value: nil,
        # Optional uniqueness key to prevent duplicate contract creations.
        uniqueness_key: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            commits: T::Array[MetronomeSDK::ContractV2::Commit],
            created_at: Time,
            created_by: String,
            customer_id: String,
            overrides: T::Array[MetronomeSDK::ContractV2::Override],
            scheduled_charges: T::Array[MetronomeSDK::ScheduledCharge],
            starting_at: Time,
            transitions: T::Array[MetronomeSDK::ContractV2::Transition],
            usage_filter: T::Array[MetronomeSDK::ContractV2::UsageFilter],
            usage_statement_schedule:
              MetronomeSDK::ContractV2::UsageStatementSchedule,
            archived_at: Time,
            credits: T::Array[MetronomeSDK::ContractV2::Credit],
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configuration:
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration,
            discounts: T::Array[MetronomeSDK::Discount],
            ending_before: Time,
            has_more: MetronomeSDK::ContractV2::HasMore,
            hierarchy_configuration:
              MetronomeSDK::HierarchyConfiguration::Variants,
            multiplier_override_prioritization:
              MetronomeSDK::ContractV2::MultiplierOverridePrioritization::TaggedSymbol,
            name: String,
            net_payment_terms_days: Float,
            netsuite_sales_order_id: String,
            prepaid_balance_threshold_configuration:
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2,
            priority: Float,
            professional_services: T::Array[MetronomeSDK::ProService],
            rate_card_id: String,
            recurring_commits:
              T::Array[MetronomeSDK::ContractV2::RecurringCommit],
            recurring_credits:
              T::Array[MetronomeSDK::ContractV2::RecurringCredit],
            reseller_royalties:
              T::Array[MetronomeSDK::ContractV2::ResellerRoyalty],
            salesforce_opportunity_id: String,
            scheduled_charges_on_usage_invoices:
              MetronomeSDK::ContractV2::ScheduledChargesOnUsageInvoices::TaggedSymbol,
            spend_threshold_configuration:
              MetronomeSDK::SpendThresholdConfigurationV2,
            subscriptions: T::Array[MetronomeSDK::Subscription],
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
              MetronomeSDK::ContractV2::Commit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(MetronomeSDK::ContractV2::Commit::Product) }
        attr_reader :product

        sig do
          params(
            product: MetronomeSDK::ContractV2::Commit::Product::OrHash
          ).void
        end
        attr_writer :product

        sig { returns(MetronomeSDK::ContractV2::Commit::Type::TaggedSymbol) }
        attr_accessor :type

        # The schedule that the customer will gain access to the credits purposed with
        # this commit.
        sig { returns(T.nilable(MetronomeSDK::ScheduleDuration)) }
        attr_reader :access_schedule

        sig do
          params(access_schedule: MetronomeSDK::ScheduleDuration::OrHash).void
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

        sig { returns(T.nilable(MetronomeSDK::ContractV2::Commit::Contract)) }
        attr_reader :contract

        sig do
          params(
            contract: MetronomeSDK::ContractV2::Commit::Contract::OrHash
          ).void
        end
        attr_writer :contract

        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Optional configuration for commit hierarchy access control
        sig { returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration)) }
        attr_reader :hierarchy_configuration

        sig do
          params(
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash
          ).void
        end
        attr_writer :hierarchy_configuration

        # The contract that this commit will be billed on.
        sig do
          returns(T.nilable(MetronomeSDK::ContractV2::Commit::InvoiceContract))
        end
        attr_reader :invoice_contract

        sig do
          params(
            invoice_contract:
              MetronomeSDK::ContractV2::Commit::InvoiceContract::OrHash
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
              T::Array[MetronomeSDK::ContractV2::Commit::Ledger::Variants]
            )
          )
        end
        attr_reader :ledger

        sig do
          params(
            ledger:
              T::Array[
                T.any(
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::OrHash
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
            T.nilable(MetronomeSDK::ContractV2::Commit::RateType::TaggedSymbol)
          )
        end
        attr_reader :rate_type

        sig do
          params(
            rate_type: MetronomeSDK::ContractV2::Commit::RateType::OrSymbol
          ).void
        end
        attr_writer :rate_type

        sig do
          returns(T.nilable(MetronomeSDK::ContractV2::Commit::RolledOverFrom))
        end
        attr_reader :rolled_over_from

        sig do
          params(
            rolled_over_from:
              MetronomeSDK::ContractV2::Commit::RolledOverFrom::OrHash
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
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifier])) }
        attr_reader :specifiers

        sig do
          params(
            specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
          ).void
        end
        attr_writer :specifiers

        sig do
          params(
            id: String,
            product: MetronomeSDK::ContractV2::Commit::Product::OrHash,
            type: MetronomeSDK::ContractV2::Commit::Type::OrSymbol,
            access_schedule: MetronomeSDK::ScheduleDuration::OrHash,
            applicable_contract_ids: T::Array[String],
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            archived_at: Time,
            balance: Float,
            contract: MetronomeSDK::ContractV2::Commit::Contract::OrHash,
            custom_fields: T::Hash[Symbol, String],
            description: String,
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash,
            invoice_contract:
              MetronomeSDK::ContractV2::Commit::InvoiceContract::OrHash,
            invoice_schedule: MetronomeSDK::SchedulePointInTime::OrHash,
            ledger:
              T::Array[
                T.any(
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::OrHash
                )
              ],
            name: String,
            netsuite_sales_order_id: String,
            priority: Float,
            rate_type: MetronomeSDK::ContractV2::Commit::RateType::OrSymbol,
            rolled_over_from:
              MetronomeSDK::ContractV2::Commit::RolledOverFrom::OrHash,
            rollover_fraction: Float,
            salesforce_opportunity_id: String,
            specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
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
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields: nil,
          description: nil,
          # Optional configuration for commit hierarchy access control
          hierarchy_configuration: nil,
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
              product: MetronomeSDK::ContractV2::Commit::Product,
              type: MetronomeSDK::ContractV2::Commit::Type::TaggedSymbol,
              access_schedule: MetronomeSDK::ScheduleDuration,
              applicable_contract_ids: T::Array[String],
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              archived_at: Time,
              balance: Float,
              contract: MetronomeSDK::ContractV2::Commit::Contract,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration,
              invoice_contract:
                MetronomeSDK::ContractV2::Commit::InvoiceContract,
              invoice_schedule: MetronomeSDK::SchedulePointInTime,
              ledger:
                T::Array[MetronomeSDK::ContractV2::Commit::Ledger::Variants],
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type:
                MetronomeSDK::ContractV2::Commit::RateType::TaggedSymbol,
              rolled_over_from:
                MetronomeSDK::ContractV2::Commit::RolledOverFrom,
              rollover_fraction: Float,
              salesforce_opportunity_id: String,
              specifiers: T::Array[MetronomeSDK::CommitSpecifier]
            }
          )
        end
        def to_hash
        end

        class Product < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractV2::Commit::Product,
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
              T.all(Symbol, MetronomeSDK::ContractV2::Commit::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PREPAID =
            T.let(
              :PREPAID,
              MetronomeSDK::ContractV2::Commit::Type::TaggedSymbol
            )
          POSTPAID =
            T.let(
              :POSTPAID,
              MetronomeSDK::ContractV2::Commit::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[MetronomeSDK::ContractV2::Commit::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class Contract < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractV2::Commit::Contract,
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
                MetronomeSDK::ContractV2::Commit::InvoiceContract,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry,
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
              )
            end

          class PrepaidCommitSegmentStartLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID_COMMIT_SEGMENT_START =
                T.let(
                  :PREPAID_COMMIT_SEGMENT_START,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(T.nilable(String)) }
            attr_reader :contract_id

            sig { params(contract_id: String).void }
            attr_writer :contract_id

            sig do
              params(
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::OrSymbol,
                contract_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              amount:,
              invoice_id:,
              segment_id:,
              timestamp:,
              type:,
              contract_id: nil
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol,
                  contract_id: String
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                T.let(
                  :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID_COMMIT_ROLLOVER =
                T.let(
                  :PREPAID_COMMIT_ROLLOVER,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID_COMMIT_EXPIRATION =
                T.let(
                  :PREPAID_COMMIT_EXPIRATION,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(T.nilable(String)) }
            attr_reader :contract_id

            sig { params(contract_id: String).void }
            attr_writer :contract_id

            sig do
              params(
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::OrSymbol,
                contract_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              amount:,
              invoice_id:,
              segment_id:,
              timestamp:,
              type:,
              contract_id: nil
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol,
                  contract_id: String
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID_COMMIT_CANCELED =
                T.let(
                  :PREPAID_COMMIT_CANCELED,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(T.nilable(String)) }
            attr_reader :contract_id

            sig { params(contract_id: String).void }
            attr_writer :contract_id

            sig do
              params(
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::OrSymbol,
                contract_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              amount:,
              invoice_id:,
              segment_id:,
              timestamp:,
              type:,
              contract_id: nil
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol,
                  contract_id: String
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID_COMMIT_CREDITED =
                T.let(
                  :PREPAID_COMMIT_CREDITED,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class PrepaidCommitSeatBasedAdjustmentLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT =
                T.let(
                  :PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :timestamp

            sig do
              returns(
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              POSTPAID_COMMIT_INITIAL_BALANCE =
                T.let(
                  :POSTPAID_COMMIT_INITIAL_BALANCE,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(T.nilable(String)) }
            attr_reader :contract_id

            sig { params(contract_id: String).void }
            attr_writer :contract_id

            sig do
              params(
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::OrSymbol,
                contract_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              amount:,
              invoice_id:,
              segment_id:,
              timestamp:,
              type:,
              contract_id: nil
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol,
                  contract_id: String
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                T.let(
                  :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              POSTPAID_COMMIT_ROLLOVER =
                T.let(
                  :POSTPAID_COMMIT_ROLLOVER,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(T.nilable(String)) }
            attr_reader :contract_id

            sig { params(contract_id: String).void }
            attr_writer :contract_id

            sig do
              params(
                amount: Float,
                invoice_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::OrSymbol,
                contract_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              amount:,
              invoice_id:,
              timestamp:,
              type:,
              contract_id: nil
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  invoice_id: String,
                  timestamp: Time,
                  type:
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol,
                  contract_id: String
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              POSTPAID_COMMIT_TRUEUP =
                T.let(
                  :POSTPAID_COMMIT_TRUEUP,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                reason: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREPAID_COMMIT_MANUAL =
                T.let(
                  :PREPAID_COMMIT_MANUAL,
                  MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry,
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
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                reason: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              POSTPAID_COMMIT_MANUAL =
                T.let(
                  :POSTPAID_COMMIT_MANUAL,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :timestamp

            sig do
              returns(
                MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              POSTPAID_COMMIT_EXPIRATION =
                T.let(
                  :POSTPAID_COMMIT_EXPIRATION,
                  MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[MetronomeSDK::ContractV2::Commit::Ledger::Variants]
            )
          end
          def self.variants
          end
        end

        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::ContractV2::Commit::RateType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::ContractV2::Commit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::ContractV2::Commit::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[MetronomeSDK::ContractV2::Commit::RateType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractV2::Commit::RolledOverFrom,
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

          sig { override.returns({ commit_id: String, contract_id: String }) }
          def to_hash
          end
        end
      end

      class Override < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractV2::Override,
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
              T::Array[MetronomeSDK::ContractV2::Override::OverrideSpecifier]
            )
          )
        end
        attr_reader :override_specifiers

        sig do
          params(
            override_specifiers:
              T::Array[
                MetronomeSDK::ContractV2::Override::OverrideSpecifier::OrHash
              ]
          ).void
        end
        attr_writer :override_specifiers

        sig { returns(T.nilable(T::Array[MetronomeSDK::OverrideTier])) }
        attr_reader :override_tiers

        sig do
          params(
            override_tiers: T::Array[MetronomeSDK::OverrideTier::OrHash]
          ).void
        end
        attr_writer :override_tiers

        sig { returns(T.nilable(MetronomeSDK::OverwriteRate)) }
        attr_reader :overwrite_rate

        sig { params(overwrite_rate: MetronomeSDK::OverwriteRate::OrHash).void }
        attr_writer :overwrite_rate

        sig { returns(T.nilable(Float)) }
        attr_reader :priority

        sig { params(priority: Float).void }
        attr_writer :priority

        sig { returns(T.nilable(MetronomeSDK::ContractV2::Override::Product)) }
        attr_reader :product

        sig do
          params(
            product: MetronomeSDK::ContractV2::Override::Product::OrHash
          ).void
        end
        attr_writer :product

        sig do
          returns(
            T.nilable(MetronomeSDK::ContractV2::Override::Target::TaggedSymbol)
          )
        end
        attr_reader :target

        sig do
          params(
            target: MetronomeSDK::ContractV2::Override::Target::OrSymbol
          ).void
        end
        attr_writer :target

        sig do
          returns(
            T.nilable(MetronomeSDK::ContractV2::Override::Type::TaggedSymbol)
          )
        end
        attr_reader :type

        sig do
          params(type: MetronomeSDK::ContractV2::Override::Type::OrSymbol).void
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
                MetronomeSDK::ContractV2::Override::OverrideSpecifier::OrHash
              ],
            override_tiers: T::Array[MetronomeSDK::OverrideTier::OrHash],
            overwrite_rate: MetronomeSDK::OverwriteRate::OrHash,
            priority: Float,
            product: MetronomeSDK::ContractV2::Override::Product::OrHash,
            target: MetronomeSDK::ContractV2::Override::Target::OrSymbol,
            type: MetronomeSDK::ContractV2::Override::Type::OrSymbol
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
                T::Array[MetronomeSDK::ContractV2::Override::OverrideSpecifier],
              override_tiers: T::Array[MetronomeSDK::OverrideTier],
              overwrite_rate: MetronomeSDK::OverwriteRate,
              priority: Float,
              product: MetronomeSDK::ContractV2::Override::Product,
              target: MetronomeSDK::ContractV2::Override::Target::TaggedSymbol,
              type: MetronomeSDK::ContractV2::Override::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractV2::Override::OverrideSpecifier,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
              )
            )
          end
          attr_reader :billing_frequency

          sig do
            params(
              billing_frequency:
                MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency::OrSymbol
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
                MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency::OrSymbol,
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
                  MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol,
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

          module BillingFrequency
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :QUARTERLY,
                MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :ANNUAL,
                MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :WEEKLY,
                MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency::TaggedSymbol
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
                MetronomeSDK::ContractV2::Override::Product,
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
              T.all(Symbol, MetronomeSDK::ContractV2::Override::Target)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::ContractV2::Override::Target::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::ContractV2::Override::Target::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[MetronomeSDK::ContractV2::Override::Target::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Type
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::ContractV2::Override::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OVERWRITE =
            T.let(
              :OVERWRITE,
              MetronomeSDK::ContractV2::Override::Type::TaggedSymbol
            )
          MULTIPLIER =
            T.let(
              :MULTIPLIER,
              MetronomeSDK::ContractV2::Override::Type::TaggedSymbol
            )
          TIERED =
            T.let(
              :TIERED,
              MetronomeSDK::ContractV2::Override::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[MetronomeSDK::ContractV2::Override::Type::TaggedSymbol]
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
              MetronomeSDK::ContractV2::Transition,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :from_contract_id

        sig { returns(String) }
        attr_accessor :to_contract_id

        sig do
          returns(MetronomeSDK::ContractV2::Transition::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig do
          params(
            from_contract_id: String,
            to_contract_id: String,
            type: MetronomeSDK::ContractV2::Transition::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(from_contract_id:, to_contract_id:, type:)
        end

        sig do
          override.returns(
            {
              from_contract_id: String,
              to_contract_id: String,
              type: MetronomeSDK::ContractV2::Transition::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::ContractV2::Transition::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUPERSEDE =
            T.let(
              :SUPERSEDE,
              MetronomeSDK::ContractV2::Transition::Type::TaggedSymbol
            )
          RENEWAL =
            T.let(
              :RENEWAL,
              MetronomeSDK::ContractV2::Transition::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[MetronomeSDK::ContractV2::Transition::Type::TaggedSymbol]
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
              MetronomeSDK::ContractV2::UsageFilter,
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
              MetronomeSDK::ContractV2::UsageStatementSchedule,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Contract usage statements follow a selected cadence based on this date.
        sig { returns(Time) }
        attr_accessor :billing_anchor_date

        sig do
          returns(
            MetronomeSDK::ContractV2::UsageStatementSchedule::Frequency::TaggedSymbol
          )
        end
        attr_accessor :frequency

        sig do
          params(
            billing_anchor_date: Time,
            frequency:
              MetronomeSDK::ContractV2::UsageStatementSchedule::Frequency::OrSymbol
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
                MetronomeSDK::ContractV2::UsageStatementSchedule::Frequency::TaggedSymbol
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
                MetronomeSDK::ContractV2::UsageStatementSchedule::Frequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::ContractV2::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::ContractV2::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::ContractV2::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::ContractV2::UsageStatementSchedule::Frequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractV2::UsageStatementSchedule::Frequency::TaggedSymbol
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
              MetronomeSDK::ContractV2::Credit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(MetronomeSDK::ContractV2::Credit::Product) }
        attr_reader :product

        sig do
          params(
            product: MetronomeSDK::ContractV2::Credit::Product::OrHash
          ).void
        end
        attr_writer :product

        sig { returns(MetronomeSDK::ContractV2::Credit::Type::TaggedSymbol) }
        attr_accessor :type

        # The schedule that the customer will gain access to the credits.
        sig { returns(T.nilable(MetronomeSDK::ScheduleDuration)) }
        attr_reader :access_schedule

        sig do
          params(access_schedule: MetronomeSDK::ScheduleDuration::OrHash).void
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

        sig { returns(T.nilable(MetronomeSDK::ContractV2::Credit::Contract)) }
        attr_reader :contract

        sig do
          params(
            contract: MetronomeSDK::ContractV2::Credit::Contract::OrHash
          ).void
        end
        attr_writer :contract

        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Optional configuration for credit hierarchy access control
        sig { returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration)) }
        attr_reader :hierarchy_configuration

        sig do
          params(
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash
          ).void
        end
        attr_writer :hierarchy_configuration

        # A list of ordered events that impact the balance of a credit. For example, an
        # invoice deduction or an expiration.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::ContractV2::Credit::Ledger::Variants]
            )
          )
        end
        attr_reader :ledger

        sig do
          params(
            ledger:
              T::Array[
                T.any(
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::OrHash
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
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifier])) }
        attr_reader :specifiers

        sig do
          params(
            specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
          ).void
        end
        attr_writer :specifiers

        sig do
          params(
            id: String,
            product: MetronomeSDK::ContractV2::Credit::Product::OrHash,
            type: MetronomeSDK::ContractV2::Credit::Type::OrSymbol,
            access_schedule: MetronomeSDK::ScheduleDuration::OrHash,
            applicable_contract_ids: T::Array[String],
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            balance: Float,
            contract: MetronomeSDK::ContractV2::Credit::Contract::OrHash,
            custom_fields: T::Hash[Symbol, String],
            description: String,
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash,
            ledger:
              T::Array[
                T.any(
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry::OrHash,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::OrHash
                )
              ],
            name: String,
            netsuite_sales_order_id: String,
            priority: Float,
            salesforce_opportunity_id: String,
            specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
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
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields: nil,
          description: nil,
          # Optional configuration for credit hierarchy access control
          hierarchy_configuration: nil,
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
              product: MetronomeSDK::ContractV2::Credit::Product,
              type: MetronomeSDK::ContractV2::Credit::Type::TaggedSymbol,
              access_schedule: MetronomeSDK::ScheduleDuration,
              applicable_contract_ids: T::Array[String],
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              balance: Float,
              contract: MetronomeSDK::ContractV2::Credit::Contract,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration,
              ledger:
                T::Array[MetronomeSDK::ContractV2::Credit::Ledger::Variants],
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              salesforce_opportunity_id: String,
              specifiers: T::Array[MetronomeSDK::CommitSpecifier]
            }
          )
        end
        def to_hash
        end

        class Product < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractV2::Credit::Product,
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
              T.all(Symbol, MetronomeSDK::ContractV2::Credit::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT =
            T.let(:CREDIT, MetronomeSDK::ContractV2::Credit::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[MetronomeSDK::ContractV2::Credit::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class Contract < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::ContractV2::Credit::Contract,
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
                MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry,
                MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
                MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry,
                MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry,
                MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry,
                MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry,
                MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry
              )
            end

          class CreditSegmentStartLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry,
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
                MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT_SEGMENT_START =
                T.let(
                  :CREDIT_SEGMENT_START,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
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
                MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(T.nilable(String)) }
            attr_reader :contract_id

            sig { params(contract_id: String).void }
            attr_writer :contract_id

            sig do
              params(
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::OrSymbol,
                contract_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              amount:,
              invoice_id:,
              segment_id:,
              timestamp:,
              type:,
              contract_id: nil
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol,
                  contract_id: String
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT_AUTOMATED_INVOICE_DEDUCTION =
                T.let(
                  :CREDIT_AUTOMATED_INVOICE_DEDUCTION,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry,
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
                MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT_EXPIRATION =
                T.let(
                  :CREDIT_EXPIRATION,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry,
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
                MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(T.nilable(String)) }
            attr_reader :contract_id

            sig { params(contract_id: String).void }
            attr_writer :contract_id

            sig do
              params(
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::Type::OrSymbol,
                contract_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              amount:,
              invoice_id:,
              segment_id:,
              timestamp:,
              type:,
              contract_id: nil
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol,
                  contract_id: String
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT_CANCELED =
                T.let(
                  :CREDIT_CANCELED,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry,
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
                MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(T.nilable(String)) }
            attr_reader :contract_id

            sig { params(contract_id: String).void }
            attr_writer :contract_id

            sig do
              params(
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::Type::OrSymbol,
                contract_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              amount:,
              invoice_id:,
              segment_id:,
              timestamp:,
              type:,
              contract_id: nil
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol,
                  contract_id: String
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT_CREDITED =
                T.let(
                  :CREDIT_CREDITED,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry,
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
                MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                reason: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT_MANUAL =
                T.let(
                  :CREDIT_MANUAL,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class CreditSeatBasedAdjustmentLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry,
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
                MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                amount: Float,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type::OrSymbol
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type::TaggedSymbol
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
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT_SEAT_BASED_ADJUSTMENT =
                T.let(
                  :CREDIT_SEAT_BASED_ADJUSTMENT,
                  MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[MetronomeSDK::ContractV2::Credit::Ledger::Variants]
            )
          end
          def self.variants
          end
        end
      end

      class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ID of Customer's billing provider configuration.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
          )
        end
        attr_accessor :billing_provider

        sig do
          returns(
            MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
          )
        end
        attr_accessor :delivery_method

        # This field's availability is dependent on your client's configuration.
        sig do
          params(
            id: String,
            billing_provider:
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::OrSymbol,
            delivery_method:
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of Customer's billing provider configuration.
          id:,
          billing_provider:,
          delivery_method:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing_provider:
                MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol,
              delivery_method:
                MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
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
                MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS_MARKETPLACE =
            T.let(
              :aws_marketplace,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          STRIPE =
            T.let(
              :stripe,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          NETSUITE =
            T.let(
              :netsuite,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          AZURE_MARKETPLACE =
            T.let(
              :azure_marketplace,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          QUICKBOOKS_ONLINE =
            T.let(
              :quickbooks_online,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          WORKDAY =
            T.let(
              :workday,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )
          GCP_MARKETPLACE =
            T.let(
              :gcp_marketplace,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
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
                MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DIRECT_TO_BILLING_PROVIDER =
            T.let(
              :direct_to_billing_provider,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
            )
          AWS_SQS =
            T.let(
              :aws_sqs,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
            )
          TACKLE =
            T.let(
              :tackle,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
            )
          AWS_SNS =
            T.let(
              :aws_sns,
              MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
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
              MetronomeSDK::ContractV2::HasMore,
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

        sig { override.returns({ commits: T::Boolean, credits: T::Boolean }) }
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
              MetronomeSDK::ContractV2::MultiplierOverridePrioritization
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOWEST_MULTIPLIER =
          T.let(
            :LOWEST_MULTIPLIER,
            MetronomeSDK::ContractV2::MultiplierOverridePrioritization::TaggedSymbol
          )
        EXPLICIT =
          T.let(
            :EXPLICIT,
            MetronomeSDK::ContractV2::MultiplierOverridePrioritization::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::ContractV2::MultiplierOverridePrioritization::TaggedSymbol
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
              MetronomeSDK::ContractV2::RecurringCommit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The amount of commit to grant.
        sig { returns(MetronomeSDK::ContractV2::RecurringCommit::AccessAmount) }
        attr_reader :access_amount

        sig do
          params(
            access_amount:
              MetronomeSDK::ContractV2::RecurringCommit::AccessAmount::OrHash
          ).void
        end
        attr_writer :access_amount

        # The amount of time the created commits will be valid for
        sig do
          returns(MetronomeSDK::ContractV2::RecurringCommit::CommitDuration)
        end
        attr_reader :commit_duration

        sig do
          params(
            commit_duration:
              MetronomeSDK::ContractV2::RecurringCommit::CommitDuration::OrHash
          ).void
        end
        attr_writer :commit_duration

        # Will be passed down to the individual commits
        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(MetronomeSDK::ContractV2::RecurringCommit::Product) }
        attr_reader :product

        sig do
          params(
            product: MetronomeSDK::ContractV2::RecurringCommit::Product::OrHash
          ).void
        end
        attr_writer :product

        # Whether the created commits will use the commit rate or list rate
        sig do
          returns(
            MetronomeSDK::ContractV2::RecurringCommit::RateType::TaggedSymbol
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
            T.nilable(MetronomeSDK::ContractV2::RecurringCommit::Contract)
          )
        end
        attr_reader :contract

        sig do
          params(
            contract:
              MetronomeSDK::ContractV2::RecurringCommit::Contract::OrHash
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

        # Optional configuration for recurring credit hierarchy access control
        sig { returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration)) }
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
            T.nilable(MetronomeSDK::ContractV2::RecurringCommit::InvoiceAmount)
          )
        end
        attr_reader :invoice_amount

        sig do
          params(
            invoice_amount:
              MetronomeSDK::ContractV2::RecurringCommit::InvoiceAmount::OrHash
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
              MetronomeSDK::ContractV2::RecurringCommit::Proration::TaggedSymbol
            )
          )
        end
        attr_reader :proration

        sig do
          params(
            proration:
              MetronomeSDK::ContractV2::RecurringCommit::Proration::OrSymbol
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
              MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          )
        end
        attr_reader :recurrence_frequency

        sig do
          params(
            recurrence_frequency:
              MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency::OrSymbol
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
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifier])) }
        attr_reader :specifiers

        sig do
          params(
            specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
          ).void
        end
        attr_writer :specifiers

        # Attach a subscription to the recurring commit/credit.
        sig do
          returns(T.nilable(MetronomeSDK::RecurringCommitSubscriptionConfig))
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
              MetronomeSDK::ContractV2::RecurringCommit::AccessAmount::OrHash,
            commit_duration:
              MetronomeSDK::ContractV2::RecurringCommit::CommitDuration::OrHash,
            priority: Float,
            product: MetronomeSDK::ContractV2::RecurringCommit::Product::OrHash,
            rate_type:
              MetronomeSDK::ContractV2::RecurringCommit::RateType::OrSymbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            contract:
              MetronomeSDK::ContractV2::RecurringCommit::Contract::OrHash,
            description: String,
            ending_before: Time,
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash,
            invoice_amount:
              MetronomeSDK::ContractV2::RecurringCommit::InvoiceAmount::OrHash,
            name: String,
            netsuite_sales_order_id: String,
            proration:
              MetronomeSDK::ContractV2::RecurringCommit::Proration::OrSymbol,
            recurrence_frequency:
              MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency::OrSymbol,
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
          # Optional configuration for recurring credit hierarchy access control
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
                MetronomeSDK::ContractV2::RecurringCommit::AccessAmount,
              commit_duration:
                MetronomeSDK::ContractV2::RecurringCommit::CommitDuration,
              priority: Float,
              product: MetronomeSDK::ContractV2::RecurringCommit::Product,
              rate_type:
                MetronomeSDK::ContractV2::RecurringCommit::RateType::TaggedSymbol,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              contract: MetronomeSDK::ContractV2::RecurringCommit::Contract,
              description: String,
              ending_before: Time,
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration,
              invoice_amount:
                MetronomeSDK::ContractV2::RecurringCommit::InvoiceAmount,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::ContractV2::RecurringCommit::Proration::TaggedSymbol,
              recurrence_frequency:
                MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency::TaggedSymbol,
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
                MetronomeSDK::ContractV2::RecurringCommit::AccessAmount,
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
                MetronomeSDK::ContractV2::RecurringCommit::CommitDuration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :value

          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractV2::RecurringCommit::CommitDuration::Unit::TaggedSymbol
              )
            )
          end
          attr_reader :unit

          sig do
            params(
              unit:
                MetronomeSDK::ContractV2::RecurringCommit::CommitDuration::Unit::OrSymbol
            ).void
          end
          attr_writer :unit

          # The amount of time the created commits will be valid for
          sig do
            params(
              value: Float,
              unit:
                MetronomeSDK::ContractV2::RecurringCommit::CommitDuration::Unit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(value:, unit: nil)
          end

          sig do
            override.returns(
              {
                value: Float,
                unit:
                  MetronomeSDK::ContractV2::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                  MetronomeSDK::ContractV2::RecurringCommit::CommitDuration::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERIODS =
              T.let(
                :PERIODS,
                MetronomeSDK::ContractV2::RecurringCommit::CommitDuration::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractV2::RecurringCommit::CommitDuration::Unit::TaggedSymbol
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
                MetronomeSDK::ContractV2::RecurringCommit::Product,
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
              T.all(Symbol, MetronomeSDK::ContractV2::RecurringCommit::RateType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::ContractV2::RecurringCommit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::ContractV2::RecurringCommit::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractV2::RecurringCommit::RateType::TaggedSymbol
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
                MetronomeSDK::ContractV2::RecurringCommit::Contract,
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
                MetronomeSDK::ContractV2::RecurringCommit::InvoiceAmount,
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
        module Proration
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::ContractV2::RecurringCommit::Proration
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              MetronomeSDK::ContractV2::RecurringCommit::Proration::TaggedSymbol
            )
          FIRST =
            T.let(
              :FIRST,
              MetronomeSDK::ContractV2::RecurringCommit::Proration::TaggedSymbol
            )
          LAST =
            T.let(
              :LAST,
              MetronomeSDK::ContractV2::RecurringCommit::Proration::TaggedSymbol
            )
          FIRST_AND_LAST =
            T.let(
              :FIRST_AND_LAST,
              MetronomeSDK::ContractV2::RecurringCommit::Proration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractV2::RecurringCommit::Proration::TaggedSymbol
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
                MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency::TaggedSymbol
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
              MetronomeSDK::ContractV2::RecurringCredit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The amount of commit to grant.
        sig { returns(MetronomeSDK::ContractV2::RecurringCredit::AccessAmount) }
        attr_reader :access_amount

        sig do
          params(
            access_amount:
              MetronomeSDK::ContractV2::RecurringCredit::AccessAmount::OrHash
          ).void
        end
        attr_writer :access_amount

        # The amount of time the created commits will be valid for
        sig do
          returns(MetronomeSDK::ContractV2::RecurringCredit::CommitDuration)
        end
        attr_reader :commit_duration

        sig do
          params(
            commit_duration:
              MetronomeSDK::ContractV2::RecurringCredit::CommitDuration::OrHash
          ).void
        end
        attr_writer :commit_duration

        # Will be passed down to the individual commits
        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(MetronomeSDK::ContractV2::RecurringCredit::Product) }
        attr_reader :product

        sig do
          params(
            product: MetronomeSDK::ContractV2::RecurringCredit::Product::OrHash
          ).void
        end
        attr_writer :product

        # Whether the created commits will use the commit rate or list rate
        sig do
          returns(
            MetronomeSDK::ContractV2::RecurringCredit::RateType::TaggedSymbol
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
            T.nilable(MetronomeSDK::ContractV2::RecurringCredit::Contract)
          )
        end
        attr_reader :contract

        sig do
          params(
            contract:
              MetronomeSDK::ContractV2::RecurringCredit::Contract::OrHash
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

        # Optional configuration for recurring credit hierarchy access control
        sig { returns(T.nilable(MetronomeSDK::CommitHierarchyConfiguration)) }
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
              MetronomeSDK::ContractV2::RecurringCredit::Proration::TaggedSymbol
            )
          )
        end
        attr_reader :proration

        sig do
          params(
            proration:
              MetronomeSDK::ContractV2::RecurringCredit::Proration::OrSymbol
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
              MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          )
        end
        attr_reader :recurrence_frequency

        sig do
          params(
            recurrence_frequency:
              MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency::OrSymbol
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
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifier])) }
        attr_reader :specifiers

        sig do
          params(
            specifiers: T::Array[MetronomeSDK::CommitSpecifier::OrHash]
          ).void
        end
        attr_writer :specifiers

        # Attach a subscription to the recurring commit/credit.
        sig do
          returns(T.nilable(MetronomeSDK::RecurringCommitSubscriptionConfig))
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
              MetronomeSDK::ContractV2::RecurringCredit::AccessAmount::OrHash,
            commit_duration:
              MetronomeSDK::ContractV2::RecurringCredit::CommitDuration::OrHash,
            priority: Float,
            product: MetronomeSDK::ContractV2::RecurringCredit::Product::OrHash,
            rate_type:
              MetronomeSDK::ContractV2::RecurringCredit::RateType::OrSymbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            contract:
              MetronomeSDK::ContractV2::RecurringCredit::Contract::OrHash,
            description: String,
            ending_before: Time,
            hierarchy_configuration:
              MetronomeSDK::CommitHierarchyConfiguration::OrHash,
            name: String,
            netsuite_sales_order_id: String,
            proration:
              MetronomeSDK::ContractV2::RecurringCredit::Proration::OrSymbol,
            recurrence_frequency:
              MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency::OrSymbol,
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
          # Optional configuration for recurring credit hierarchy access control
          hierarchy_configuration: nil,
          # Displayed on invoices. Will be passed through to the individual commits
          name: nil,
          # Will be passed down to the individual commits
          netsuite_sales_order_id: nil,
          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
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
                MetronomeSDK::ContractV2::RecurringCredit::AccessAmount,
              commit_duration:
                MetronomeSDK::ContractV2::RecurringCredit::CommitDuration,
              priority: Float,
              product: MetronomeSDK::ContractV2::RecurringCredit::Product,
              rate_type:
                MetronomeSDK::ContractV2::RecurringCredit::RateType::TaggedSymbol,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              contract: MetronomeSDK::ContractV2::RecurringCredit::Contract,
              description: String,
              ending_before: Time,
              hierarchy_configuration:
                MetronomeSDK::CommitHierarchyConfiguration,
              name: String,
              netsuite_sales_order_id: String,
              proration:
                MetronomeSDK::ContractV2::RecurringCredit::Proration::TaggedSymbol,
              recurrence_frequency:
                MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency::TaggedSymbol,
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
                MetronomeSDK::ContractV2::RecurringCredit::AccessAmount,
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
                MetronomeSDK::ContractV2::RecurringCredit::CommitDuration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :value

          sig do
            returns(
              T.nilable(
                MetronomeSDK::ContractV2::RecurringCredit::CommitDuration::Unit::TaggedSymbol
              )
            )
          end
          attr_reader :unit

          sig do
            params(
              unit:
                MetronomeSDK::ContractV2::RecurringCredit::CommitDuration::Unit::OrSymbol
            ).void
          end
          attr_writer :unit

          # The amount of time the created commits will be valid for
          sig do
            params(
              value: Float,
              unit:
                MetronomeSDK::ContractV2::RecurringCredit::CommitDuration::Unit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(value:, unit: nil)
          end

          sig do
            override.returns(
              {
                value: Float,
                unit:
                  MetronomeSDK::ContractV2::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                  MetronomeSDK::ContractV2::RecurringCredit::CommitDuration::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERIODS =
              T.let(
                :PERIODS,
                MetronomeSDK::ContractV2::RecurringCredit::CommitDuration::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractV2::RecurringCredit::CommitDuration::Unit::TaggedSymbol
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
                MetronomeSDK::ContractV2::RecurringCredit::Product,
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
              T.all(Symbol, MetronomeSDK::ContractV2::RecurringCredit::RateType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::ContractV2::RecurringCredit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::ContractV2::RecurringCredit::RateType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractV2::RecurringCredit::RateType::TaggedSymbol
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
                MetronomeSDK::ContractV2::RecurringCredit::Contract,
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
                MetronomeSDK::ContractV2::RecurringCredit::Proration
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              MetronomeSDK::ContractV2::RecurringCredit::Proration::TaggedSymbol
            )
          FIRST =
            T.let(
              :FIRST,
              MetronomeSDK::ContractV2::RecurringCredit::Proration::TaggedSymbol
            )
          LAST =
            T.let(
              :LAST,
              MetronomeSDK::ContractV2::RecurringCredit::Proration::TaggedSymbol
            )
          FIRST_AND_LAST =
            T.let(
              :FIRST_AND_LAST,
              MetronomeSDK::ContractV2::RecurringCredit::Proration::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractV2::RecurringCredit::Proration::TaggedSymbol
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
                MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ContractV2::ResellerRoyalty,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::ContractV2::ResellerRoyalty::ResellerType::TaggedSymbol
          )
        end
        attr_accessor :reseller_type

        sig do
          returns(T::Array[MetronomeSDK::ContractV2::ResellerRoyalty::Segment])
        end
        attr_accessor :segments

        sig do
          params(
            reseller_type:
              MetronomeSDK::ContractV2::ResellerRoyalty::ResellerType::OrSymbol,
            segments:
              T::Array[
                MetronomeSDK::ContractV2::ResellerRoyalty::Segment::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(reseller_type:, segments:)
        end

        sig do
          override.returns(
            {
              reseller_type:
                MetronomeSDK::ContractV2::ResellerRoyalty::ResellerType::TaggedSymbol,
              segments:
                T::Array[MetronomeSDK::ContractV2::ResellerRoyalty::Segment]
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
                MetronomeSDK::ContractV2::ResellerRoyalty::ResellerType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS =
            T.let(
              :AWS,
              MetronomeSDK::ContractV2::ResellerRoyalty::ResellerType::TaggedSymbol
            )
          AWS_PRO_SERVICE =
            T.let(
              :AWS_PRO_SERVICE,
              MetronomeSDK::ContractV2::ResellerRoyalty::ResellerType::TaggedSymbol
            )
          GCP =
            T.let(
              :GCP,
              MetronomeSDK::ContractV2::ResellerRoyalty::ResellerType::TaggedSymbol
            )
          GCP_PRO_SERVICE =
            T.let(
              :GCP_PRO_SERVICE,
              MetronomeSDK::ContractV2::ResellerRoyalty::ResellerType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::ContractV2::ResellerRoyalty::ResellerType::TaggedSymbol
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
                MetronomeSDK::ContractV2::ResellerRoyalty::Segment,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :fraction

          sig { returns(String) }
          attr_accessor :netsuite_reseller_id

          sig do
            returns(
              MetronomeSDK::ContractV2::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
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
                MetronomeSDK::ContractV2::ResellerRoyalty::Segment::ResellerType::OrSymbol,
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
                  MetronomeSDK::ContractV2::ResellerRoyalty::Segment::ResellerType::TaggedSymbol,
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
                  MetronomeSDK::ContractV2::ResellerRoyalty::Segment::ResellerType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS =
              T.let(
                :AWS,
                MetronomeSDK::ContractV2::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
              )
            AWS_PRO_SERVICE =
              T.let(
                :AWS_PRO_SERVICE,
                MetronomeSDK::ContractV2::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
              )
            GCP =
              T.let(
                :GCP,
                MetronomeSDK::ContractV2::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
              )
            GCP_PRO_SERVICE =
              T.let(
                :GCP_PRO_SERVICE,
                MetronomeSDK::ContractV2::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::ContractV2::ResellerRoyalty::Segment::ResellerType::TaggedSymbol
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
              MetronomeSDK::ContractV2::ScheduledChargesOnUsageInvoices
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(
            :ALL,
            MetronomeSDK::ContractV2::ScheduledChargesOnUsageInvoices::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::ContractV2::ScheduledChargesOnUsageInvoices::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
