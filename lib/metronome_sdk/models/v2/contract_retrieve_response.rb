# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#retrieve
      class ContractRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data]
        required :data, -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data]

        # @see MetronomeSDK::Models::V2::ContractRetrieveResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit>]
          required :commits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit] }

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
          #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override>]
          required :overrides,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override] }

          # @!attribute scheduled_charges
          #
          #   @return [Array<MetronomeSDK::Models::ScheduledCharge>]
          required :scheduled_charges,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ScheduledCharge]
                   }

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute transitions
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition>]
          required :transitions,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition] }

          # @!attribute usage_filter
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter>]
          required :usage_filter,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter] }

          # @!attribute usage_statement_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule]
          required :usage_statement_schedule,
                   -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule }

          # @!attribute archived_at
          #
          #   @return [Time, nil]
          optional :archived_at, Time

          # @!attribute credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit>, nil]
          optional :credits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit] }

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute customer_billing_provider_configuration
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration, nil]
          optional :customer_billing_provider_configuration,
                   -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration }

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
          #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HasMore, nil]
          optional :has_more, -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HasMore }

          # @!attribute hierarchy_configuration
          #   Either a **parent** configuration with a list of children or a **child**
          #   configuration with a single parent.
          #
          #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ParentHierarchyConfiguration, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ChildHierarchyConfiguration, nil]
          optional :hierarchy_configuration,
                   union: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration }

          # @!attribute multiplier_override_prioritization
          #   Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          #   prices automatically. EXPLICIT prioritization requires specifying priorities for
          #   each multiplier; the one with the lowest priority value will be prioritized
          #   first.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization, nil]
          optional :multiplier_override_prioritization,
                   enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization }

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
          #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration, nil]
          optional :prepaid_balance_threshold_configuration,
                   -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration }

          # @!attribute priority
          #   Priority of the contract.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute professional_services
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<MetronomeSDK::Models::ProService>, nil]
          optional :professional_services,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ProService]
                   }

          # @!attribute rate_card_id
          #
          #   @return [String, nil]
          optional :rate_card_id, String

          # @!attribute recurring_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit>, nil]
          optional :recurring_commits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit] }

          # @!attribute recurring_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit>, nil]
          optional :recurring_credits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit] }

          # @!attribute reseller_royalties
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty>, nil]
          optional :reseller_royalties,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty] }

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
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices, nil]
          optional :scheduled_charges_on_usage_invoices,
                   enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices }

          # @!attribute spend_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration, nil]
          optional :spend_threshold_configuration,
                   -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration }

          # @!attribute subscriptions
          #   List of subscriptions on the contract.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription>, nil]
          optional :subscriptions,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription] }

          # @!attribute total_contract_value
          #
          #   @return [Float, nil]
          optional :total_contract_value, Float

          # @!attribute uniqueness_key
          #   Prevents the creation of duplicates. If a request to create a record is made
          #   with a previously used uniqueness key, a new record will not be created and the
          #   request will fail with a 409 error.
          #
          #   @return [String, nil]
          optional :uniqueness_key, String

          # @!method initialize(id:, commits:, created_at:, created_by:, customer_id:, overrides:, scheduled_charges:, starting_at:, transitions:, usage_filter:, usage_statement_schedule:, archived_at: nil, credits: nil, custom_fields: nil, customer_billing_provider_configuration: nil, discounts: nil, ending_before: nil, has_more: nil, hierarchy_configuration: nil, multiplier_override_prioritization: nil, name: nil, net_payment_terms_days: nil, netsuite_sales_order_id: nil, prepaid_balance_threshold_configuration: nil, priority: nil, professional_services: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, total_contract_value: nil, uniqueness_key: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data} for more details.
          #
          #   @param id [String]
          #
          #   @param commits [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit>]
          #
          #   @param created_at [Time]
          #
          #   @param created_by [String]
          #
          #   @param customer_id [String]
          #
          #   @param overrides [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override>]
          #
          #   @param scheduled_charges [Array<MetronomeSDK::Models::ScheduledCharge>]
          #
          #   @param starting_at [Time]
          #
          #   @param transitions [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition>]
          #
          #   @param usage_filter [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter>]
          #
          #   @param usage_statement_schedule [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule]
          #
          #   @param archived_at [Time]
          #
          #   @param credits [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit>]
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param customer_billing_provider_configuration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration] This field's availability is dependent on your client's configuration.
          #
          #   @param discounts [Array<MetronomeSDK::Models::Discount>] This field's availability is dependent on your client's configuration.
          #
          #   @param ending_before [Time]
          #
          #   @param has_more [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HasMore] Indicates whether there are more items than the limit for this endpoint. Use the
          #
          #   @param hierarchy_configuration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ParentHierarchyConfiguration, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ChildHierarchyConfiguration] Either a **parent** configuration with a list of children or a **child** configu
          #
          #   @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
          #
          #   @param name [String]
          #
          #   @param net_payment_terms_days [Float]
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration]
          #
          #   @param priority [Float] Priority of the contract.
          #
          #   @param professional_services [Array<MetronomeSDK::Models::ProService>] This field's availability is dependent on your client's configuration.
          #
          #   @param rate_card_id [String]
          #
          #   @param recurring_commits [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit>]
          #
          #   @param recurring_credits [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit>]
          #
          #   @param reseller_royalties [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
          #
          #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
          #
          #   @param spend_threshold_configuration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration]
          #
          #   @param subscriptions [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription>] List of subscriptions on the contract.
          #
          #   @param total_contract_value [Float]
          #
          #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit

          class Commit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product]
            required :product, -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Type]
            required :type, enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Type }

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
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract }

            # @!attribute custom_fields
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
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration, nil]
            optional :hierarchy_configuration,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration }

            # @!attribute invoice_contract
            #   The contract that this commit will be billed on.
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract, nil]
            optional :invoice_contract,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract }

            # @!attribute invoice_schedule
            #   The schedule that the customer will be invoiced for this commit.
            #
            #   @return [MetronomeSDK::Models::SchedulePointInTime, nil]
            optional :invoice_schedule, -> { MetronomeSDK::SchedulePointInTime }

            # @!attribute ledger
            #   A list of ordered events that impact the balance of a commit. For example, an
            #   invoice deduction or a rollover.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>, nil]
            optional :ledger,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger] }

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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType, nil]
            optional :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType }

            # @!attribute rolled_over_from
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom, nil]
            optional :rolled_over_from,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom }

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
            #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Specifier>, nil]
            optional :specifiers,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Specifier] }

            # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, archived_at: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, hierarchy_configuration: nil, invoice_contract: nil, invoice_schedule: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rolled_over_from: nil, rollover_fraction: nil, salesforce_opportunity_id: nil, specifiers: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit} for more
            #   details.
            #
            #   @param id [String]
            #
            #   @param product [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Product]
            #
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Type]
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
            #   @param contract [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Contract]
            #
            #   @param custom_fields [Hash{Symbol=>String}]
            #
            #   @param description [String]
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration] Optional configuration for commit hierarchy access control
            #
            #   @param invoice_contract [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::InvoiceContract] The contract that this commit will be billed on.
            #
            #   @param invoice_schedule [MetronomeSDK::Models::SchedulePointInTime] The schedule that the customer will be invoiced for this commit.
            #
            #   @param ledger [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>] A list of ordered events that impact the balance of a commit. For example, an in
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RateType]
            #
            #   @param rolled_over_from [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::RolledOverFrom]
            #
            #   @param rollover_fraction [Float]
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit#product
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

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID = :PREPAID
              POSTPAID = :POSTPAID

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit#contract
            class Contract < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit#hierarchy_configuration
            class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute child_access
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]
              required :child_access,
                       union: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess }

              # @!method initialize(child_access:)
              #   Optional configuration for commit hierarchy access control
              #
              #   @param child_access [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration#child_access
              module ChildAccess
                extend MetronomeSDK::Internal::Type::Union

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll }

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone }

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs }

                class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    ALL = :ALL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CommitHierarchyChildAccessNone < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    NONE = :NONE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CommitHierarchyChildAccessContractIDs < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute contract_ids
                  #
                  #   @return [Array<String>]
                  required :contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type }

                  # @!method initialize(contract_ids:, type:)
                  #   @param contract_ids [Array<String>]
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CONTRACT_IDS = :CONTRACT_IDS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs)]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit#invoice_contract
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

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry }

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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type }

                # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param new_contract_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type }

                # @!method initialize(amount:, timestamp:, type:)
                #   @param amount [Float]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type }

                # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param new_contract_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type }

                # @!method initialize(amount:, reason:, timestamp:, type:)
                #   @param amount [Float]
                #   @param reason [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type }

                # @!method initialize(amount:, reason:, timestamp:, type:)
                #   @param amount [Float]
                #   @param reason [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type }

                # @!method initialize(amount:, timestamp:, type:)
                #   @param amount [Float]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry)]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit#rolled_over_from
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

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute presentation_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute pricing_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute product_id
              #   If provided, the specifier will only apply to the product with the specified ID.
              #
              #   @return [String, nil]
              optional :product_id, String

              # @!attribute product_tags
              #   If provided, the specifier will only apply to products with all the specified
              #   tags.
              #
              #   @return [Array<String>, nil]
              optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!method initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Commit::Specifier}
              #   for more details.
              #
              #   @param presentation_group_values [Hash{Symbol=>String}]
              #
              #   @param pricing_group_values [Hash{Symbol=>String}]
              #
              #   @param product_id [String] If provided, the specifier will only apply to the product with the specified ID.
              #
              #   @param product_tags [Array<String>] If provided, the specifier will only apply to products with all the specified ta
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
            #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier>, nil]
            optional :override_specifiers,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier] }

            # @!attribute override_tiers
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier>, nil]
            optional :override_tiers,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier] }

            # @!attribute overwrite_rate
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate, nil]
            optional :overwrite_rate,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate }

            # @!attribute priority
            #
            #   @return [Float, nil]
            optional :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product, nil]
            optional :product, -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product }

            # @!attribute target
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target, nil]
            optional :target, enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type, nil]
            optional :type, enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type }

            # @!method initialize(id:, starting_at:, applicable_product_tags: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, override_specifiers: nil, override_tiers: nil, overwrite_rate: nil, priority: nil, product: nil, target: nil, type: nil)
            #   @param id [String]
            #   @param starting_at [Time]
            #   @param applicable_product_tags [Array<String>]
            #   @param ending_before [Time]
            #   @param entitled [Boolean]
            #   @param is_commit_specific [Boolean]
            #   @param multiplier [Float]
            #   @param override_specifiers [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier>]
            #   @param override_tiers [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideTier>]
            #   @param overwrite_rate [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate]
            #   @param priority [Float]
            #   @param product [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Product]
            #   @param target [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Target]
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::Type]

            class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute billing_frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency, nil]
              optional :billing_frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency }

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
              #   @param billing_frequency [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier::BillingFrequency]
              #   @param commit_ids [Array<String>]
              #   @param presentation_group_values [Hash{Symbol=>String, nil}]
              #   @param pricing_group_values [Hash{Symbol=>String}]
              #   @param product_id [String]
              #   @param product_tags [Array<String>]
              #   @param recurring_commit_ids [Array<String>]
              #   @param recurring_credit_ids [Array<String>]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverrideSpecifier#billing_frequency
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

            class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute multiplier
              #
              #   @return [Float]
              required :multiplier, Float

              # @!attribute size
              #
              #   @return [Float, nil]
              optional :size, Float

              # @!method initialize(multiplier:, size: nil)
              #   @param multiplier [Float]
              #   @param size [Float]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override#overwrite_rate
            class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType }

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::CreditTypeData, nil]
              optional :credit_type, -> { MetronomeSDK::CreditTypeData }

              # @!attribute custom_rate
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #   processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :custom_rate,
                       MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

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
              #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate}
              #   for more details.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate::RateType]
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

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override::OverwriteRate#rate_type
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

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override#product
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

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override#target
            module Target
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Override#type
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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::Type]
            required :type, enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::Type }

            # @!method initialize(from_contract_id:, to_contract_id:, type:)
            #   @param from_contract_id [String]
            #   @param to_contract_id [String]
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition::Type]

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Transition#type
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
            #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageFilter} for more
            #   details.
            #
            #   @param group_key [String]
            #
            #   @param group_values [Array<String>]
            #
            #   @param starting_at [Time] This will match contract starting_at value if usage filter is active from the be
            #
            #   @param ending_before [Time] This will match contract ending_before value if usage filter is active until the
          end

          # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data#usage_statement_schedule
          class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_anchor_date
            #   Contract usage statements follow a selected cadence based on this date.
            #
            #   @return [Time]
            required :billing_anchor_date, Time

            # @!attribute frequency
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency]
            required :frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency }

            # @!method initialize(billing_anchor_date:, frequency:)
            #   @param billing_anchor_date [Time] Contract usage statements follow a selected cadence based on this date.
            #
            #   @param frequency [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule::Frequency]

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::UsageStatementSchedule#frequency
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
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product]
            required :product, -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Type]
            required :type, enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Type }

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
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract }

            # @!attribute custom_fields
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
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration, nil]
            optional :hierarchy_configuration,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration }

            # @!attribute ledger
            #   A list of ordered events that impact the balance of a credit. For example, an
            #   invoice deduction or an expiration.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry>, nil]
            optional :ledger,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger] }

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
            #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Specifier>, nil]
            optional :specifiers,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Specifier] }

            # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, hierarchy_configuration: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, salesforce_opportunity_id: nil, specifiers: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit} for more
            #   details.
            #
            #   @param id [String]
            #
            #   @param product [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Product]
            #
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Type]
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
            #   @param contract [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Contract]
            #
            #   @param custom_fields [Hash{Symbol=>String}]
            #
            #   @param description [String]
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration] Optional configuration for credit hierarchy access control
            #
            #   @param ledger [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry>] A list of ordered events that impact the balance of a credit. For example, an in
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit#product
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

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT = :CREDIT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit#contract
            class Contract < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit#hierarchy_configuration
            class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute child_access
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]
              required :child_access,
                       union: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess }

              # @!method initialize(child_access:)
              #   Optional configuration for credit hierarchy access control
              #
              #   @param child_access [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration#child_access
              module ChildAccess
                extend MetronomeSDK::Internal::Type::Union

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll }

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone }

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs }

                class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    ALL = :ALL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CommitHierarchyChildAccessNone < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    NONE = :NONE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CommitHierarchyChildAccessContractIDs < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute contract_ids
                  #
                  #   @return [Array<String>]
                  required :contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type }

                  # @!method initialize(contract_ids:, type:)
                  #   @param contract_ids [Array<String>]
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CONTRACT_IDS = :CONTRACT_IDS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs)]
              end
            end

            module Ledger
              extend MetronomeSDK::Internal::Type::Union

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry }

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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type }

                # @!method initialize(amount:, reason:, timestamp:, type:)
                #   @param amount [Float]
                #   @param reason [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  CREDIT_SEAT_BASED_ADJUSTMENT = :CREDIT_SEAT_BASED_ADJUSTMENT

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditManualLedgerEntry, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Ledger::CreditSeatBasedAdjustmentLedgerEntry)]
            end

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute presentation_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute pricing_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute product_id
              #   If provided, the specifier will only apply to the product with the specified ID.
              #
              #   @return [String, nil]
              optional :product_id, String

              # @!attribute product_tags
              #   If provided, the specifier will only apply to products with all the specified
              #   tags.
              #
              #   @return [Array<String>, nil]
              optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!method initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Credit::Specifier}
              #   for more details.
              #
              #   @param presentation_group_values [Hash{Symbol=>String}]
              #
              #   @param pricing_group_values [Hash{Symbol=>String}]
              #
              #   @param product_id [String] If provided, the specifier will only apply to the product with the specified ID.
              #
              #   @param product_tags [Array<String>] If provided, the specifier will only apply to products with all the specified ta
            end
          end

          # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data#customer_billing_provider_configuration
          class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #   ID of Customer's billing provider configuration.
            #
            #   @return [String]
            required :id, String

            # @!attribute billing_provider
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
            required :billing_provider,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider }

            # @!attribute delivery_method
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
            required :delivery_method,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod }

            # @!method initialize(id:, billing_provider:, delivery_method:)
            #   This field's availability is dependent on your client's configuration.
            #
            #   @param id [String] ID of Customer's billing provider configuration.
            #
            #   @param billing_provider [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
            #
            #   @param delivery_method [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration#billing_provider
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

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration#delivery_method
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

          # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data#has_more
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
            #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HasMore} for more
            #   details.
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
          # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data#hierarchy_configuration
          module HierarchyConfiguration
            extend MetronomeSDK::Internal::Type::Union

            variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ParentHierarchyConfiguration }

            variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ChildHierarchyConfiguration }

            class ParentHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute children
              #   List of contracts that belong to this parent.
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ParentHierarchyConfiguration::Child>]
              required :children,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ParentHierarchyConfiguration::Child
                         ]
                       end

              # @!method initialize(children:)
              #   @param children [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ParentHierarchyConfiguration::Child>] List of contracts that belong to this parent.

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
            end

            class ChildHierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute parent
              #   The single parent contract/customer for this child.
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ChildHierarchyConfiguration::Parent]
              required :parent,
                       -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ChildHierarchyConfiguration::Parent }

              # @!method initialize(parent:)
              #   @param parent [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ChildHierarchyConfiguration::Parent] The single parent contract/customer for this child.

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ChildHierarchyConfiguration#parent
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
            end

            # @!method self.variants
            #   @return [Array(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ParentHierarchyConfiguration, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::HierarchyConfiguration::ChildHierarchyConfiguration)]
          end

          # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          # prices automatically. EXPLICIT prioritization requires specifying priorities for
          # each multiplier; the one with the lowest priority value will be prioritized
          # first.
          #
          # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data#multiplier_override_prioritization
          module MultiplierOverridePrioritization
            extend MetronomeSDK::Internal::Type::Enum

            LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
            EXPLICIT = :EXPLICIT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data#prepaid_balance_threshold_configuration
          class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit]
            required :commit,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #   threshold_amount. Toggling to true will result an immediate evaluation,
            #   regardless of prior state.
            #
            #   @return [Boolean]
            required :is_enabled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
            required :payment_gate_config,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig }

            # @!attribute recharge_to_amount
            #   Specify the amount the balance should be recharged to.
            #
            #   @return [Float]
            required :recharge_to_amount, Float

            # @!attribute threshold_amount
            #   Specify the threshold amount for the contract. Each time the contract's balance
            #   lowers to this amount, a threshold charge will be initiated.
            #
            #   @return [Float]
            required :threshold_amount, Float

            # @!attribute custom_credit_type_id
            #   If provided, the threshold, recharge-to amount, and the resulting threshold
            #   commit amount will be in terms of this credit type instead of the fiat currency.
            #
            #   @return [String, nil]
            optional :custom_credit_type_id, String

            # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:, custom_credit_type_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration}
            #   for more details.
            #
            #   @param commit [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit]
            #
            #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
            #
            #   @param payment_gate_config [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
            #
            #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
            #
            #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's balance
            #
            #   @param custom_credit_type_id [String] If provided, the threshold, recharge-to amount, and the resulting threshold comm

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration#commit
            class Commit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute product_id
              #   The commit product that will be used to generate the line item for commit
              #   payment.
              #
              #   @return [String]
              required :product_id, String

              # @!attribute applicable_product_ids
              #   Which products the threshold commit applies to. If applicable_product_ids,
              #   applicable_product_tags or specifiers are not provided, the commit applies to
              #   all products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #   Which tags the threshold commit applies to. If applicable_product_ids,
              #   applicable_product_tags or specifiers are not provided, the commit applies to
              #   all products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute name
              #   Specify the name of the line item for the threshold charge. If left blank, it
              #   will default to the commit product name.
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute specifiers
              #   List of filters that determine what kind of customer usage draws down a commit
              #   or credit. A customer's usage needs to meet the condition of at least one of the
              #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
              #   be used together with `applicable_product_ids` or `applicable_product_tags`.
              #   Instead, to target usage by product or product tag, pass those values in the
              #   body of `specifiers`.
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier>, nil]
              optional :specifiers,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier
                         ]
                       end

              # @!method initialize(product_id:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil, specifiers: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit}
              #   for more details.
              #
              #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
              #
              #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If applicable_product_ids, appli
              #
              #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If applicable_product_ids, applicabl
              #
              #   @param description [String]
              #
              #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
              #
              #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o

              class Specifier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute presentation_group_values
                #
                #   @return [Hash{Symbol=>String}, nil]
                optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

                # @!attribute pricing_group_values
                #
                #   @return [Hash{Symbol=>String}, nil]
                optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

                # @!attribute product_id
                #   If provided, the specifier will only apply to the product with the specified ID.
                #
                #   @return [String, nil]
                optional :product_id, String

                # @!attribute product_tags
                #   If provided, the specifier will only apply to products with all the specified
                #   tags.
                #
                #   @return [Array<String>, nil]
                optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!method initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::Commit::Specifier}
                #   for more details.
                #
                #   @param presentation_group_values [Hash{Symbol=>String}]
                #
                #   @param pricing_group_values [Hash{Symbol=>String}]
                #
                #   @param product_id [String] If provided, the specifier will only apply to the product with the specified ID.
                #
                #   @param product_tags [Array<String>] If provided, the specifier will only apply to products with all the specified ta
              end
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration#payment_gate_config
            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_gate_type
              #   Gate access to the commit balance based on successful collection of payment.
              #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              #   facilitate payment using your own payment integration. Select NONE if you do not
              #   wish to payment gate the commit balance.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
              required :payment_gate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType }

              # @!attribute precalculated_tax_config
              #   Only applicable if using PRECALCULATED as your tax type.
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig, nil]
              optional :precalculated_tax_config,
                       -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig }

              # @!attribute stripe_config
              #   Only applicable if using STRIPE as your payment gateway type.
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
              optional :stripe_config,
                       -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig }

              # @!attribute tax_type
              #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
              #   will default to NONE.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
              optional :tax_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType }

              # @!method initialize(payment_gate_type:, precalculated_tax_config: nil, stripe_config: nil, tax_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig}
              #   for more details.
              #
              #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
              #
              #   @param precalculated_tax_config [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig] Only applicable if using PRECALCULATED as your tax type.
              #
              #   @param stripe_config [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using STRIPE as your payment gateway type.
              #
              #   @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              #
              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
              module PaymentGateType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE
                EXTERNAL = :EXTERNAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#precalculated_tax_config
              class PrecalculatedTaxConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute tax_amount
                #   Amount of tax to be applied. This should be in the same currency and
                #   denomination as the commit's invoice schedule
                #
                #   @return [Float]
                required :tax_amount, Float

                # @!attribute tax_name
                #   Name of the tax to be applied. This may be used in an invoice line item
                #   description.
                #
                #   @return [String, nil]
                optional :tax_name, String

                # @!method initialize(tax_amount:, tax_name: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig}
                #   for more details.
                #
                #   Only applicable if using PRECALCULATED as your tax type.
                #
                #   @param tax_amount [Float] Amount of tax to be applied. This should be in the same currency and denominatio
                #
                #   @param tax_name [String] Name of the tax to be applied. This may be used in an invoice line item descript
              end

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_type
                #   If left blank, will default to INVOICE
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                required :payment_type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                # @!attribute invoice_metadata
                #   Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
                #   your payment type.
                #
                #   @return [Hash{Symbol=>String}, nil]
                optional :invoice_metadata, MetronomeSDK::Internal::Type::HashOf[String]

                # @!method initialize(payment_type:, invoice_metadata: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig}
                #   for more details.
                #
                #   Only applicable if using STRIPE as your payment gateway type.
                #
                #   @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE
                #
                #   @param invoice_metadata [Hash{Symbol=>String}] Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as

                # If left blank, will default to INVOICE
                #
                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
                module PaymentType
                  extend MetronomeSDK::Internal::Type::Enum

                  INVOICE = :INVOICE
                  PAYMENT_INTENT = :PAYMENT_INTENT

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              #
              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#tax_type
              module TaxType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE
                ANROK = :ANROK
                PRECALCULATED = :PRECALCULATED

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_amount
            #   The amount of commit to grant.
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount]
            required :access_amount,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount }

            # @!attribute commit_duration
            #   The amount of time the created commits will be valid for
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration]
            required :commit_duration,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration }

            # @!attribute priority
            #   Will be passed down to the individual commits
            #
            #   @return [Float]
            required :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product }

            # @!attribute rate_type
            #   Whether the created commits will use the commit rate or list rate
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RateType }

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
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract, nil]
            optional :contract,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract }

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
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration, nil]
            optional :hierarchy_configuration,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration }

            # @!attribute invoice_amount
            #   The amount the customer should be billed for the commit. Not required.
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount, nil]
            optional :invoice_amount,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount }

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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration, nil]
            optional :proration,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration }

            # @!attribute recurrence_frequency
            #   The frequency at which the recurring commits will be created. If not provided: -
            #   The commits will be created on the usage invoice frequency. If provided: - The
            #   period defined in the duration will correspond to this frequency. - Commits will
            #   be created aligned with the recurring commit's starting_at rather than the usage
            #   invoice dates.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency, nil]
            optional :recurrence_frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency }

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
            #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Specifier>, nil]
            optional :specifiers,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Specifier] }

            # @!attribute subscription_config
            #   Attach a subscription to the recurring commit/credit.
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig, nil]
            optional :subscription_config,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig }

            # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, hierarchy_configuration: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param access_amount [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::AccessAmount] The amount of commit to grant.
            #
            #   @param commit_duration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration] The amount of time the created commits will be valid for
            #
            #   @param priority [Float] Will be passed down to the individual commits
            #
            #   @param product [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Product]
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
            #
            #   @param starting_at [Time] Determines the start time for the first commit
            #
            #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
            #
            #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
            #
            #   @param contract [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Contract]
            #
            #   @param description [String] Will be passed down to the individual commits
            #
            #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration] Optional configuration for recurring credit hierarchy access control
            #
            #   @param invoice_amount [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
            #
            #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
            #
            #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
            #
            #   @param proration [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
            #
            #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
            #
            #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
            #
            #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
            #
            #   @param subscription_config [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig] Attach a subscription to the recurring commit/credit.

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit#access_amount
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

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit#commit_duration
            class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute value
              #
              #   @return [Float]
              required :value, Float

              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit, nil]
              optional :unit,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit }

              # @!method initialize(value:, unit: nil)
              #   The amount of time the created commits will be valid for
              #
              #   @param value [Float]
              #   @param unit [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration::Unit]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::CommitDuration#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                PERIODS = :PERIODS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit#product
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
            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit#contract
            class Contract < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit#hierarchy_configuration
            class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute child_access
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]
              required :child_access,
                       union: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess }

              # @!method initialize(child_access:)
              #   Optional configuration for recurring credit hierarchy access control
              #
              #   @param child_access [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration#child_access
              module ChildAccess
                extend MetronomeSDK::Internal::Type::Union

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll }

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone }

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs }

                class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    ALL = :ALL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CommitHierarchyChildAccessNone < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    NONE = :NONE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CommitHierarchyChildAccessContractIDs < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute contract_ids
                  #
                  #   @return [Array<String>]
                  required :contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type }

                  # @!method initialize(contract_ids:, type:)
                  #   @param contract_ids [Array<String>]
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CONTRACT_IDS = :CONTRACT_IDS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs)]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit#invoice_amount
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
            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit#proration
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
            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit#recurrence_frequency
            module RecurrenceFrequency
              extend MetronomeSDK::Internal::Type::Enum

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute presentation_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute pricing_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute product_id
              #   If provided, the specifier will only apply to the product with the specified ID.
              #
              #   @return [String, nil]
              optional :product_id, String

              # @!attribute product_tags
              #   If provided, the specifier will only apply to products with all the specified
              #   tags.
              #
              #   @return [Array<String>, nil]
              optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!method initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::Specifier}
              #   for more details.
              #
              #   @param presentation_group_values [Hash{Symbol=>String}]
              #
              #   @param pricing_group_values [Hash{Symbol=>String}]
              #
              #   @param product_id [String] If provided, the specifier will only apply to the product with the specified ID.
              #
              #   @param product_tags [Array<String>] If provided, the specifier will only apply to products with all the specified ta
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit#subscription_config
            class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute allocation
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::Allocation]
              required :allocation,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::Allocation }

              # @!attribute apply_seat_increase_config
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig]
              required :apply_seat_increase_config,
                       -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig }

              # @!attribute subscription_id
              #
              #   @return [String]
              required :subscription_id, String

              # @!method initialize(allocation:, apply_seat_increase_config:, subscription_id:)
              #   Attach a subscription to the recurring commit/credit.
              #
              #   @param allocation [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::Allocation]
              #   @param apply_seat_increase_config [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig]
              #   @param subscription_id [String]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig#allocation
              module Allocation
                extend MetronomeSDK::Internal::Type::Enum

                INDIVIDUAL = :INDIVIDUAL
                POOLED = :POOLED

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCommit::SubscriptionConfig#apply_seat_increase_config
              class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute is_prorated
                #   Indicates whether a mid-period seat increase should be prorated.
                #
                #   @return [Boolean]
                required :is_prorated, MetronomeSDK::Internal::Type::Boolean

                # @!method initialize(is_prorated:)
                #   @param is_prorated [Boolean] Indicates whether a mid-period seat increase should be prorated.
              end
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
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount]
            required :access_amount,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount }

            # @!attribute commit_duration
            #   The amount of time the created commits will be valid for
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration]
            required :commit_duration,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration }

            # @!attribute priority
            #   Will be passed down to the individual commits
            #
            #   @return [Float]
            required :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product }

            # @!attribute rate_type
            #   Whether the created commits will use the commit rate or list rate
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RateType }

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
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract, nil]
            optional :contract,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract }

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
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration, nil]
            optional :hierarchy_configuration,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration }

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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration, nil]
            optional :proration,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration }

            # @!attribute recurrence_frequency
            #   The frequency at which the recurring commits will be created. If not provided: -
            #   The commits will be created on the usage invoice frequency. If provided: - The
            #   period defined in the duration will correspond to this frequency. - Commits will
            #   be created aligned with the recurring commit's starting_at rather than the usage
            #   invoice dates.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency, nil]
            optional :recurrence_frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency }

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
            #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Specifier>, nil]
            optional :specifiers,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Specifier] }

            # @!attribute subscription_config
            #   Attach a subscription to the recurring commit/credit.
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig, nil]
            optional :subscription_config,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig }

            # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, hierarchy_configuration: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param access_amount [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::AccessAmount] The amount of commit to grant.
            #
            #   @param commit_duration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration] The amount of time the created commits will be valid for
            #
            #   @param priority [Float] Will be passed down to the individual commits
            #
            #   @param product [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Product]
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
            #
            #   @param starting_at [Time] Determines the start time for the first commit
            #
            #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
            #
            #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
            #
            #   @param contract [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Contract]
            #
            #   @param description [String] Will be passed down to the individual commits
            #
            #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration] Optional configuration for recurring credit hierarchy access control
            #
            #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
            #
            #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
            #
            #   @param proration [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
            #
            #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
            #
            #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
            #
            #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
            #
            #   @param subscription_config [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig] Attach a subscription to the recurring commit/credit.

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit#access_amount
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

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit#commit_duration
            class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute value
              #
              #   @return [Float]
              required :value, Float

              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit, nil]
              optional :unit,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit }

              # @!method initialize(value:, unit: nil)
              #   The amount of time the created commits will be valid for
              #
              #   @param value [Float]
              #   @param unit [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration::Unit]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::CommitDuration#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                PERIODS = :PERIODS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit#product
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
            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit#contract
            class Contract < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit#hierarchy_configuration
            class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute child_access
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]
              required :child_access,
                       union: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess }

              # @!method initialize(child_access:)
              #   Optional configuration for recurring credit hierarchy access control
              #
              #   @param child_access [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration#child_access
              module ChildAccess
                extend MetronomeSDK::Internal::Type::Union

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll }

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone }

                variant -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs }

                class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    ALL = :ALL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CommitHierarchyChildAccessNone < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type }

                  # @!method initialize(type:)
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    NONE = :NONE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CommitHierarchyChildAccessContractIDs < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute contract_ids
                  #
                  #   @return [Array<String>]
                  required :contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type }

                  # @!method initialize(contract_ids:, type:)
                  #   @param contract_ids [Array<String>]
                  #   @param type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]

                  # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CONTRACT_IDS = :CONTRACT_IDS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs)]
              end
            end

            # Determines whether the first and last commit will be prorated. If not provided,
            # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit#proration
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
            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit#recurrence_frequency
            module RecurrenceFrequency
              extend MetronomeSDK::Internal::Type::Enum

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class Specifier < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute presentation_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute pricing_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute product_id
              #   If provided, the specifier will only apply to the product with the specified ID.
              #
              #   @return [String, nil]
              optional :product_id, String

              # @!attribute product_tags
              #   If provided, the specifier will only apply to products with all the specified
              #   tags.
              #
              #   @return [Array<String>, nil]
              optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!method initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::Specifier}
              #   for more details.
              #
              #   @param presentation_group_values [Hash{Symbol=>String}]
              #
              #   @param pricing_group_values [Hash{Symbol=>String}]
              #
              #   @param product_id [String] If provided, the specifier will only apply to the product with the specified ID.
              #
              #   @param product_tags [Array<String>] If provided, the specifier will only apply to products with all the specified ta
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit#subscription_config
            class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute allocation
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::Allocation]
              required :allocation,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::Allocation }

              # @!attribute apply_seat_increase_config
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig]
              required :apply_seat_increase_config,
                       -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig }

              # @!attribute subscription_id
              #
              #   @return [String]
              required :subscription_id, String

              # @!method initialize(allocation:, apply_seat_increase_config:, subscription_id:)
              #   Attach a subscription to the recurring commit/credit.
              #
              #   @param allocation [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::Allocation]
              #   @param apply_seat_increase_config [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig]
              #   @param subscription_id [String]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig#allocation
              module Allocation
                extend MetronomeSDK::Internal::Type::Enum

                INDIVIDUAL = :INDIVIDUAL
                POOLED = :POOLED

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::RecurringCredit::SubscriptionConfig#apply_seat_increase_config
              class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute is_prorated
                #   Indicates whether a mid-period seat increase should be prorated.
                #
                #   @return [Boolean]
                required :is_prorated, MetronomeSDK::Internal::Type::Boolean

                # @!method initialize(is_prorated:)
                #   @param is_prorated [Boolean] Indicates whether a mid-period seat increase should be prorated.
              end
            end
          end

          class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute reseller_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType]
            required :reseller_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType }

            # @!attribute segments
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment>]
            required :segments,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment] }

            # @!method initialize(reseller_type:, segments:)
            #   @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::ResellerType]
            #   @param segments [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment>]

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty#reseller_type
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
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType]
              required :reseller_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType }

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
              #   @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment::ResellerType]
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

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::ResellerRoyalty::Segment#reseller_type
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
          # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data#scheduled_charges_on_usage_invoices
          module ScheduledChargesOnUsageInvoices
            extend MetronomeSDK::Internal::Type::Enum

            ALL = :ALL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data#spend_threshold_configuration
          class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit]
            required :commit,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #   threshold_amount. Toggling to true will result an immediate evaluation,
            #   regardless of prior state.
            #
            #   @return [Boolean]
            required :is_enabled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig]
            required :payment_gate_config,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig }

            # @!attribute threshold_amount
            #   Specify the threshold amount for the contract. Each time the contract's usage
            #   hits this amount, a threshold charge will be initiated.
            #
            #   @return [Float]
            required :threshold_amount, Float

            # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration}
            #   for more details.
            #
            #   @param commit [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit]
            #
            #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
            #
            #   @param payment_gate_config [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig]
            #
            #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration#commit
            class Commit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute product_id
              #   The commit product that will be used to generate the line item for commit
              #   payment.
              #
              #   @return [String]
              required :product_id, String

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute name
              #   Specify the name of the line item for the threshold charge. If left blank, it
              #   will default to the commit product name.
              #
              #   @return [String, nil]
              optional :name, String

              # @!method initialize(product_id:, description: nil, name: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::Commit}
              #   for more details.
              #
              #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
              #
              #   @param description [String]
              #
              #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration#payment_gate_config
            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_gate_type
              #   Gate access to the commit balance based on successful collection of payment.
              #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              #   facilitate payment using your own payment integration. Select NONE if you do not
              #   wish to payment gate the commit balance.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
              required :payment_gate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

              # @!attribute precalculated_tax_config
              #   Only applicable if using PRECALCULATED as your tax type.
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig, nil]
              optional :precalculated_tax_config,
                       -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig }

              # @!attribute stripe_config
              #   Only applicable if using STRIPE as your payment gateway type.
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
              optional :stripe_config,
                       -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

              # @!attribute tax_type
              #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
              #   will default to NONE.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
              optional :tax_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

              # @!method initialize(payment_gate_type:, precalculated_tax_config: nil, stripe_config: nil, tax_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig}
              #   for more details.
              #
              #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
              #
              #   @param precalculated_tax_config [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig] Only applicable if using PRECALCULATED as your tax type.
              #
              #   @param stripe_config [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using STRIPE as your payment gateway type.
              #
              #   @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              #
              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
              module PaymentGateType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE
                EXTERNAL = :EXTERNAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#precalculated_tax_config
              class PrecalculatedTaxConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute tax_amount
                #   Amount of tax to be applied. This should be in the same currency and
                #   denomination as the commit's invoice schedule
                #
                #   @return [Float]
                required :tax_amount, Float

                # @!attribute tax_name
                #   Name of the tax to be applied. This may be used in an invoice line item
                #   description.
                #
                #   @return [String, nil]
                optional :tax_name, String

                # @!method initialize(tax_amount:, tax_name: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PrecalculatedTaxConfig}
                #   for more details.
                #
                #   Only applicable if using PRECALCULATED as your tax type.
                #
                #   @param tax_amount [Float] Amount of tax to be applied. This should be in the same currency and denominatio
                #
                #   @param tax_name [String] Name of the tax to be applied. This may be used in an invoice line item descript
              end

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#stripe_config
              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_type
                #   If left blank, will default to INVOICE
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                required :payment_type,
                         enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                # @!attribute invoice_metadata
                #   Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
                #   your payment type.
                #
                #   @return [Hash{Symbol=>String}, nil]
                optional :invoice_metadata, MetronomeSDK::Internal::Type::HashOf[String]

                # @!method initialize(payment_type:, invoice_metadata: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig}
                #   for more details.
                #
                #   Only applicable if using STRIPE as your payment gateway type.
                #
                #   @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE
                #
                #   @param invoice_metadata [Hash{Symbol=>String}] Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as

                # If left blank, will default to INVOICE
                #
                # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
                module PaymentType
                  extend MetronomeSDK::Internal::Type::Enum

                  INVOICE = :INVOICE
                  PAYMENT_INTENT = :PAYMENT_INTENT

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              #
              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#tax_type
              module TaxType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE
                ANROK = :ANROK
                PRECALCULATED = :PRECALCULATED

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Subscription < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute collection_schedule
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::CollectionSchedule]
            required :collection_schedule,
                     enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::CollectionSchedule }

            # @!attribute proration
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration]
            required :proration,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration }

            # @!attribute quantity_schedule
            #   List of quantity schedule items for the subscription. Only includes the current
            #   quantity and future quantity changes.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::QuantitySchedule>]
            required :quantity_schedule,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::QuantitySchedule] }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute subscription_rate
            #
            #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate]
            required :subscription_rate,
                     -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate }

            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute fiat_credit_type_id
            #
            #   @return [String, nil]
            optional :fiat_credit_type_id, String

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(collection_schedule:, proration:, quantity_schedule:, starting_at:, subscription_rate:, id: nil, custom_fields: nil, description: nil, ending_before: nil, fiat_credit_type_id: nil, name: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription} for
            #   more details.
            #
            #   @param collection_schedule [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::CollectionSchedule]
            #
            #   @param proration [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration]
            #
            #   @param quantity_schedule [Array<MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::QuantitySchedule>] List of quantity schedule items for the subscription. Only includes the current
            #
            #   @param starting_at [Time]
            #
            #   @param subscription_rate [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate]
            #
            #   @param id [String]
            #
            #   @param custom_fields [Hash{Symbol=>String}]
            #
            #   @param description [String]
            #
            #   @param ending_before [Time]
            #
            #   @param fiat_credit_type_id [String]
            #
            #   @param name [String]

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription#collection_schedule
            module CollectionSchedule
              extend MetronomeSDK::Internal::Type::Enum

              ADVANCE = :ADVANCE
              ARREARS = :ARREARS

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription#proration
            class Proration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute invoice_behavior
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior]
              required :invoice_behavior,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior }

              # @!attribute is_prorated
              #
              #   @return [Boolean]
              required :is_prorated, MetronomeSDK::Internal::Type::Boolean

              # @!method initialize(invoice_behavior:, is_prorated:)
              #   @param invoice_behavior [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration::InvoiceBehavior]
              #   @param is_prorated [Boolean]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::Proration#invoice_behavior
              module InvoiceBehavior
                extend MetronomeSDK::Internal::Type::Enum

                BILL_IMMEDIATELY = :BILL_IMMEDIATELY
                BILL_ON_NEXT_COLLECTION_DATE = :BILL_ON_NEXT_COLLECTION_DATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class QuantitySchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!method initialize(quantity:, starting_at:, ending_before: nil)
              #   @param quantity [Float]
              #   @param starting_at [Time]
              #   @param ending_before [Time]
            end

            # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription#subscription_rate
            class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute billing_frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency]
              required :billing_frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency }

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::Product]
              required :product,
                       -> { MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::Product }

              # @!method initialize(billing_frequency:, product:)
              #   @param billing_frequency [Symbol, MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::BillingFrequency]
              #   @param product [MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate::Product]

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate#billing_frequency
              module BillingFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractRetrieveResponse::Data::Subscription::SubscriptionRate#product
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
            end
          end
        end
      end
    end
  end
end
