# frozen_string_literal: true

module MetronomeSDK
  module Models
    class ContractV2 < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute commits
      #
      #   @return [Array<MetronomeSDK::Models::ContractV2::Commit>]
      required :commits, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::Commit] }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #
      #   @return [String]
      required :created_by, String

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute overrides
      #
      #   @return [Array<MetronomeSDK::Models::ContractV2::Override>]
      required :overrides, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::Override] }

      # @!attribute scheduled_charges
      #
      #   @return [Array<MetronomeSDK::Models::ScheduledCharge>]
      required :scheduled_charges, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ScheduledCharge] }

      # @!attribute starting_at
      #
      #   @return [Time]
      required :starting_at, Time

      # @!attribute transitions
      #
      #   @return [Array<MetronomeSDK::Models::ContractV2::Transition>]
      required :transitions, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::Transition] }

      # @!attribute usage_filter
      #
      #   @return [Array<MetronomeSDK::Models::ContractV2::UsageFilter>]
      required :usage_filter,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::UsageFilter] }

      # @!attribute usage_statement_schedule
      #
      #   @return [MetronomeSDK::Models::ContractV2::UsageStatementSchedule]
      required :usage_statement_schedule, -> { MetronomeSDK::ContractV2::UsageStatementSchedule }

      # @!attribute archived_at
      #
      #   @return [Time, nil]
      optional :archived_at, Time

      # @!attribute credits
      #
      #   @return [Array<MetronomeSDK::Models::ContractV2::Credit>, nil]
      optional :credits, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::Credit] }

      # @!attribute custom_fields
      #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute customer_billing_provider_configuration
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [MetronomeSDK::Models::ContractV2::CustomerBillingProviderConfiguration, nil]
      optional :customer_billing_provider_configuration,
               -> { MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration }

      # @!attribute discounts
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<MetronomeSDK::Models::Discount>, nil]
      optional :discounts, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Discount] }

      # @!attribute ending_before
      #
      #   @return [Time, nil]
      optional :ending_before, Time

      # @!attribute has_more
      #   Indicates whether there are more items than the limit for this endpoint. Use the
      #   respective list endpoints to get the full lists.
      #
      #   @return [MetronomeSDK::Models::ContractV2::HasMore, nil]
      optional :has_more, -> { MetronomeSDK::ContractV2::HasMore }

      # @!attribute hierarchy_configuration
      #   Either a **parent** configuration with a list of children or a **child**
      #   configuration with a single parent.
      #
      #   @return [MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration, MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2, nil]
      optional :hierarchy_configuration, union: -> { MetronomeSDK::ContractV2::HierarchyConfiguration }

      # @!attribute multiplier_override_prioritization
      #   Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
      #   prices automatically. EXPLICIT prioritization requires specifying priorities for
      #   each multiplier; the one with the lowest priority value will be prioritized
      #   first.
      #
      #   @return [Symbol, MetronomeSDK::Models::ContractV2::MultiplierOverridePrioritization, nil]
      optional :multiplier_override_prioritization,
               enum: -> { MetronomeSDK::ContractV2::MultiplierOverridePrioritization }

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute net_payment_terms_days
      #
      #   @return [Float, nil]
      optional :net_payment_terms_days, Float

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :netsuite_sales_order_id, String

      # @!attribute prepaid_balance_threshold_configuration
      #
      #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2, nil]
      optional :prepaid_balance_threshold_configuration,
               -> { MetronomeSDK::PrepaidBalanceThresholdConfigurationV2 }

      # @!attribute priority
      #   Priority of the contract.
      #
      #   @return [Float, nil]
      optional :priority, Float

      # @!attribute professional_services
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<MetronomeSDK::Models::ProService>, nil]
      optional :professional_services, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ProService] }

      # @!attribute rate_card_id
      #
      #   @return [String, nil]
      optional :rate_card_id, String

      # @!attribute recurring_commits
      #
      #   @return [Array<MetronomeSDK::Models::ContractV2::RecurringCommit>, nil]
      optional :recurring_commits,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::RecurringCommit] }

      # @!attribute recurring_credits
      #
      #   @return [Array<MetronomeSDK::Models::ContractV2::RecurringCredit>, nil]
      optional :recurring_credits,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::RecurringCredit] }

      # @!attribute reseller_royalties
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<MetronomeSDK::Models::ContractV2::ResellerRoyalty>, nil]
      optional :reseller_royalties,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::ResellerRoyalty] }

      # @!attribute salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :salesforce_opportunity_id, String

      # @!attribute scheduled_charges_on_usage_invoices
      #   Determines which scheduled and commit charges to consolidate onto the Contract's
      #   usage invoice. The charge's `timestamp` must match the usage invoice's
      #   `ending_before` date for consolidation to occur. This field cannot be modified
      #   after a Contract has been created. If this field is omitted, charges will appear
      #   on a separate invoice from usage charges.
      #
      #   @return [Symbol, MetronomeSDK::Models::ContractV2::ScheduledChargesOnUsageInvoices, nil]
      optional :scheduled_charges_on_usage_invoices,
               enum: -> { MetronomeSDK::ContractV2::ScheduledChargesOnUsageInvoices }

      # @!attribute spend_threshold_configuration
      #
      #   @return [MetronomeSDK::Models::SpendThresholdConfigurationV2, nil]
      optional :spend_threshold_configuration, -> { MetronomeSDK::SpendThresholdConfigurationV2 }

      # @!attribute subscriptions
      #   List of subscriptions on the contract.
      #
      #   @return [Array<MetronomeSDK::Models::Subscription>, nil]
      optional :subscriptions, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Subscription] }

      # @!attribute total_contract_value
      #
      #   @return [Float, nil]
      optional :total_contract_value, Float

      # @!attribute uniqueness_key
      #   Optional uniqueness key to prevent duplicate contract creations.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String

      # @!method initialize(id:, commits:, created_at:, created_by:, customer_id:, overrides:, scheduled_charges:, starting_at:, transitions:, usage_filter:, usage_statement_schedule:, archived_at: nil, credits: nil, custom_fields: nil, customer_billing_provider_configuration: nil, discounts: nil, ending_before: nil, has_more: nil, hierarchy_configuration: nil, multiplier_override_prioritization: nil, name: nil, net_payment_terms_days: nil, netsuite_sales_order_id: nil, prepaid_balance_threshold_configuration: nil, priority: nil, professional_services: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, total_contract_value: nil, uniqueness_key: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::ContractV2} for more details.
      #
      #   @param id [String]
      #
      #   @param commits [Array<MetronomeSDK::Models::ContractV2::Commit>]
      #
      #   @param created_at [Time]
      #
      #   @param created_by [String]
      #
      #   @param customer_id [String]
      #
      #   @param overrides [Array<MetronomeSDK::Models::ContractV2::Override>]
      #
      #   @param scheduled_charges [Array<MetronomeSDK::Models::ScheduledCharge>]
      #
      #   @param starting_at [Time]
      #
      #   @param transitions [Array<MetronomeSDK::Models::ContractV2::Transition>]
      #
      #   @param usage_filter [Array<MetronomeSDK::Models::ContractV2::UsageFilter>]
      #
      #   @param usage_statement_schedule [MetronomeSDK::Models::ContractV2::UsageStatementSchedule]
      #
      #   @param archived_at [Time]
      #
      #   @param credits [Array<MetronomeSDK::Models::ContractV2::Credit>]
      #
      #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      #
      #   @param customer_billing_provider_configuration [MetronomeSDK::Models::ContractV2::CustomerBillingProviderConfiguration] This field's availability is dependent on your client's configuration.
      #
      #   @param discounts [Array<MetronomeSDK::Models::Discount>] This field's availability is dependent on your client's configuration.
      #
      #   @param ending_before [Time]
      #
      #   @param has_more [MetronomeSDK::Models::ContractV2::HasMore] Indicates whether there are more items than the limit for this endpoint. Use the
      #
      #   @param hierarchy_configuration [MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration, MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2] Either a **parent** configuration with a list of children or a **child** configu
      #
      #   @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::ContractV2::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
      #
      #   @param name [String]
      #
      #   @param net_payment_terms_days [Float]
      #
      #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
      #
      #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2]
      #
      #   @param priority [Float] Priority of the contract.
      #
      #   @param professional_services [Array<MetronomeSDK::Models::ProService>] This field's availability is dependent on your client's configuration.
      #
      #   @param rate_card_id [String]
      #
      #   @param recurring_commits [Array<MetronomeSDK::Models::ContractV2::RecurringCommit>]
      #
      #   @param recurring_credits [Array<MetronomeSDK::Models::ContractV2::RecurringCredit>]
      #
      #   @param reseller_royalties [Array<MetronomeSDK::Models::ContractV2::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
      #
      #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
      #
      #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::ContractV2::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
      #
      #   @param spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfigurationV2]
      #
      #   @param subscriptions [Array<MetronomeSDK::Models::Subscription>] List of subscriptions on the contract.
      #
      #   @param total_contract_value [Float]
      #
      #   @param uniqueness_key [String] Optional uniqueness key to prevent duplicate contract creations.

      class Commit < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp of when the commit was created.
        #
        #   - Recurring commits: latter of commit service period date and parent commit
        #     start date
        #   - Rollover commits: when the new contract started
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute product
        #
        #   @return [MetronomeSDK::Models::ContractV2::Commit::Product]
        required :product, -> { MetronomeSDK::ContractV2::Commit::Product }

        # @!attribute type
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Type]
        required :type, enum: -> { MetronomeSDK::ContractV2::Commit::Type }

        # @!attribute access_schedule
        #   The schedule that the customer will gain access to the credits purposed with
        #   this commit.
        #
        #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
        optional :access_schedule, -> { MetronomeSDK::ScheduleDuration }

        # @!attribute applicable_contract_ids
        #
        #   @return [Array<String>, nil]
        optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute applicable_product_ids
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute applicable_product_tags
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute archived_at
        #
        #   @return [Time, nil]
        optional :archived_at, Time

        # @!attribute balance
        #   The current balance of the credit or commit. This balance reflects the amount of
        #   credit or commit that the customer has access to use at this moment - thus,
        #   expired and upcoming credit or commit segments contribute 0 to the balance. The
        #   balance will match the sum of all ledger entries with the exception of the case
        #   where the sum of negative manual ledger entries exceeds the positive amount
        #   remaining on the credit or commit - in that case, the balance will be 0. All
        #   manual ledger entries associated with active credit or commit segments are
        #   included in the balance, including future-dated manual ledger entries.
        #
        #   @return [Float, nil]
        optional :balance, Float

        # @!attribute contract
        #
        #   @return [MetronomeSDK::Models::ContractV2::Commit::Contract, nil]
        optional :contract, -> { MetronomeSDK::ContractV2::Commit::Contract }

        # @!attribute custom_fields
        #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute hierarchy_configuration
        #   Optional configuration for commit hierarchy access control
        #
        #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
        optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

        # @!attribute invoice_contract
        #   The contract that this commit will be billed on.
        #
        #   @return [MetronomeSDK::Models::ContractV2::Commit::InvoiceContract, nil]
        optional :invoice_contract, -> { MetronomeSDK::ContractV2::Commit::InvoiceContract }

        # @!attribute invoice_schedule
        #   The schedule that the customer will be invoiced for this commit.
        #
        #   @return [MetronomeSDK::Models::SchedulePointInTime, nil]
        optional :invoice_schedule, -> { MetronomeSDK::SchedulePointInTime }

        # @!attribute ledger
        #   A list of ordered events that impact the balance of a commit. For example, an
        #   invoice deduction or a rollover.
        #
        #   @return [Array<MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>, nil]
        optional :ledger,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::ContractV2::Commit::Ledger] }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :netsuite_sales_order_id, String

        # @!attribute priority
        #   If multiple credits or commits are applicable, the one with the lower priority
        #   will apply first.
        #
        #   @return [Float, nil]
        optional :priority, Float

        # @!attribute rate_type
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::RateType, nil]
        optional :rate_type, enum: -> { MetronomeSDK::ContractV2::Commit::RateType }

        # @!attribute recurring_commit_id
        #   The ID of the recurring commit that created this commit
        #
        #   @return [String, nil]
        optional :recurring_commit_id, String

        # @!attribute rolled_over_from
        #
        #   @return [MetronomeSDK::Models::ContractV2::Commit::RolledOverFrom, nil]
        optional :rolled_over_from, -> { MetronomeSDK::ContractV2::Commit::RolledOverFrom }

        # @!attribute rollover_fraction
        #
        #   @return [Float, nil]
        optional :rollover_fraction, Float

        # @!attribute salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :salesforce_opportunity_id, String

        # @!attribute specifiers
        #   List of filters that determine what kind of customer usage draws down a commit
        #   or credit. A customer's usage needs to meet the condition of at least one of the
        #   specifiers to contribute to a commit's or credit's drawdown.
        #
        #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
        optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

        # @!attribute subscription_config
        #   Attach a subscription to the recurring commit/credit.
        #
        #   @return [MetronomeSDK::Models::RecurringCommitSubscriptionConfig, nil]
        optional :subscription_config, -> { MetronomeSDK::RecurringCommitSubscriptionConfig }

        # @!method initialize(id:, created_at:, product:, type:, access_schedule: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, archived_at: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, hierarchy_configuration: nil, invoice_contract: nil, invoice_schedule: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, recurring_commit_id: nil, rolled_over_from: nil, rollover_fraction: nil, salesforce_opportunity_id: nil, specifiers: nil, subscription_config: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::ContractV2::Commit} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time] Timestamp of when the commit was created.
        #
        #   @param product [MetronomeSDK::Models::ContractV2::Commit::Product]
        #
        #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Type]
        #
        #   @param access_schedule [MetronomeSDK::Models::ScheduleDuration] The schedule that the customer will gain access to the credits purposed with thi
        #
        #   @param applicable_contract_ids [Array<String>]
        #
        #   @param applicable_product_ids [Array<String>]
        #
        #   @param applicable_product_tags [Array<String>]
        #
        #   @param archived_at [Time]
        #
        #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
        #
        #   @param contract [MetronomeSDK::Models::ContractV2::Commit::Contract]
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @param description [String]
        #
        #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for commit hierarchy access control
        #
        #   @param invoice_contract [MetronomeSDK::Models::ContractV2::Commit::InvoiceContract] The contract that this commit will be billed on.
        #
        #   @param invoice_schedule [MetronomeSDK::Models::SchedulePointInTime] The schedule that the customer will be invoiced for this commit.
        #
        #   @param ledger [Array<MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>] A list of ordered events that impact the balance of a commit. For example, an in
        #
        #   @param name [String]
        #
        #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
        #
        #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
        #
        #   @param rate_type [Symbol, MetronomeSDK::Models::ContractV2::Commit::RateType]
        #
        #   @param recurring_commit_id [String] The ID of the recurring commit that created this commit
        #
        #   @param rolled_over_from [MetronomeSDK::Models::ContractV2::Commit::RolledOverFrom]
        #
        #   @param rollover_fraction [Float]
        #
        #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
        #
        #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
        #
        #   @param subscription_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig] Attach a subscription to the recurring commit/credit.

        # @see MetronomeSDK::Models::ContractV2::Commit#product
        class Product < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see MetronomeSDK::Models::ContractV2::Commit#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          PREPAID = :PREPAID
          POSTPAID = :POSTPAID

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::ContractV2::Commit#contract
        class Contract < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see MetronomeSDK::Models::ContractV2::Commit#invoice_contract
        class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The contract that this commit will be billed on.
          #
          #   @param id [String]
        end

        module Ledger
          extend MetronomeSDK::Internal::Type::Union

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry }

          class PrepaidCommitSegmentStartLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type }

            # @!method initialize(amount:, segment_id:, timestamp:, type:)
            #   @param amount [Float]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute invoice_id
            #
            #   @return [String]
            required :invoice_id, String

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

            # @!attribute contract_id
            #
            #   @return [String, nil]
            optional :contract_id, String

            # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
            #   @param amount [Float]
            #   @param invoice_id [String]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
            #   @param contract_id [String]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PrepaidCommitRolloverLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute new_contract_id
            #
            #   @return [String]
            required :new_contract_id, String

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type }

            # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
            #   @param amount [Float]
            #   @param new_contract_id [String]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PrepaidCommitExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type }

            # @!method initialize(amount:, segment_id:, timestamp:, type:)
            #   @param amount [Float]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PrepaidCommitCanceledLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute invoice_id
            #
            #   @return [String]
            required :invoice_id, String

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type }

            # @!attribute contract_id
            #
            #   @return [String, nil]
            optional :contract_id, String

            # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
            #   @param amount [Float]
            #   @param invoice_id [String]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
            #   @param contract_id [String]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PrepaidCommitCreditedLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute invoice_id
            #
            #   @return [String]
            required :invoice_id, String

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type }

            # @!attribute contract_id
            #
            #   @return [String, nil]
            optional :contract_id, String

            # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
            #   @param amount [Float]
            #   @param invoice_id [String]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
            #   @param contract_id [String]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PrepaidCommitSeatBasedAdjustmentLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type }

            # @!method initialize(amount:, segment_id:, timestamp:, type:)
            #   @param amount [Float]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT = :PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PostpaidCommitInitialBalanceLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type }

            # @!method initialize(amount:, timestamp:, type:)
            #   @param amount [Float]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute invoice_id
            #
            #   @return [String]
            required :invoice_id, String

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

            # @!attribute contract_id
            #
            #   @return [String, nil]
            optional :contract_id, String

            # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
            #   @param amount [Float]
            #   @param invoice_id [String]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
            #   @param contract_id [String]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PostpaidCommitRolloverLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute new_contract_id
            #
            #   @return [String]
            required :new_contract_id, String

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type }

            # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
            #   @param amount [Float]
            #   @param new_contract_id [String]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PostpaidCommitTrueupLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute invoice_id
            #
            #   @return [String]
            required :invoice_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type }

            # @!attribute contract_id
            #
            #   @return [String, nil]
            optional :contract_id, String

            # @!method initialize(amount:, invoice_id:, timestamp:, type:, contract_id: nil)
            #   @param amount [Float]
            #   @param invoice_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
            #   @param contract_id [String]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PrepaidCommitManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute reason
            #
            #   @return [String]
            required :reason, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type }

            # @!method initialize(amount:, reason:, timestamp:, type:)
            #   @param amount [Float]
            #   @param reason [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PostpaidCommitManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute reason
            #
            #   @return [String]
            required :reason, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type }

            # @!method initialize(amount:, reason:, timestamp:, type:)
            #   @param amount [Float]
            #   @param reason [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class PostpaidCommitExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type }

            # @!method initialize(amount:, timestamp:, type:)
            #   @param amount [Float]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::ContractV2::Commit::Ledger::PostpaidCommitExpirationLedgerEntry)]
        end

        # @see MetronomeSDK::Models::ContractV2::Commit#rate_type
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::ContractV2::Commit#rolled_over_from
        class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute commit_id
          #
          #   @return [String]
          required :commit_id, String

          # @!attribute contract_id
          #
          #   @return [String]
          required :contract_id, String

          # @!method initialize(commit_id:, contract_id:)
          #   @param commit_id [String]
          #   @param contract_id [String]
        end
      end

      class Override < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute applicable_product_tags
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute ending_before
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!attribute entitled
        #
        #   @return [Boolean, nil]
        optional :entitled, MetronomeSDK::Internal::Type::Boolean

        # @!attribute is_commit_specific
        #
        #   @return [Boolean, nil]
        optional :is_commit_specific, MetronomeSDK::Internal::Type::Boolean

        # @!attribute multiplier
        #
        #   @return [Float, nil]
        optional :multiplier, Float

        # @!attribute override_specifiers
        #
        #   @return [Array<MetronomeSDK::Models::ContractV2::Override::OverrideSpecifier>, nil]
        optional :override_specifiers,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::Override::OverrideSpecifier] }

        # @!attribute override_tiers
        #
        #   @return [Array<MetronomeSDK::Models::OverrideTier>, nil]
        optional :override_tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::OverrideTier] }

        # @!attribute overwrite_rate
        #
        #   @return [MetronomeSDK::Models::ContractV2::Override::OverwriteRate, nil]
        optional :overwrite_rate, -> { MetronomeSDK::ContractV2::Override::OverwriteRate }

        # @!attribute priority
        #
        #   @return [Float, nil]
        optional :priority, Float

        # @!attribute product
        #
        #   @return [MetronomeSDK::Models::ContractV2::Override::Product, nil]
        optional :product, -> { MetronomeSDK::ContractV2::Override::Product }

        # @!attribute target
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::Override::Target, nil]
        optional :target, enum: -> { MetronomeSDK::ContractV2::Override::Target }

        # @!attribute type
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::Override::Type, nil]
        optional :type, enum: -> { MetronomeSDK::ContractV2::Override::Type }

        # @!method initialize(id:, starting_at:, applicable_product_tags: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, override_specifiers: nil, override_tiers: nil, overwrite_rate: nil, priority: nil, product: nil, target: nil, type: nil)
        #   @param id [String]
        #   @param starting_at [Time]
        #   @param applicable_product_tags [Array<String>]
        #   @param ending_before [Time]
        #   @param entitled [Boolean]
        #   @param is_commit_specific [Boolean]
        #   @param multiplier [Float]
        #   @param override_specifiers [Array<MetronomeSDK::Models::ContractV2::Override::OverrideSpecifier>]
        #   @param override_tiers [Array<MetronomeSDK::Models::OverrideTier>]
        #   @param overwrite_rate [MetronomeSDK::Models::ContractV2::Override::OverwriteRate]
        #   @param priority [Float]
        #   @param product [MetronomeSDK::Models::ContractV2::Override::Product]
        #   @param target [Symbol, MetronomeSDK::Models::ContractV2::Override::Target]
        #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Override::Type]

        class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute billing_frequency
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractV2::Override::OverrideSpecifier::BillingFrequency, nil]
          optional :billing_frequency,
                   enum: -> { MetronomeSDK::ContractV2::Override::OverrideSpecifier::BillingFrequency }

          # @!attribute commit_ids
          #
          #   @return [Array<String>, nil]
          optional :commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute presentation_group_values
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String, nil?: true]

          # @!attribute pricing_group_values
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute product_id
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!attribute product_tags
          #
          #   @return [Array<String>, nil]
          optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute recurring_commit_ids
          #
          #   @return [Array<String>, nil]
          optional :recurring_commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute recurring_credit_ids
          #
          #   @return [Array<String>, nil]
          optional :recurring_credit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(billing_frequency: nil, commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil, recurring_credit_ids: nil)
          #   @param billing_frequency [Symbol, MetronomeSDK::Models::ContractV2::Override::OverrideSpecifier::BillingFrequency]
          #   @param commit_ids [Array<String>]
          #   @param presentation_group_values [Hash{Symbol=>String, nil}]
          #   @param pricing_group_values [Hash{Symbol=>String}]
          #   @param product_id [String]
          #   @param product_tags [Array<String>]
          #   @param recurring_commit_ids [Array<String>]
          #   @param recurring_credit_ids [Array<String>]

          # @see MetronomeSDK::Models::ContractV2::Override::OverrideSpecifier#billing_frequency
          module BillingFrequency
            extend MetronomeSDK::Internal::Type::Enum

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::ContractV2::Override#overwrite_rate
        class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractV2::Override::OverwriteRate::RateType]
          required :rate_type, enum: -> { MetronomeSDK::ContractV2::Override::OverwriteRate::RateType }

          # @!attribute credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData, nil]
          optional :credit_type, -> { MetronomeSDK::CreditTypeData }

          # @!attribute custom_rate
          #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
          #   processors.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :custom_rate, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute is_prorated
          #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
          #   set to true.
          #
          #   @return [Boolean, nil]
          optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

          # @!attribute price
          #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
          #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
          #
          #   @return [Float, nil]
          optional :price, Float

          # @!attribute quantity
          #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!attribute tiers
          #   Only set for TIERED rate_type.
          #
          #   @return [Array<MetronomeSDK::Models::Tier>, nil]
          optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

          # @!method initialize(rate_type:, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::ContractV2::Override::OverwriteRate} for more details.
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::ContractV2::Override::OverwriteRate::RateType]
          #
          #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
          #
          #   @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
          #
          #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
          #
          #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
          #
          #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
          #
          #   @param tiers [Array<MetronomeSDK::Models::Tier>] Only set for TIERED rate_type.

          # @see MetronomeSDK::Models::ContractV2::Override::OverwriteRate#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            FLAT = :FLAT
            PERCENTAGE = :PERCENTAGE
            SUBSCRIPTION = :SUBSCRIPTION
            TIERED = :TIERED
            CUSTOM = :CUSTOM

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::ContractV2::Override#product
        class Product < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see MetronomeSDK::Models::ContractV2::Override#target
        module Target
          extend MetronomeSDK::Internal::Type::Enum

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::ContractV2::Override#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          OVERWRITE = :OVERWRITE
          MULTIPLIER = :MULTIPLIER
          TIERED = :TIERED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Transition < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute from_contract_id
        #
        #   @return [String]
        required :from_contract_id, String

        # @!attribute to_contract_id
        #
        #   @return [String]
        required :to_contract_id, String

        # @!attribute type
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::Transition::Type]
        required :type, enum: -> { MetronomeSDK::ContractV2::Transition::Type }

        # @!method initialize(from_contract_id:, to_contract_id:, type:)
        #   @param from_contract_id [String]
        #   @param to_contract_id [String]
        #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Transition::Type]

        # @see MetronomeSDK::Models::ContractV2::Transition#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class UsageFilter < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute group_key
        #
        #   @return [String]
        required :group_key, String

        # @!attribute group_values
        #
        #   @return [Array<String>]
        required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute starting_at
        #   This will match contract starting_at value if usage filter is active from the
        #   beginning of the contract.
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute ending_before
        #   This will match contract ending_before value if usage filter is active until the
        #   end of the contract. It will be undefined if the contract is open-ended.
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!method initialize(group_key:, group_values:, starting_at:, ending_before: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::ContractV2::UsageFilter} for more details.
        #
        #   @param group_key [String]
        #
        #   @param group_values [Array<String>]
        #
        #   @param starting_at [Time] This will match contract starting_at value if usage filter is active from the be
        #
        #   @param ending_before [Time] This will match contract ending_before value if usage filter is active until the
      end

      # @see MetronomeSDK::Models::ContractV2#usage_statement_schedule
      class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute billing_anchor_date
        #   Contract usage statements follow a selected cadence based on this date.
        #
        #   @return [Time]
        required :billing_anchor_date, Time

        # @!attribute frequency
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::UsageStatementSchedule::Frequency]
        required :frequency, enum: -> { MetronomeSDK::ContractV2::UsageStatementSchedule::Frequency }

        # @!method initialize(billing_anchor_date:, frequency:)
        #   @param billing_anchor_date [Time] Contract usage statements follow a selected cadence based on this date.
        #
        #   @param frequency [Symbol, MetronomeSDK::Models::ContractV2::UsageStatementSchedule::Frequency]

        # @see MetronomeSDK::Models::ContractV2::UsageStatementSchedule#frequency
        module Frequency
          extend MetronomeSDK::Internal::Type::Enum

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
          WEEKLY = :WEEKLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Credit < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute product
        #
        #   @return [MetronomeSDK::Models::ContractV2::Credit::Product]
        required :product, -> { MetronomeSDK::ContractV2::Credit::Product }

        # @!attribute type
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::Credit::Type]
        required :type, enum: -> { MetronomeSDK::ContractV2::Credit::Type }

        # @!attribute access_schedule
        #   The schedule that the customer will gain access to the credits.
        #
        #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
        optional :access_schedule, -> { MetronomeSDK::ScheduleDuration }

        # @!attribute applicable_contract_ids
        #
        #   @return [Array<String>, nil]
        optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute applicable_product_ids
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute applicable_product_tags
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute balance
        #   The current balance of the credit or commit. This balance reflects the amount of
        #   credit or commit that the customer has access to use at this moment - thus,
        #   expired and upcoming credit or commit segments contribute 0 to the balance. The
        #   balance will match the sum of all ledger entries with the exception of the case
        #   where the sum of negative manual ledger entries exceeds the positive amount
        #   remaining on the credit or commit - in that case, the balance will be 0. All
        #   manual ledger entries associated with active credit or commit segments are
        #   included in the balance, including future-dated manual ledger entries.
        #
        #   @return [Float, nil]
        optional :balance, Float

        # @!attribute contract
        #
        #   @return [MetronomeSDK::Models::ContractV2::Credit::Contract, nil]
        optional :contract, -> { MetronomeSDK::ContractV2::Credit::Contract }

        # @!attribute created_at
        #   Timestamp of when the credit was created.
        #
        #   - Recurring credits: latter of credit service period date and parent credit
        #     start date
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute custom_fields
        #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute hierarchy_configuration
        #   Optional configuration for credit hierarchy access control
        #
        #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
        optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

        # @!attribute ledger
        #   A list of ordered events that impact the balance of a credit. For example, an
        #   invoice deduction or an expiration.
        #
        #   @return [Array<MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditManualLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry>, nil]
        optional :ledger,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::ContractV2::Credit::Ledger] }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :netsuite_sales_order_id, String

        # @!attribute priority
        #   If multiple credits or commits are applicable, the one with the lower priority
        #   will apply first.
        #
        #   @return [Float, nil]
        optional :priority, Float

        # @!attribute recurring_credit_id
        #   The ID of the recurring credit that created this credit
        #
        #   @return [String, nil]
        optional :recurring_credit_id, String

        # @!attribute salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :salesforce_opportunity_id, String

        # @!attribute specifiers
        #   List of filters that determine what kind of customer usage draws down a commit
        #   or credit. A customer's usage needs to meet the condition of at least one of the
        #   specifiers to contribute to a commit's or credit's drawdown.
        #
        #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
        optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

        # @!attribute subscription_config
        #   Attach a subscription to the recurring commit/credit.
        #
        #   @return [MetronomeSDK::Models::RecurringCommitSubscriptionConfig, nil]
        optional :subscription_config, -> { MetronomeSDK::RecurringCommitSubscriptionConfig }

        # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, balance: nil, contract: nil, created_at: nil, custom_fields: nil, description: nil, hierarchy_configuration: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, recurring_credit_id: nil, salesforce_opportunity_id: nil, specifiers: nil, subscription_config: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::ContractV2::Credit} for more details.
        #
        #   @param id [String]
        #
        #   @param product [MetronomeSDK::Models::ContractV2::Credit::Product]
        #
        #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Credit::Type]
        #
        #   @param access_schedule [MetronomeSDK::Models::ScheduleDuration] The schedule that the customer will gain access to the credits.
        #
        #   @param applicable_contract_ids [Array<String>]
        #
        #   @param applicable_product_ids [Array<String>]
        #
        #   @param applicable_product_tags [Array<String>]
        #
        #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
        #
        #   @param contract [MetronomeSDK::Models::ContractV2::Credit::Contract]
        #
        #   @param created_at [Time] Timestamp of when the credit was created.
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @param description [String]
        #
        #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for credit hierarchy access control
        #
        #   @param ledger [Array<MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditManualLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry>] A list of ordered events that impact the balance of a credit. For example, an in
        #
        #   @param name [String]
        #
        #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
        #
        #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
        #
        #   @param recurring_credit_id [String] The ID of the recurring credit that created this credit
        #
        #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
        #
        #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
        #
        #   @param subscription_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig] Attach a subscription to the recurring commit/credit.

        # @see MetronomeSDK::Models::ContractV2::Credit#product
        class Product < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see MetronomeSDK::Models::ContractV2::Credit#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          CREDIT = :CREDIT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::ContractV2::Credit#contract
        class Contract < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        module Ledger
          extend MetronomeSDK::Internal::Type::Union

          variant -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry }

          variant -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry }

          class CreditSegmentStartLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]
            required :type, enum: -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::Type }

            # @!method initialize(amount:, segment_id:, timestamp:, type:)
            #   @param amount [Float]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CreditAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute invoice_id
            #
            #   @return [String]
            required :invoice_id, String

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type }

            # @!attribute contract_id
            #
            #   @return [String, nil]
            optional :contract_id, String

            # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
            #   @param amount [Float]
            #   @param invoice_id [String]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]
            #   @param contract_id [String]

            # @see MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CreditExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::Type]
            required :type, enum: -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::Type }

            # @!method initialize(amount:, segment_id:, timestamp:, type:)
            #   @param amount [Float]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT_EXPIRATION = :CREDIT_EXPIRATION

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CreditCanceledLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute invoice_id
            #
            #   @return [String]
            required :invoice_id, String

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::Type]
            required :type, enum: -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::Type }

            # @!attribute contract_id
            #
            #   @return [String, nil]
            optional :contract_id, String

            # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
            #   @param amount [Float]
            #   @param invoice_id [String]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry::Type]
            #   @param contract_id [String]

            # @see MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT_CANCELED = :CREDIT_CANCELED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CreditCreditedLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute invoice_id
            #
            #   @return [String]
            required :invoice_id, String

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::Type]
            required :type, enum: -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::Type }

            # @!attribute contract_id
            #
            #   @return [String, nil]
            optional :contract_id, String

            # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
            #   @param amount [Float]
            #   @param invoice_id [String]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry::Type]
            #   @param contract_id [String]

            # @see MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT_CREDITED = :CREDIT_CREDITED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CreditManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute reason
            #
            #   @return [String]
            required :reason, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditManualLedgerEntry::Type]
            required :type, enum: -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditManualLedgerEntry::Type }

            # @!method initialize(amount:, reason:, timestamp:, type:)
            #   @param amount [Float]
            #   @param reason [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditManualLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditManualLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT_MANUAL = :CREDIT_MANUAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CreditSeatBasedAdjustmentLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute segment_id
            #
            #   @return [String]
            required :segment_id, String

            # @!attribute timestamp
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type]
            required :type,
                     enum: -> { MetronomeSDK::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type }

            # @!method initialize(amount:, segment_id:, timestamp:, type:)
            #   @param amount [Float]
            #   @param segment_id [String]
            #   @param timestamp [Time]
            #   @param type [Symbol, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type]

            # @see MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT_SEAT_BASED_ADJUSTMENT = :CREDIT_SEAT_BASED_ADJUSTMENT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditManualLedgerEntry, MetronomeSDK::Models::ContractV2::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry)]
        end
      end

      # @see MetronomeSDK::Models::ContractV2#customer_billing_provider_configuration
      class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of Customer's billing provider configuration.
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_provider
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::CustomerBillingProviderConfiguration::BillingProvider]
        required :billing_provider,
                 enum: -> { MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::BillingProvider }

        # @!attribute delivery_method
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod]
        required :delivery_method,
                 enum: -> { MetronomeSDK::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod }

        # @!method initialize(id:, billing_provider:, delivery_method:)
        #   This field's availability is dependent on your client's configuration.
        #
        #   @param id [String] ID of Customer's billing provider configuration.
        #
        #   @param billing_provider [Symbol, MetronomeSDK::Models::ContractV2::CustomerBillingProviderConfiguration::BillingProvider]
        #
        #   @param delivery_method [Symbol, MetronomeSDK::Models::ContractV2::CustomerBillingProviderConfiguration::DeliveryMethod]

        # @see MetronomeSDK::Models::ContractV2::CustomerBillingProviderConfiguration#billing_provider
        module BillingProvider
          extend MetronomeSDK::Internal::Type::Enum

          AWS_MARKETPLACE = :aws_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite
          CUSTOM = :custom
          AZURE_MARKETPLACE = :azure_marketplace
          QUICKBOOKS_ONLINE = :quickbooks_online
          WORKDAY = :workday
          GCP_MARKETPLACE = :gcp_marketplace
          METRONOME = :metronome

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::ContractV2::CustomerBillingProviderConfiguration#delivery_method
        module DeliveryMethod
          extend MetronomeSDK::Internal::Type::Enum

          DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
          AWS_SQS = :aws_sqs
          TACKLE = :tackle
          AWS_SNS = :aws_sns

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see MetronomeSDK::Models::ContractV2#has_more
      class HasMore < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute commits
        #   Whether there are more commits on this contract than the limit for this
        #   endpoint. Use the /contracts/customerCommits/list endpoint to get the full list
        #   of commits.
        #
        #   @return [Boolean]
        required :commits, MetronomeSDK::Internal::Type::Boolean

        # @!attribute credits
        #   Whether there are more credits on this contract than the limit for this
        #   endpoint. Use the /contracts/customerCredits/list endpoint to get the full list
        #   of credits.
        #
        #   @return [Boolean]
        required :credits, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(commits:, credits:)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::ContractV2::HasMore} for more details.
        #
        #   Indicates whether there are more items than the limit for this endpoint. Use the
        #   respective list endpoints to get the full lists.
        #
        #   @param commits [Boolean] Whether there are more commits on this contract than the limit for this endpoint
        #
        #   @param credits [Boolean] Whether there are more credits on this contract than the limit for this endpoint
      end

      # Either a **parent** configuration with a list of children or a **child**
      # configuration with a single parent.
      #
      # @see MetronomeSDK::Models::ContractV2#hierarchy_configuration
      module HierarchyConfiguration
        extend MetronomeSDK::Internal::Type::Union

        variant -> { MetronomeSDK::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration }

        variant -> { MetronomeSDK::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2 }

        class ParentHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute children
          #   List of contracts that belong to this parent.
          #
          #   @return [Array<MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::Child>]
          required :children,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::Child] }

          # @!attribute parent_behavior
          #
          #   @return [MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::ParentBehavior, nil]
          optional :parent_behavior,
                   -> { MetronomeSDK::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::ParentBehavior }

          # @!method initialize(children:, parent_behavior: nil)
          #   @param children [Array<MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::Child>] List of contracts that belong to this parent.
          #
          #   @param parent_behavior [MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::ParentBehavior]

          class Child < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute contract_id
            #
            #   @return [String]
            required :contract_id, String

            # @!attribute customer_id
            #
            #   @return [String]
            required :customer_id, String

            # @!method initialize(contract_id:, customer_id:)
            #   @param contract_id [String]
            #   @param customer_id [String]
          end

          # @see MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration#parent_behavior
          class ParentBehavior < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute invoice_consolidation_type
            #   Account hierarchy M3 - Indicates the desired behavior of consolidated invoices
            #   generated by the parent in a customer hierarchy
            #
            #   **CONCATENATE**: Statements on the invoices of child customers will be appended
            #   to the consolidated invoice
            #
            #   **NONE**: Do not generate consolidated invoices
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::ParentBehavior::InvoiceConsolidationType, nil]
            optional :invoice_consolidation_type,
                     enum: -> { MetronomeSDK::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::ParentBehavior::InvoiceConsolidationType }

            # @!method initialize(invoice_consolidation_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::ParentBehavior}
            #   for more details.
            #
            #   @param invoice_consolidation_type [Symbol, MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::ParentBehavior::InvoiceConsolidationType] Account hierarchy M3 - Indicates the desired behavior of consolidated invoices g

            # Account hierarchy M3 - Indicates the desired behavior of consolidated invoices
            # generated by the parent in a customer hierarchy
            #
            # **CONCATENATE**: Statements on the invoices of child customers will be appended
            # to the consolidated invoice
            #
            # **NONE**: Do not generate consolidated invoices
            #
            # @see MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration::ParentBehavior#invoice_consolidation_type
            module InvoiceConsolidationType
              extend MetronomeSDK::Internal::Type::Enum

              CONCATENATE = :CONCATENATE
              NONE = :NONE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class ChildHierarchyConfigurationV2 < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute parent
          #   The single parent contract/customer for this child.
          #
          #   @return [MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2::Parent]
          required :parent,
                   -> { MetronomeSDK::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2::Parent }

          # @!attribute payer
          #   Account hierarchy M3 - Indicates which customer should pay for the child's
          #   invoice charges **SELF**: The child pays for its own invoice charges **PARENT**:
          #   The parent pays for the child's invoice charges
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2::Payer, nil]
          optional :payer,
                   enum: -> { MetronomeSDK::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2::Payer }

          # @!attribute usage_statement_behavior
          #   Account hierarchy M3 - Indicates the behavior of the child's invoice statements
          #   on the parent's invoices.
          #
          #   **CONSOLIDATE**: Child's invoice statements will be added to parent's
          #   consolidated invoices
          #
          #   **SEPARATE**: Child's invoice statements will appear not appear on parent's
          #   consolidated invoices
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2::UsageStatementBehavior, nil]
          optional :usage_statement_behavior,
                   enum: -> { MetronomeSDK::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2::UsageStatementBehavior }

          # @!method initialize(parent:, payer: nil, usage_statement_behavior: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2}
          #   for more details.
          #
          #   @param parent [MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2::Parent] The single parent contract/customer for this child.
          #
          #   @param payer [Symbol, MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2::Payer] Account hierarchy M3 - Indicates which customer should pay for the child's invoi
          #
          #   @param usage_statement_behavior [Symbol, MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2::UsageStatementBehavior] Account hierarchy M3 - Indicates the behavior of the child's invoice statements

          # @see MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2#parent
          class Parent < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute contract_id
            #
            #   @return [String]
            required :contract_id, String

            # @!attribute customer_id
            #
            #   @return [String]
            required :customer_id, String

            # @!method initialize(contract_id:, customer_id:)
            #   The single parent contract/customer for this child.
            #
            #   @param contract_id [String]
            #   @param customer_id [String]
          end

          # Account hierarchy M3 - Indicates which customer should pay for the child's
          # invoice charges **SELF**: The child pays for its own invoice charges **PARENT**:
          # The parent pays for the child's invoice charges
          #
          # @see MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2#payer
          module Payer
            extend MetronomeSDK::Internal::Type::Enum

            SELF = :SELF
            PARENT = :PARENT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Account hierarchy M3 - Indicates the behavior of the child's invoice statements
          # on the parent's invoices.
          #
          # **CONSOLIDATE**: Child's invoice statements will be added to parent's
          # consolidated invoices
          #
          # **SEPARATE**: Child's invoice statements will appear not appear on parent's
          # consolidated invoices
          #
          # @see MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2#usage_statement_behavior
          module UsageStatementBehavior
            extend MetronomeSDK::Internal::Type::Enum

            CONSOLIDATE = :CONSOLIDATE
            SEPARATE = :SEPARATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ParentHierarchyConfiguration, MetronomeSDK::Models::ContractV2::HierarchyConfiguration::ChildHierarchyConfigurationV2)]
      end

      # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
      # prices automatically. EXPLICIT prioritization requires specifying priorities for
      # each multiplier; the one with the lowest priority value will be prioritized
      # first.
      #
      # @see MetronomeSDK::Models::ContractV2#multiplier_override_prioritization
      module MultiplierOverridePrioritization
        extend MetronomeSDK::Internal::Type::Enum

        LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
        EXPLICIT = :EXPLICIT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute access_amount
        #   The amount of commit to grant.
        #
        #   @return [MetronomeSDK::Models::ContractV2::RecurringCommit::AccessAmount]
        required :access_amount, -> { MetronomeSDK::ContractV2::RecurringCommit::AccessAmount }

        # @!attribute commit_duration
        #   The amount of time the created commits will be valid for
        #
        #   @return [MetronomeSDK::Models::ContractV2::RecurringCommit::CommitDuration]
        required :commit_duration, -> { MetronomeSDK::ContractV2::RecurringCommit::CommitDuration }

        # @!attribute priority
        #   Will be passed down to the individual commits
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product
        #
        #   @return [MetronomeSDK::Models::ContractV2::RecurringCommit::Product]
        required :product, -> { MetronomeSDK::ContractV2::RecurringCommit::Product }

        # @!attribute rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::RecurringCommit::RateType]
        required :rate_type, enum: -> { MetronomeSDK::ContractV2::RecurringCommit::RateType }

        # @!attribute starting_at
        #   Determines the start time for the first commit
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute applicable_product_ids
        #   Will be passed down to the individual commits
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute applicable_product_tags
        #   Will be passed down to the individual commits
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute contract
        #
        #   @return [MetronomeSDK::Models::ContractV2::RecurringCommit::Contract, nil]
        optional :contract, -> { MetronomeSDK::ContractV2::RecurringCommit::Contract }

        # @!attribute description
        #   Will be passed down to the individual commits
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute ending_before
        #   Determines when the contract will stop creating recurring commits. Optional
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!attribute hierarchy_configuration
        #   Optional configuration for recurring credit hierarchy access control
        #
        #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
        optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

        # @!attribute invoice_amount
        #   The amount the customer should be billed for the commit. Not required.
        #
        #   @return [MetronomeSDK::Models::ContractV2::RecurringCommit::InvoiceAmount, nil]
        optional :invoice_amount, -> { MetronomeSDK::ContractV2::RecurringCommit::InvoiceAmount }

        # @!attribute name
        #   Displayed on invoices. Will be passed through to the individual commits
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute netsuite_sales_order_id
        #   Will be passed down to the individual commits
        #
        #   @return [String, nil]
        optional :netsuite_sales_order_id, String

        # @!attribute proration
        #   Determines whether the first and last commit will be prorated. If not provided,
        #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::RecurringCommit::Proration, nil]
        optional :proration, enum: -> { MetronomeSDK::ContractV2::RecurringCommit::Proration }

        # @!attribute recurrence_frequency
        #   The frequency at which the recurring commits will be created. If not provided: -
        #   The commits will be created on the usage invoice frequency. If provided: - The
        #   period defined in the duration will correspond to this frequency. - Commits will
        #   be created aligned with the recurring commit's starting_at rather than the usage
        #   invoice dates.
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::RecurringCommit::RecurrenceFrequency, nil]
        optional :recurrence_frequency,
                 enum: -> { MetronomeSDK::ContractV2::RecurringCommit::RecurrenceFrequency }

        # @!attribute rollover_fraction
        #   Will be passed down to the individual commits. This controls how much of an
        #   individual unexpired commit will roll over upon contract transition. Must be
        #   between 0 and 1.
        #
        #   @return [Float, nil]
        optional :rollover_fraction, Float

        # @!attribute specifiers
        #   List of filters that determine what kind of customer usage draws down a commit
        #   or credit. A customer's usage needs to meet the condition of at least one of the
        #   specifiers to contribute to a commit's or credit's drawdown.
        #
        #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
        optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

        # @!attribute subscription_config
        #   Attach a subscription to the recurring commit/credit.
        #
        #   @return [MetronomeSDK::Models::RecurringCommitSubscriptionConfig, nil]
        optional :subscription_config, -> { MetronomeSDK::RecurringCommitSubscriptionConfig }

        # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, hierarchy_configuration: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::ContractV2::RecurringCommit} for more details.
        #
        #   @param id [String]
        #
        #   @param access_amount [MetronomeSDK::Models::ContractV2::RecurringCommit::AccessAmount] The amount of commit to grant.
        #
        #   @param commit_duration [MetronomeSDK::Models::ContractV2::RecurringCommit::CommitDuration] The amount of time the created commits will be valid for
        #
        #   @param priority [Float] Will be passed down to the individual commits
        #
        #   @param product [MetronomeSDK::Models::ContractV2::RecurringCommit::Product]
        #
        #   @param rate_type [Symbol, MetronomeSDK::Models::ContractV2::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
        #
        #   @param starting_at [Time] Determines the start time for the first commit
        #
        #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
        #
        #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
        #
        #   @param contract [MetronomeSDK::Models::ContractV2::RecurringCommit::Contract]
        #
        #   @param description [String] Will be passed down to the individual commits
        #
        #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
        #
        #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for recurring credit hierarchy access control
        #
        #   @param invoice_amount [MetronomeSDK::Models::ContractV2::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
        #
        #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
        #
        #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
        #
        #   @param proration [Symbol, MetronomeSDK::Models::ContractV2::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
        #
        #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::ContractV2::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
        #
        #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
        #
        #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
        #
        #   @param subscription_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig] Attach a subscription to the recurring commit/credit.

        # @see MetronomeSDK::Models::ContractV2::RecurringCommit#access_amount
        class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute credit_type_id
          #
          #   @return [String]
          required :credit_type_id, String

          # @!attribute unit_price
          #
          #   @return [Float]
          required :unit_price, Float

          # @!attribute quantity
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!method initialize(credit_type_id:, unit_price:, quantity: nil)
          #   The amount of commit to grant.
          #
          #   @param credit_type_id [String]
          #   @param unit_price [Float]
          #   @param quantity [Float]
        end

        # @see MetronomeSDK::Models::ContractV2::RecurringCommit#commit_duration
        class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractV2::RecurringCommit::CommitDuration::Unit, nil]
          optional :unit, enum: -> { MetronomeSDK::ContractV2::RecurringCommit::CommitDuration::Unit }

          # @!method initialize(value:, unit: nil)
          #   The amount of time the created commits will be valid for
          #
          #   @param value [Float]
          #   @param unit [Symbol, MetronomeSDK::Models::ContractV2::RecurringCommit::CommitDuration::Unit]

          # @see MetronomeSDK::Models::ContractV2::RecurringCommit::CommitDuration#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            PERIODS = :PERIODS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::ContractV2::RecurringCommit#product
        class Product < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # Whether the created commits will use the commit rate or list rate
        #
        # @see MetronomeSDK::Models::ContractV2::RecurringCommit#rate_type
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::ContractV2::RecurringCommit#contract
        class Contract < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see MetronomeSDK::Models::ContractV2::RecurringCommit#invoice_amount
        class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute credit_type_id
          #
          #   @return [String]
          required :credit_type_id, String

          # @!attribute quantity
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute unit_price
          #
          #   @return [Float]
          required :unit_price, Float

          # @!method initialize(credit_type_id:, quantity:, unit_price:)
          #   The amount the customer should be billed for the commit. Not required.
          #
          #   @param credit_type_id [String]
          #   @param quantity [Float]
          #   @param unit_price [Float]
        end

        # Determines whether the first and last commit will be prorated. If not provided,
        # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        #
        # @see MetronomeSDK::Models::ContractV2::RecurringCommit#proration
        module Proration
          extend MetronomeSDK::Internal::Type::Enum

          NONE = :NONE
          FIRST = :FIRST
          LAST = :LAST
          FIRST_AND_LAST = :FIRST_AND_LAST

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The frequency at which the recurring commits will be created. If not provided: -
        # The commits will be created on the usage invoice frequency. If provided: - The
        # period defined in the duration will correspond to this frequency. - Commits will
        # be created aligned with the recurring commit's starting_at rather than the usage
        # invoice dates.
        #
        # @see MetronomeSDK::Models::ContractV2::RecurringCommit#recurrence_frequency
        module RecurrenceFrequency
          extend MetronomeSDK::Internal::Type::Enum

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
          WEEKLY = :WEEKLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute access_amount
        #   The amount of commit to grant.
        #
        #   @return [MetronomeSDK::Models::ContractV2::RecurringCredit::AccessAmount]
        required :access_amount, -> { MetronomeSDK::ContractV2::RecurringCredit::AccessAmount }

        # @!attribute commit_duration
        #   The amount of time the created commits will be valid for
        #
        #   @return [MetronomeSDK::Models::ContractV2::RecurringCredit::CommitDuration]
        required :commit_duration, -> { MetronomeSDK::ContractV2::RecurringCredit::CommitDuration }

        # @!attribute priority
        #   Will be passed down to the individual commits
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product
        #
        #   @return [MetronomeSDK::Models::ContractV2::RecurringCredit::Product]
        required :product, -> { MetronomeSDK::ContractV2::RecurringCredit::Product }

        # @!attribute rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::RecurringCredit::RateType]
        required :rate_type, enum: -> { MetronomeSDK::ContractV2::RecurringCredit::RateType }

        # @!attribute starting_at
        #   Determines the start time for the first commit
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute applicable_product_ids
        #   Will be passed down to the individual commits
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute applicable_product_tags
        #   Will be passed down to the individual commits
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute contract
        #
        #   @return [MetronomeSDK::Models::ContractV2::RecurringCredit::Contract, nil]
        optional :contract, -> { MetronomeSDK::ContractV2::RecurringCredit::Contract }

        # @!attribute description
        #   Will be passed down to the individual commits
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute ending_before
        #   Determines when the contract will stop creating recurring commits. Optional
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!attribute hierarchy_configuration
        #   Optional configuration for recurring credit hierarchy access control
        #
        #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
        optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

        # @!attribute name
        #   Displayed on invoices. Will be passed through to the individual commits
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute netsuite_sales_order_id
        #   Will be passed down to the individual commits
        #
        #   @return [String, nil]
        optional :netsuite_sales_order_id, String

        # @!attribute proration
        #   Determines whether the first and last commit will be prorated. If not provided,
        #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::RecurringCredit::Proration, nil]
        optional :proration, enum: -> { MetronomeSDK::ContractV2::RecurringCredit::Proration }

        # @!attribute recurrence_frequency
        #   The frequency at which the recurring commits will be created. If not provided: -
        #   The commits will be created on the usage invoice frequency. If provided: - The
        #   period defined in the duration will correspond to this frequency. - Commits will
        #   be created aligned with the recurring commit's starting_at rather than the usage
        #   invoice dates.
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::RecurringCredit::RecurrenceFrequency, nil]
        optional :recurrence_frequency,
                 enum: -> { MetronomeSDK::ContractV2::RecurringCredit::RecurrenceFrequency }

        # @!attribute rollover_fraction
        #   Will be passed down to the individual commits. This controls how much of an
        #   individual unexpired commit will roll over upon contract transition. Must be
        #   between 0 and 1.
        #
        #   @return [Float, nil]
        optional :rollover_fraction, Float

        # @!attribute specifiers
        #   List of filters that determine what kind of customer usage draws down a commit
        #   or credit. A customer's usage needs to meet the condition of at least one of the
        #   specifiers to contribute to a commit's or credit's drawdown.
        #
        #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
        optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

        # @!attribute subscription_config
        #   Attach a subscription to the recurring commit/credit.
        #
        #   @return [MetronomeSDK::Models::RecurringCommitSubscriptionConfig, nil]
        optional :subscription_config, -> { MetronomeSDK::RecurringCommitSubscriptionConfig }

        # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, hierarchy_configuration: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::ContractV2::RecurringCredit} for more details.
        #
        #   @param id [String]
        #
        #   @param access_amount [MetronomeSDK::Models::ContractV2::RecurringCredit::AccessAmount] The amount of commit to grant.
        #
        #   @param commit_duration [MetronomeSDK::Models::ContractV2::RecurringCredit::CommitDuration] The amount of time the created commits will be valid for
        #
        #   @param priority [Float] Will be passed down to the individual commits
        #
        #   @param product [MetronomeSDK::Models::ContractV2::RecurringCredit::Product]
        #
        #   @param rate_type [Symbol, MetronomeSDK::Models::ContractV2::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
        #
        #   @param starting_at [Time] Determines the start time for the first commit
        #
        #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
        #
        #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
        #
        #   @param contract [MetronomeSDK::Models::ContractV2::RecurringCredit::Contract]
        #
        #   @param description [String] Will be passed down to the individual commits
        #
        #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
        #
        #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for recurring credit hierarchy access control
        #
        #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
        #
        #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
        #
        #   @param proration [Symbol, MetronomeSDK::Models::ContractV2::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
        #
        #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::ContractV2::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
        #
        #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
        #
        #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
        #
        #   @param subscription_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig] Attach a subscription to the recurring commit/credit.

        # @see MetronomeSDK::Models::ContractV2::RecurringCredit#access_amount
        class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute credit_type_id
          #
          #   @return [String]
          required :credit_type_id, String

          # @!attribute unit_price
          #
          #   @return [Float]
          required :unit_price, Float

          # @!attribute quantity
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!method initialize(credit_type_id:, unit_price:, quantity: nil)
          #   The amount of commit to grant.
          #
          #   @param credit_type_id [String]
          #   @param unit_price [Float]
          #   @param quantity [Float]
        end

        # @see MetronomeSDK::Models::ContractV2::RecurringCredit#commit_duration
        class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractV2::RecurringCredit::CommitDuration::Unit, nil]
          optional :unit, enum: -> { MetronomeSDK::ContractV2::RecurringCredit::CommitDuration::Unit }

          # @!method initialize(value:, unit: nil)
          #   The amount of time the created commits will be valid for
          #
          #   @param value [Float]
          #   @param unit [Symbol, MetronomeSDK::Models::ContractV2::RecurringCredit::CommitDuration::Unit]

          # @see MetronomeSDK::Models::ContractV2::RecurringCredit::CommitDuration#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            PERIODS = :PERIODS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::ContractV2::RecurringCredit#product
        class Product < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # Whether the created commits will use the commit rate or list rate
        #
        # @see MetronomeSDK::Models::ContractV2::RecurringCredit#rate_type
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::ContractV2::RecurringCredit#contract
        class Contract < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # Determines whether the first and last commit will be prorated. If not provided,
        # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        #
        # @see MetronomeSDK::Models::ContractV2::RecurringCredit#proration
        module Proration
          extend MetronomeSDK::Internal::Type::Enum

          NONE = :NONE
          FIRST = :FIRST
          LAST = :LAST
          FIRST_AND_LAST = :FIRST_AND_LAST

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The frequency at which the recurring commits will be created. If not provided: -
        # The commits will be created on the usage invoice frequency. If provided: - The
        # period defined in the duration will correspond to this frequency. - Commits will
        # be created aligned with the recurring commit's starting_at rather than the usage
        # invoice dates.
        #
        # @see MetronomeSDK::Models::ContractV2::RecurringCredit#recurrence_frequency
        module RecurrenceFrequency
          extend MetronomeSDK::Internal::Type::Enum

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
          WEEKLY = :WEEKLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute reseller_type
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractV2::ResellerRoyalty::ResellerType]
        required :reseller_type, enum: -> { MetronomeSDK::ContractV2::ResellerRoyalty::ResellerType }

        # @!attribute segments
        #
        #   @return [Array<MetronomeSDK::Models::ContractV2::ResellerRoyalty::Segment>]
        required :segments,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2::ResellerRoyalty::Segment] }

        # @!method initialize(reseller_type:, segments:)
        #   @param reseller_type [Symbol, MetronomeSDK::Models::ContractV2::ResellerRoyalty::ResellerType]
        #   @param segments [Array<MetronomeSDK::Models::ContractV2::ResellerRoyalty::Segment>]

        # @see MetronomeSDK::Models::ContractV2::ResellerRoyalty#reseller_type
        module ResellerType
          extend MetronomeSDK::Internal::Type::Enum

          AWS = :AWS
          AWS_PRO_SERVICE = :AWS_PRO_SERVICE
          GCP = :GCP
          GCP_PRO_SERVICE = :GCP_PRO_SERVICE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Segment < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute fraction
          #
          #   @return [Float]
          required :fraction, Float

          # @!attribute netsuite_reseller_id
          #
          #   @return [String]
          required :netsuite_reseller_id, String

          # @!attribute reseller_type
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractV2::ResellerRoyalty::Segment::ResellerType]
          required :reseller_type, enum: -> { MetronomeSDK::ContractV2::ResellerRoyalty::Segment::ResellerType }

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute applicable_product_ids
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute aws_account_number
          #
          #   @return [String, nil]
          optional :aws_account_number, String

          # @!attribute aws_offer_id
          #
          #   @return [String, nil]
          optional :aws_offer_id, String

          # @!attribute aws_payer_reference_id
          #
          #   @return [String, nil]
          optional :aws_payer_reference_id, String

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute gcp_account_id
          #
          #   @return [String, nil]
          optional :gcp_account_id, String

          # @!attribute gcp_offer_id
          #
          #   @return [String, nil]
          optional :gcp_offer_id, String

          # @!attribute reseller_contract_value
          #
          #   @return [Float, nil]
          optional :reseller_contract_value, Float

          # @!method initialize(fraction:, netsuite_reseller_id:, reseller_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil, ending_before: nil, gcp_account_id: nil, gcp_offer_id: nil, reseller_contract_value: nil)
          #   @param fraction [Float]
          #   @param netsuite_reseller_id [String]
          #   @param reseller_type [Symbol, MetronomeSDK::Models::ContractV2::ResellerRoyalty::Segment::ResellerType]
          #   @param starting_at [Time]
          #   @param applicable_product_ids [Array<String>]
          #   @param applicable_product_tags [Array<String>]
          #   @param aws_account_number [String]
          #   @param aws_offer_id [String]
          #   @param aws_payer_reference_id [String]
          #   @param ending_before [Time]
          #   @param gcp_account_id [String]
          #   @param gcp_offer_id [String]
          #   @param reseller_contract_value [Float]

          # @see MetronomeSDK::Models::ContractV2::ResellerRoyalty::Segment#reseller_type
          module ResellerType
            extend MetronomeSDK::Internal::Type::Enum

            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # Determines which scheduled and commit charges to consolidate onto the Contract's
      # usage invoice. The charge's `timestamp` must match the usage invoice's
      # `ending_before` date for consolidation to occur. This field cannot be modified
      # after a Contract has been created. If this field is omitted, charges will appear
      # on a separate invoice from usage charges.
      #
      # @see MetronomeSDK::Models::ContractV2#scheduled_charges_on_usage_invoices
      module ScheduledChargesOnUsageInvoices
        extend MetronomeSDK::Internal::Type::Enum

        ALL = :ALL

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
