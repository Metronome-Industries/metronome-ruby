# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class ContractListResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data>]
        required :data, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data] }

        # @!parse
        #   # @param data [Array<MetronomeSDK::Models::V2::ContractListResponse::Data>]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Data < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Commit>]
          required :commits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Commit] }

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
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override>]
          required :overrides,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Override] }

          # @!attribute scheduled_charges
          #
          #   @return [Array<MetronomeSDK::Models::ScheduledCharge>]
          required :scheduled_charges, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ScheduledCharge] }

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute transitions
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Transition>]
          required :transitions,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Transition] }

          # @!attribute usage_filter
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::UsageFilter>]
          required :usage_filter,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::UsageFilter] }

          # @!attribute usage_statement_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule]
          required :usage_statement_schedule,
                   -> { MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule }

          # @!attribute [r] archived_at
          #
          #   @return [Time, nil]
          optional :archived_at, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :archived_at

          # @!attribute [r] credit_balance_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::CreditBalanceThresholdConfiguration, nil]
          optional :credit_balance_threshold_configuration,
                   -> { MetronomeSDK::Models::V2::ContractListResponse::Data::CreditBalanceThresholdConfiguration }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::CreditBalanceThresholdConfiguration]
          #   attr_writer :credit_balance_threshold_configuration

          # @!attribute [r] credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Credit>, nil]
          optional :credits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Credit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Credit>]
          #   attr_writer :credits

          # @!attribute [r] custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :custom_fields

          # @!attribute [r] customer_billing_provider_configuration
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration, nil]
          optional :customer_billing_provider_configuration,
                   -> { MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration]
          #   attr_writer :customer_billing_provider_configuration

          # @!attribute [r] discounts
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<MetronomeSDK::Models::Discount>, nil]
          optional :discounts, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Discount] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::Discount>]
          #   attr_writer :discounts

          # @!attribute [r] ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] multiplier_override_prioritization
          #   Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          #     prices automatically. EXPLICIT prioritization requires specifying priorities for
          #     each multiplier; the one with the lowest priority value will be prioritized
          #     first.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::MultiplierOverridePrioritization, nil]
          optional :multiplier_override_prioritization,
                   enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::MultiplierOverridePrioritization }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::MultiplierOverridePrioritization]
          #   attr_writer :multiplier_override_prioritization

          # @!attribute [r] name
          #
          #   @return [String, nil]
          optional :name, String

          # @!parse
          #   # @return [String]
          #   attr_writer :name

          # @!attribute [r] net_payment_terms_days
          #
          #   @return [Float, nil]
          optional :net_payment_terms_days, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :net_payment_terms_days

          # @!attribute [r] netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_sales_order_id

          # @!attribute [r] professional_services
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<MetronomeSDK::Models::ProService>, nil]
          optional :professional_services, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ProService] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::ProService>]
          #   attr_writer :professional_services

          # @!attribute [r] rate_card_id
          #
          #   @return [String, nil]
          optional :rate_card_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :rate_card_id

          # @!attribute [r] recurring_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit>, nil]
          optional :recurring_commits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit>]
          #   attr_writer :recurring_commits

          # @!attribute [r] recurring_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit>, nil]
          optional :recurring_credits,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit>]
          #   attr_writer :recurring_credits

          # @!attribute [r] reseller_royalties
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty>, nil]
          optional :reseller_royalties,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty>]
          #   attr_writer :reseller_royalties

          # @!attribute [r] salesforce_opportunity_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :salesforce_opportunity_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :salesforce_opportunity_id

          # @!attribute [r] scheduled_charges_on_usage_invoices
          #   Determines which scheduled and commit charges to consolidate onto the Contract's
          #     usage invoice. The charge's `timestamp` must match the usage invoice's
          #     `ending_before` date for consolidation to occur. This field cannot be modified
          #     after a Contract has been created. If this field is omitted, charges will appear
          #     on a separate invoice from usage charges.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ScheduledChargesOnUsageInvoices, nil]
          optional :scheduled_charges_on_usage_invoices,
                   enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::ScheduledChargesOnUsageInvoices }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ScheduledChargesOnUsageInvoices]
          #   attr_writer :scheduled_charges_on_usage_invoices

          # @!attribute [r] spend_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration, nil]
          optional :spend_threshold_configuration,
                   -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration]
          #   attr_writer :spend_threshold_configuration

          # @!attribute [r] total_contract_value
          #
          #   @return [Float, nil]
          optional :total_contract_value, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :total_contract_value

          # @!attribute [r] uniqueness_key
          #   Prevents the creation of duplicates. If a request to create a record is made
          #     with a previously used uniqueness key, a new record will not be created and the
          #     request will fail with a 409 error.
          #
          #   @return [String, nil]
          optional :uniqueness_key, String

          # @!parse
          #   # @return [String]
          #   attr_writer :uniqueness_key

          # @!parse
          #   # @param id [String]
          #   # @param commits [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Commit>]
          #   # @param created_at [Time]
          #   # @param created_by [String]
          #   # @param customer_id [String]
          #   # @param overrides [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override>]
          #   # @param scheduled_charges [Array<MetronomeSDK::Models::ScheduledCharge>]
          #   # @param starting_at [Time]
          #   # @param transitions [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Transition>]
          #   # @param usage_filter [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::UsageFilter>]
          #   # @param usage_statement_schedule [MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule]
          #   # @param archived_at [Time]
          #   # @param credit_balance_threshold_configuration [MetronomeSDK::Models::V2::ContractListResponse::Data::CreditBalanceThresholdConfiguration]
          #   # @param credits [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Credit>]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param customer_billing_provider_configuration [MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration]
          #   # @param discounts [Array<MetronomeSDK::Models::Discount>]
          #   # @param ending_before [Time]
          #   # @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::MultiplierOverridePrioritization]
          #   # @param name [String]
          #   # @param net_payment_terms_days [Float]
          #   # @param netsuite_sales_order_id [String]
          #   # @param professional_services [Array<MetronomeSDK::Models::ProService>]
          #   # @param rate_card_id [String]
          #   # @param recurring_commits [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit>]
          #   # @param recurring_credits [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit>]
          #   # @param reseller_royalties [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty>]
          #   # @param salesforce_opportunity_id [String]
          #   # @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ScheduledChargesOnUsageInvoices]
          #   # @param spend_threshold_configuration [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration]
          #   # @param total_contract_value [Float]
          #   # @param uniqueness_key [String]
          #   #
          #   def initialize(
          #     id:,
          #     commits:,
          #     created_at:,
          #     created_by:,
          #     customer_id:,
          #     overrides:,
          #     scheduled_charges:,
          #     starting_at:,
          #     transitions:,
          #     usage_filter:,
          #     usage_statement_schedule:,
          #     archived_at: nil,
          #     credit_balance_threshold_configuration: nil,
          #     credits: nil,
          #     custom_fields: nil,
          #     customer_billing_provider_configuration: nil,
          #     discounts: nil,
          #     ending_before: nil,
          #     multiplier_override_prioritization: nil,
          #     name: nil,
          #     net_payment_terms_days: nil,
          #     netsuite_sales_order_id: nil,
          #     professional_services: nil,
          #     rate_card_id: nil,
          #     recurring_commits: nil,
          #     recurring_credits: nil,
          #     reseller_royalties: nil,
          #     salesforce_opportunity_id: nil,
          #     scheduled_charges_on_usage_invoices: nil,
          #     spend_threshold_configuration: nil,
          #     total_contract_value: nil,
          #     uniqueness_key: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class Commit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Product]
            required :product, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Type]
            required :type, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Type }

            # @!attribute [r] access_schedule
            #   The schedule that the customer will gain access to the credits purposed with
            #     this commit.
            #
            #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
            optional :access_schedule, -> { MetronomeSDK::Models::ScheduleDuration }

            # @!parse
            #   # @return [MetronomeSDK::Models::ScheduleDuration]
            #   attr_writer :access_schedule

            # @!attribute [r] applicable_contract_ids
            #
            #   @return [Array<String>, nil]
            optional :applicable_contract_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_contract_ids

            # @!attribute [r] applicable_product_ids
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_ids

            # @!attribute [r] applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

            # @!attribute [r] archived_at
            #
            #   @return [Time, nil]
            optional :archived_at, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :archived_at

            # @!attribute [r] balance
            #   The current balance of the credit or commit. This balance reflects the amount of
            #     credit or commit that the customer has access to use at this moment - thus,
            #     expired and upcoming credit or commit segments contribute 0 to the balance. The
            #     balance will match the sum of all ledger entries with the exception of the case
            #     where the sum of negative manual ledger entries exceeds the positive amount
            #     remaining on the credit or commit - in that case, the balance will be 0. All
            #     manual ledger entries associated with active credit or commit segments are
            #     included in the balance, including future-dated manual ledger entries.
            #
            #   @return [Float, nil]
            optional :balance, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :balance

            # @!attribute [r] contract
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Contract }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Contract]
            #   attr_writer :contract

            # @!attribute [r] custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :custom_fields

            # @!attribute [r] description
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] invoice_contract
            #   The contract that this commit will be billed on.
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::InvoiceContract, nil]
            optional :invoice_contract,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::InvoiceContract }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::InvoiceContract]
            #   attr_writer :invoice_contract

            # @!attribute [r] invoice_schedule
            #   The schedule that the customer will be invoiced for this commit.
            #
            #   @return [MetronomeSDK::Models::SchedulePointInTime, nil]
            optional :invoice_schedule, -> { MetronomeSDK::Models::SchedulePointInTime }

            # @!parse
            #   # @return [MetronomeSDK::Models::SchedulePointInTime]
            #   attr_writer :invoice_schedule

            # @!attribute [r] ledger
            #   A list of ordered events that impact the balance of a commit. For example, an
            #     invoice deduction or a rollover.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>, nil]
            optional :ledger,
                     -> { MetronomeSDK::ArrayOf[union: MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>]
            #   attr_writer :ledger

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] netsuite_sales_order_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_sales_order_id

            # @!attribute [r] priority
            #   If multiple credits or commits are applicable, the one with the lower priority
            #     will apply first.
            #
            #   @return [Float, nil]
            optional :priority, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :priority

            # @!attribute [r] rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RateType, nil]
            optional :rate_type, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RateType }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RateType]
            #   attr_writer :rate_type

            # @!attribute [r] rolled_over_from
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RolledOverFrom, nil]
            optional :rolled_over_from,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RolledOverFrom }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RolledOverFrom]
            #   attr_writer :rolled_over_from

            # @!attribute [r] rollover_fraction
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :rollover_fraction

            # @!attribute [r] salesforce_opportunity_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :salesforce_opportunity_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :salesforce_opportunity_id

            # @!parse
            #   # @param id [String]
            #   # @param product [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Product]
            #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Type]
            #   # @param access_schedule [MetronomeSDK::Models::ScheduleDuration]
            #   # @param applicable_contract_ids [Array<String>]
            #   # @param applicable_product_ids [Array<String>]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param archived_at [Time]
            #   # @param balance [Float]
            #   # @param contract [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Contract]
            #   # @param custom_fields [Hash{Symbol=>String}]
            #   # @param description [String]
            #   # @param invoice_contract [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::InvoiceContract]
            #   # @param invoice_schedule [MetronomeSDK::Models::SchedulePointInTime]
            #   # @param ledger [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String]
            #   # @param priority [Float]
            #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RateType]
            #   # @param rolled_over_from [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RolledOverFrom]
            #   # @param rollover_fraction [Float]
            #   # @param salesforce_opportunity_id [String]
            #   #
            #   def initialize(
            #     id:,
            #     product:,
            #     type:,
            #     access_schedule: nil,
            #     applicable_contract_ids: nil,
            #     applicable_product_ids: nil,
            #     applicable_product_tags: nil,
            #     archived_at: nil,
            #     balance: nil,
            #     contract: nil,
            #     custom_fields: nil,
            #     description: nil,
            #     invoice_contract: nil,
            #     invoice_schedule: nil,
            #     ledger: nil,
            #     name: nil,
            #     netsuite_sales_order_id: nil,
            #     priority: nil,
            #     rate_type: nil,
            #     rolled_over_from: nil,
            #     rollover_fraction: nil,
            #     salesforce_opportunity_id: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case type
            # in :PREPAID
            #   # ...
            # in :POSTPAID
            #   # ...
            # end
            # ```
            class Type < MetronomeSDK::Enum
              PREPAID = :PREPAID
              POSTPAID = :POSTPAID

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class Contract < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class InvoiceContract < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # The contract that this commit will be billed on.
              #   #
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case ledger
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
            #   # ...
            # end
            # ```
            class Ledger < MetronomeSDK::Union
              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry }

              class PrepaidCommitSegmentStartLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
                #   #
                #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :PREPAID_COMMIT_SEGMENT_START
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param invoice_id [String]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
                #   #
                #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PrepaidCommitRolloverLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param new_contract_id [String]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
                #   #
                #   def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :PREPAID_COMMIT_ROLLOVER
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PrepaidCommitExpirationLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
                #   #
                #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :PREPAID_COMMIT_EXPIRATION
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PrepaidCommitCanceledLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param invoice_id [String]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
                #   #
                #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :PREPAID_COMMIT_CANCELED
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PrepaidCommitCreditedLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param invoice_id [String]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
                #   #
                #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :PREPAID_COMMIT_CREDITED
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PostpaidCommitInitialBalanceLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
                #   #
                #   def initialize(amount:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :POSTPAID_COMMIT_INITIAL_BALANCE
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param invoice_id [String]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
                #   #
                #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PostpaidCommitRolloverLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param new_contract_id [String]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
                #   #
                #   def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :POSTPAID_COMMIT_ROLLOVER
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PostpaidCommitTrueupLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param invoice_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
                #   #
                #   def initialize(amount:, invoice_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :POSTPAID_COMMIT_TRUEUP
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PrepaidCommitManualLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param reason [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
                #   #
                #   def initialize(amount:, reason:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :PREPAID_COMMIT_MANUAL
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PostpaidCommitManualLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param reason [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
                #   #
                #   def initialize(amount:, reason:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :POSTPAID_COMMIT_MANUAL
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class PostpaidCommitExpirationLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
                #   #
                #   def initialize(amount:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :POSTPAID_COMMIT_EXPIRATION
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case rate_type
            # in :COMMIT_RATE
            #   # ...
            # in :LIST_RATE
            #   # ...
            # end
            # ```
            class RateType < MetronomeSDK::Enum
              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class RolledOverFrom < MetronomeSDK::BaseModel
              # @!attribute commit_id
              #
              #   @return [String]
              required :commit_id, String

              # @!attribute contract_id
              #
              #   @return [String]
              required :contract_id, String

              # @!parse
              #   # @param commit_id [String]
              #   # @param contract_id [String]
              #   #
              #   def initialize(commit_id:, contract_id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end

          class Override < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [r] applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

            # @!attribute [r] ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!attribute [r] entitled
            #
            #   @return [Boolean, nil]
            optional :entitled, MetronomeSDK::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :entitled

            # @!attribute [r] is_commit_specific
            #
            #   @return [Boolean, nil]
            optional :is_commit_specific, MetronomeSDK::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_commit_specific

            # @!attribute [r] multiplier
            #
            #   @return [Float, nil]
            optional :multiplier, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :multiplier

            # @!attribute [r] override_specifiers
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier>, nil]
            optional :override_specifiers,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier>]
            #   attr_writer :override_specifiers

            # @!attribute [r] override_tiers
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideTier>, nil]
            optional :override_tiers,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideTier] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideTier>]
            #   attr_writer :override_tiers

            # @!attribute [r] overwrite_rate
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate, nil]
            optional :overwrite_rate,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate]
            #   attr_writer :overwrite_rate

            # @!attribute [r] priority
            #
            #   @return [Float, nil]
            optional :priority, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :priority

            # @!attribute [r] product
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Product, nil]
            optional :product, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Product }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Product]
            #   attr_writer :product

            # @!attribute [r] target
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Target, nil]
            optional :target, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Target }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Target]
            #   attr_writer :target

            # @!attribute [r] type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Type, nil]
            optional :type, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Type }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Type]
            #   attr_writer :type

            # @!parse
            #   # @param id [String]
            #   # @param starting_at [Time]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param ending_before [Time]
            #   # @param entitled [Boolean]
            #   # @param is_commit_specific [Boolean]
            #   # @param multiplier [Float]
            #   # @param override_specifiers [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier>]
            #   # @param override_tiers [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideTier>]
            #   # @param overwrite_rate [MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate]
            #   # @param priority [Float]
            #   # @param product [MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Product]
            #   # @param target [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Target]
            #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Type]
            #   #
            #   def initialize(
            #     id:,
            #     starting_at:,
            #     applicable_product_tags: nil,
            #     ending_before: nil,
            #     entitled: nil,
            #     is_commit_specific: nil,
            #     multiplier: nil,
            #     override_specifiers: nil,
            #     override_tiers: nil,
            #     overwrite_rate: nil,
            #     priority: nil,
            #     product: nil,
            #     target: nil,
            #     type: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class OverrideSpecifier < MetronomeSDK::BaseModel
              # @!attribute [r] billing_frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier::BillingFrequency, nil]
              optional :billing_frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier::BillingFrequency }

              # @!parse
              #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier::BillingFrequency]
              #   attr_writer :billing_frequency

              # @!attribute [r] commit_ids
              #
              #   @return [Array<String>, nil]
              optional :commit_ids, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :commit_ids

              # @!attribute [r] presentation_group_values
              #
              #   @return [Hash{Symbol=>String, nil}, nil]
              optional :presentation_group_values, MetronomeSDK::HashOf[String, nil?: true]

              # @!parse
              #   # @return [Hash{Symbol=>String, nil}]
              #   attr_writer :presentation_group_values

              # @!attribute [r] pricing_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :pricing_group_values, MetronomeSDK::HashOf[String]

              # @!parse
              #   # @return [Hash{Symbol=>String}]
              #   attr_writer :pricing_group_values

              # @!attribute [r] product_id
              #
              #   @return [String, nil]
              optional :product_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :product_id

              # @!attribute [r] product_tags
              #
              #   @return [Array<String>, nil]
              optional :product_tags, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :product_tags

              # @!attribute [r] recurring_commit_ids
              #
              #   @return [Array<String>, nil]
              optional :recurring_commit_ids, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :recurring_commit_ids

              # @!attribute [r] recurring_credit_ids
              #
              #   @return [Array<String>, nil]
              optional :recurring_credit_ids, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :recurring_credit_ids

              # @!parse
              #   # @param billing_frequency [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier::BillingFrequency]
              #   # @param commit_ids [Array<String>]
              #   # @param presentation_group_values [Hash{Symbol=>String, nil}]
              #   # @param pricing_group_values [Hash{Symbol=>String}]
              #   # @param product_id [String]
              #   # @param product_tags [Array<String>]
              #   # @param recurring_commit_ids [Array<String>]
              #   # @param recurring_credit_ids [Array<String>]
              #   #
              #   def initialize(
              #     billing_frequency: nil,
              #     commit_ids: nil,
              #     presentation_group_values: nil,
              #     pricing_group_values: nil,
              #     product_id: nil,
              #     product_tags: nil,
              #     recurring_commit_ids: nil,
              #     recurring_credit_ids: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case billing_frequency
              # in :MONTHLY
              #   # ...
              # in :QUARTERLY
              #   # ...
              # in :ANNUAL
              #   # ...
              # end
              # ```
              class BillingFrequency < MetronomeSDK::Enum
                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class OverrideTier < MetronomeSDK::BaseModel
              # @!attribute multiplier
              #
              #   @return [Float]
              required :multiplier, Float

              # @!attribute [r] size
              #
              #   @return [Float, nil]
              optional :size, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :size

              # @!parse
              #   # @param multiplier [Float]
              #   # @param size [Float]
              #   #
              #   def initialize(multiplier:, size: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class OverwriteRate < MetronomeSDK::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate::RateType }

              # @!attribute [r] credit_type
              #
              #   @return [MetronomeSDK::Models::CreditTypeData, nil]
              optional :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

              # @!parse
              #   # @return [MetronomeSDK::Models::CreditTypeData]
              #   attr_writer :credit_type

              # @!attribute [r] custom_rate
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #     processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :custom_rate, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

              # @!parse
              #   # @return [Hash{Symbol=>Object}]
              #   attr_writer :custom_rate

              # @!attribute [r] is_prorated
              #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #     set to true.
              #
              #   @return [Boolean, nil]
              optional :is_prorated, MetronomeSDK::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :is_prorated

              # @!attribute [r] price
              #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :price

              # @!attribute [r] quantity
              #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Models::Tier>, nil]
              optional :tiers, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Tier] }

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::Tier>]
              #   attr_writer :tiers

              # @!parse
              #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate::RateType]
              #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
              #   # @param custom_rate [Hash{Symbol=>Object}]
              #   # @param is_prorated [Boolean]
              #   # @param price [Float]
              #   # @param quantity [Float]
              #   # @param tiers [Array<MetronomeSDK::Models::Tier>]
              #   #
              #   def initialize(
              #     rate_type:,
              #     credit_type: nil,
              #     custom_rate: nil,
              #     is_prorated: nil,
              #     price: nil,
              #     quantity: nil,
              #     tiers: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case rate_type
              # in :FLAT
              #   # ...
              # in :PERCENTAGE
              #   # ...
              # in :SUBSCRIPTION
              #   # ...
              # in :TIERED
              #   # ...
              # in :CUSTOM
              #   # ...
              # end
              # ```
              class RateType < MetronomeSDK::Enum
                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                CUSTOM = :CUSTOM

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case target
            # in :COMMIT_RATE
            #   # ...
            # in :LIST_RATE
            #   # ...
            # end
            # ```
            class Target < MetronomeSDK::Enum
              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case type
            # in :OVERWRITE
            #   # ...
            # in :MULTIPLIER
            #   # ...
            # in :TIERED
            #   # ...
            # end
            # ```
            class Type < MetronomeSDK::Enum
              OVERWRITE = :OVERWRITE
              MULTIPLIER = :MULTIPLIER
              TIERED = :TIERED

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class Transition < MetronomeSDK::BaseModel
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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Transition::Type]
            required :type, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Transition::Type }

            # @!parse
            #   # @param from_contract_id [String]
            #   # @param to_contract_id [String]
            #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Transition::Type]
            #   #
            #   def initialize(from_contract_id:, to_contract_id:, type:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case type
            # in :SUPERSEDE
            #   # ...
            # in :RENEWAL
            #   # ...
            # end
            # ```
            class Type < MetronomeSDK::Enum
              SUPERSEDE = :SUPERSEDE
              RENEWAL = :RENEWAL

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class UsageFilter < MetronomeSDK::BaseModel
            # @!attribute group_key
            #
            #   @return [String]
            required :group_key, String

            # @!attribute group_values
            #
            #   @return [Array<String>]
            required :group_values, MetronomeSDK::ArrayOf[String]

            # @!attribute starting_at
            #   This will match contract starting_at value if usage filter is active from the
            #     beginning of the contract.
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [r] ending_before
            #   This will match contract ending_before value if usage filter is active until the
            #     end of the contract. It will be undefined if the contract is open-ended.
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!parse
            #   # @param group_key [String]
            #   # @param group_values [Array<String>]
            #   # @param starting_at [Time]
            #   # @param ending_before [Time]
            #   #
            #   def initialize(group_key:, group_values:, starting_at:, ending_before: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class UsageStatementSchedule < MetronomeSDK::BaseModel
            # @!attribute billing_anchor_date
            #   Contract usage statements follow a selected cadence based on this date.
            #
            #   @return [Time]
            required :billing_anchor_date, Time

            # @!attribute frequency
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule::Frequency]
            required :frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule::Frequency }

            # @!parse
            #   # @param billing_anchor_date [Time]
            #   # @param frequency [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule::Frequency]
            #   #
            #   def initialize(billing_anchor_date:, frequency:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case frequency
            # in :MONTHLY
            #   # ...
            # in :QUARTERLY
            #   # ...
            # in :ANNUAL
            #   # ...
            # in :WEEKLY
            #   # ...
            # end
            # ```
            class Frequency < MetronomeSDK::Enum
              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class CreditBalanceThresholdConfiguration < MetronomeSDK::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::CreditBalanceThresholdConfiguration::Commit]
            required :commit,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::CreditBalanceThresholdConfiguration::Commit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #     threshold_amount. Toggling to true will result an immediate evaluation,
            #     regardless of prior state.
            #
            #   @return [Boolean]
            required :is_enabled, MetronomeSDK::BooleanModel

            # @!attribute recharge_to_amount
            #   Specify the amount the balance should be recharged to.
            #
            #   @return [Float]
            required :recharge_to_amount, Float

            # @!attribute threshold_amount
            #   Specify the threshold amount for the contract. Each time the contract's balance
            #     lowers to this amount, a threshold charge will be initiated.
            #
            #   @return [Float]
            required :threshold_amount, Float

            # @!parse
            #   # @param commit [MetronomeSDK::Models::V2::ContractListResponse::Data::CreditBalanceThresholdConfiguration::Commit]
            #   # @param is_enabled [Boolean]
            #   # @param recharge_to_amount [Float]
            #   # @param threshold_amount [Float]
            #   #
            #   def initialize(commit:, is_enabled:, recharge_to_amount:, threshold_amount:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Commit < MetronomeSDK::BaseModel
              # @!attribute product_id
              #   The commit product that will be used to generate the line item for commit
              #     payment.
              #
              #   @return [String]
              required :product_id, String

              # @!attribute [r] applicable_product_ids
              #   Which products the threshold commit applies to. If both applicable_product_ids
              #     and applicable_product_tags are not provided, the commit applies to all
              #     products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :applicable_product_ids

              # @!attribute [r] applicable_product_tags
              #   Which tags the threshold commit applies to. If both applicable_product_ids and
              #     applicable_product_tags are not provided, the commit applies to all products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :applicable_product_tags

              # @!attribute [r] description
              #
              #   @return [String, nil]
              optional :description, String

              # @!parse
              #   # @return [String]
              #   attr_writer :description

              # @!attribute [r] name
              #   Specify the name of the line item for the threshold charge. If left blank, it
              #     will default to the commit product name.
              #
              #   @return [String, nil]
              optional :name, String

              # @!parse
              #   # @return [String]
              #   attr_writer :name

              # @!parse
              #   # @param product_id [String]
              #   # @param applicable_product_ids [Array<String>]
              #   # @param applicable_product_tags [Array<String>]
              #   # @param description [String]
              #   # @param name [String]
              #   #
              #   def initialize(product_id:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end

          class Credit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Product]
            required :product, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Type]
            required :type, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Type }

            # @!attribute [r] access_schedule
            #   The schedule that the customer will gain access to the credits.
            #
            #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
            optional :access_schedule, -> { MetronomeSDK::Models::ScheduleDuration }

            # @!parse
            #   # @return [MetronomeSDK::Models::ScheduleDuration]
            #   attr_writer :access_schedule

            # @!attribute [r] applicable_contract_ids
            #
            #   @return [Array<String>, nil]
            optional :applicable_contract_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_contract_ids

            # @!attribute [r] applicable_product_ids
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_ids

            # @!attribute [r] applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

            # @!attribute [r] balance
            #   The current balance of the credit or commit. This balance reflects the amount of
            #     credit or commit that the customer has access to use at this moment - thus,
            #     expired and upcoming credit or commit segments contribute 0 to the balance. The
            #     balance will match the sum of all ledger entries with the exception of the case
            #     where the sum of negative manual ledger entries exceeds the positive amount
            #     remaining on the credit or commit - in that case, the balance will be 0. All
            #     manual ledger entries associated with active credit or commit segments are
            #     included in the balance, including future-dated manual ledger entries.
            #
            #   @return [Float, nil]
            optional :balance, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :balance

            # @!attribute [r] contract
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Contract }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Contract]
            #   attr_writer :contract

            # @!attribute [r] custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :custom_fields

            # @!attribute [r] description
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] ledger
            #   A list of ordered events that impact the balance of a credit. For example, an
            #     invoice deduction or an expiration.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry>, nil]
            optional :ledger,
                     -> { MetronomeSDK::ArrayOf[union: MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry>]
            #   attr_writer :ledger

            # @!attribute [r] name
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] netsuite_sales_order_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_sales_order_id

            # @!attribute [r] priority
            #   If multiple credits or commits are applicable, the one with the lower priority
            #     will apply first.
            #
            #   @return [Float, nil]
            optional :priority, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :priority

            # @!attribute [r] salesforce_opportunity_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :salesforce_opportunity_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :salesforce_opportunity_id

            # @!parse
            #   # @param id [String]
            #   # @param product [MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Product]
            #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Type]
            #   # @param access_schedule [MetronomeSDK::Models::ScheduleDuration]
            #   # @param applicable_contract_ids [Array<String>]
            #   # @param applicable_product_ids [Array<String>]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param balance [Float]
            #   # @param contract [MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Contract]
            #   # @param custom_fields [Hash{Symbol=>String}]
            #   # @param description [String]
            #   # @param ledger [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry>]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String]
            #   # @param priority [Float]
            #   # @param salesforce_opportunity_id [String]
            #   #
            #   def initialize(
            #     id:,
            #     product:,
            #     type:,
            #     access_schedule: nil,
            #     applicable_contract_ids: nil,
            #     applicable_product_ids: nil,
            #     applicable_product_tags: nil,
            #     balance: nil,
            #     contract: nil,
            #     custom_fields: nil,
            #     description: nil,
            #     ledger: nil,
            #     name: nil,
            #     netsuite_sales_order_id: nil,
            #     priority: nil,
            #     salesforce_opportunity_id: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case type
            # in :CREDIT
            #   # ...
            # end
            # ```
            class Type < MetronomeSDK::Enum
              CREDIT = :CREDIT

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class Contract < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case ledger
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry
            #   # ...
            # in MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry
            #   # ...
            # end
            # ```
            class Ledger < MetronomeSDK::Union
              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry }

              class CreditSegmentStartLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]
                #   #
                #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :CREDIT_SEGMENT_START
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class CreditAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param invoice_id [String]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]
                #   #
                #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :CREDIT_AUTOMATED_INVOICE_DEDUCTION
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class CreditExpirationLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type]
                #   #
                #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :CREDIT_EXPIRATION
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  CREDIT_EXPIRATION = :CREDIT_EXPIRATION

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class CreditCanceledLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param invoice_id [String]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type]
                #   #
                #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :CREDIT_CANCELED
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  CREDIT_CANCELED = :CREDIT_CANCELED

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class CreditCreditedLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param invoice_id [String]
                #   # @param segment_id [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type]
                #   #
                #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :CREDIT_CREDITED
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  CREDIT_CREDITED = :CREDIT_CREDITED

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              class CreditManualLedgerEntry < MetronomeSDK::BaseModel
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type }

                # @!parse
                #   # @param amount [Float]
                #   # @param reason [String]
                #   # @param timestamp [Time]
                #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type]
                #   #
                #   def initialize(amount:, reason:, timestamp:, type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # @example
                # ```ruby
                # case type
                # in :CREDIT_MANUAL
                #   # ...
                # end
                # ```
                class Type < MetronomeSDK::Enum
                  CREDIT_MANUAL = :CREDIT_MANUAL

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end
            end
          end

          class CustomerBillingProviderConfiguration < MetronomeSDK::BaseModel
            # @!attribute billing_provider
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
            required :billing_provider,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider }

            # @!attribute delivery_method
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
            required :delivery_method,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod }

            # @!parse
            #   # This field's availability is dependent on your client's configuration.
            #   #
            #   # @param billing_provider [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
            #   # @param delivery_method [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
            #   #
            #   def initialize(billing_provider:, delivery_method:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case billing_provider
            # in :aws_marketplace
            #   # ...
            # in :stripe
            #   # ...
            # in :netsuite
            #   # ...
            # in :custom
            #   # ...
            # in :azure_marketplace
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class BillingProvider < MetronomeSDK::Enum
              AWS_MARKETPLACE = :aws_marketplace
              STRIPE = :stripe
              NETSUITE = :netsuite
              CUSTOM = :custom
              AZURE_MARKETPLACE = :azure_marketplace
              QUICKBOOKS_ONLINE = :quickbooks_online
              WORKDAY = :workday
              GCP_MARKETPLACE = :gcp_marketplace

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            # @abstract
            #
            # @example
            # ```ruby
            # case delivery_method
            # in :direct_to_billing_provider
            #   # ...
            # in :aws_sqs
            #   # ...
            # in :tackle
            #   # ...
            # in :aws_sns
            #   # ...
            # end
            # ```
            class DeliveryMethod < MetronomeSDK::Enum
              DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
              AWS_SQS = :aws_sqs
              TACKLE = :tackle
              AWS_SNS = :aws_sns

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          # @abstract
          #
          # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          #   prices automatically. EXPLICIT prioritization requires specifying priorities for
          #   each multiplier; the one with the lowest priority value will be prioritized
          #   first.
          #
          # @example
          # ```ruby
          # case multiplier_override_prioritization
          # in :LOWEST_MULTIPLIER
          #   # ...
          # in :EXPLICIT
          #   # ...
          # end
          # ```
          class MultiplierOverridePrioritization < MetronomeSDK::Enum
            LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
            EXPLICIT = :EXPLICIT

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class RecurringCommit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_amount
            #   The amount of commit to grant.
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::AccessAmount]
            required :access_amount,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::AccessAmount }

            # @!attribute commit_duration
            #   The amount of time the created commits will be valid for
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration]
            required :commit_duration,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration }

            # @!attribute priority
            #   Will be passed down to the individual commits
            #
            #   @return [Float]
            required :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Product]
            required :product, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Product }

            # @!attribute rate_type
            #   Whether the created commits will use the commit rate or list rate
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RateType }

            # @!attribute starting_at
            #   Determines the start time for the first commit
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [r] applicable_product_ids
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_ids

            # @!attribute [r] applicable_product_tags
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

            # @!attribute [r] contract
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Contract }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Contract]
            #   attr_writer :contract

            # @!attribute [r] description
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] ending_before
            #   Determines when the contract will stop creating recurring commits. Optional
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!attribute [r] invoice_amount
            #   The amount the customer should be billed for the commit. Not required.
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::InvoiceAmount, nil]
            optional :invoice_amount,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::InvoiceAmount }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::InvoiceAmount]
            #   attr_writer :invoice_amount

            # @!attribute [r] name
            #   Displayed on invoices. Will be passed through to the individual commits
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] netsuite_sales_order_id
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_sales_order_id

            # @!attribute [r] proration
            #   Determines whether the first and last commit will be prorated. If not provided,
            #     the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Proration, nil]
            optional :proration,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Proration }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Proration]
            #   attr_writer :proration

            # @!attribute [r] recurrence_frequency
            #   The frequency at which the recurring commits will be created. If not provided: -
            #     The commits will be created on the usage invoice frequency. If provided: - The
            #     period defined in the duration will correspond to this frequency. - Commits will
            #     be created aligned with the recurring commit's start_date rather than the usage
            #     invoice dates.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RecurrenceFrequency, nil]
            optional :recurrence_frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RecurrenceFrequency }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RecurrenceFrequency]
            #   attr_writer :recurrence_frequency

            # @!attribute [r] rollover_fraction
            #   Will be passed down to the individual commits. This controls how much of an
            #     individual unexpired commit will roll over upon contract transition. Must be
            #     between 0 and 1.
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :rollover_fraction

            # @!parse
            #   # @param id [String]
            #   # @param access_amount [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::AccessAmount]
            #   # @param commit_duration [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration]
            #   # @param priority [Float]
            #   # @param product [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Product]
            #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RateType]
            #   # @param starting_at [Time]
            #   # @param applicable_product_ids [Array<String>]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param contract [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Contract]
            #   # @param description [String]
            #   # @param ending_before [Time]
            #   # @param invoice_amount [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::InvoiceAmount]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String]
            #   # @param proration [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Proration]
            #   # @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RecurrenceFrequency]
            #   # @param rollover_fraction [Float]
            #   #
            #   def initialize(
            #     id:,
            #     access_amount:,
            #     commit_duration:,
            #     priority:,
            #     product:,
            #     rate_type:,
            #     starting_at:,
            #     applicable_product_ids: nil,
            #     applicable_product_tags: nil,
            #     contract: nil,
            #     description: nil,
            #     ending_before: nil,
            #     invoice_amount: nil,
            #     name: nil,
            #     netsuite_sales_order_id: nil,
            #     proration: nil,
            #     recurrence_frequency: nil,
            #     rollover_fraction: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AccessAmount < MetronomeSDK::BaseModel
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

              # @!parse
              #   # The amount of commit to grant.
              #   #
              #   # @param credit_type_id [String]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(credit_type_id:, quantity:, unit_price:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class CommitDuration < MetronomeSDK::BaseModel
              # @!attribute value
              #
              #   @return [Float]
              required :value, Float

              # @!attribute [r] unit
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration::Unit, nil]
              optional :unit,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration::Unit }

              # @!parse
              #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration::Unit]
              #   attr_writer :unit

              # @!parse
              #   # The amount of time the created commits will be valid for
              #   #
              #   # @param value [Float]
              #   # @param unit [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration::Unit]
              #   #
              #   def initialize(value:, unit: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case unit
              # in :PERIODS
              #   # ...
              # end
              # ```
              class Unit < MetronomeSDK::Enum
                PERIODS = :PERIODS

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # Whether the created commits will use the commit rate or list rate
            #
            # @example
            # ```ruby
            # case rate_type
            # in :COMMIT_RATE
            #   # ...
            # in :LIST_RATE
            #   # ...
            # end
            # ```
            class RateType < MetronomeSDK::Enum
              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class Contract < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class InvoiceAmount < MetronomeSDK::BaseModel
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

              # @!parse
              #   # The amount the customer should be billed for the commit. Not required.
              #   #
              #   # @param credit_type_id [String]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(credit_type_id:, quantity:, unit_price:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # Determines whether the first and last commit will be prorated. If not provided,
            #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            # @example
            # ```ruby
            # case proration
            # in :NONE
            #   # ...
            # in :FIRST
            #   # ...
            # in :LAST
            #   # ...
            # in :FIRST_AND_LAST
            #   # ...
            # end
            # ```
            class Proration < MetronomeSDK::Enum
              NONE = :NONE
              FIRST = :FIRST
              LAST = :LAST
              FIRST_AND_LAST = :FIRST_AND_LAST

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            # @abstract
            #
            # The frequency at which the recurring commits will be created. If not provided: -
            #   The commits will be created on the usage invoice frequency. If provided: - The
            #   period defined in the duration will correspond to this frequency. - Commits will
            #   be created aligned with the recurring commit's start_date rather than the usage
            #   invoice dates.
            #
            # @example
            # ```ruby
            # case recurrence_frequency
            # in :MONTHLY
            #   # ...
            # in :QUARTERLY
            #   # ...
            # in :ANNUAL
            #   # ...
            # in :WEEKLY
            #   # ...
            # end
            # ```
            class RecurrenceFrequency < MetronomeSDK::Enum
              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class RecurringCredit < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_amount
            #   The amount of commit to grant.
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::AccessAmount]
            required :access_amount,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::AccessAmount }

            # @!attribute commit_duration
            #   The amount of time the created commits will be valid for
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration]
            required :commit_duration,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration }

            # @!attribute priority
            #   Will be passed down to the individual commits
            #
            #   @return [Float]
            required :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Product]
            required :product, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Product }

            # @!attribute rate_type
            #   Whether the created commits will use the commit rate or list rate
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RateType }

            # @!attribute starting_at
            #   Determines the start time for the first commit
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [r] applicable_product_ids
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_ids

            # @!attribute [r] applicable_product_tags
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :applicable_product_tags

            # @!attribute [r] contract
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Contract }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Contract]
            #   attr_writer :contract

            # @!attribute [r] description
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] ending_before
            #   Determines when the contract will stop creating recurring commits. Optional
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :ending_before

            # @!attribute [r] name
            #   Displayed on invoices. Will be passed through to the individual commits
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!attribute [r] netsuite_sales_order_id
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_sales_order_id

            # @!attribute [r] proration
            #   Determines whether the first and last commit will be prorated. If not provided,
            #     the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Proration, nil]
            optional :proration,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Proration }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Proration]
            #   attr_writer :proration

            # @!attribute [r] recurrence_frequency
            #   The frequency at which the recurring commits will be created. If not provided: -
            #     The commits will be created on the usage invoice frequency. If provided: - The
            #     period defined in the duration will correspond to this frequency. - Commits will
            #     be created aligned with the recurring commit's start_date rather than the usage
            #     invoice dates.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RecurrenceFrequency, nil]
            optional :recurrence_frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RecurrenceFrequency }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RecurrenceFrequency]
            #   attr_writer :recurrence_frequency

            # @!attribute [r] rollover_fraction
            #   Will be passed down to the individual commits. This controls how much of an
            #     individual unexpired commit will roll over upon contract transition. Must be
            #     between 0 and 1.
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :rollover_fraction

            # @!parse
            #   # @param id [String]
            #   # @param access_amount [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::AccessAmount]
            #   # @param commit_duration [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration]
            #   # @param priority [Float]
            #   # @param product [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Product]
            #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RateType]
            #   # @param starting_at [Time]
            #   # @param applicable_product_ids [Array<String>]
            #   # @param applicable_product_tags [Array<String>]
            #   # @param contract [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Contract]
            #   # @param description [String]
            #   # @param ending_before [Time]
            #   # @param name [String]
            #   # @param netsuite_sales_order_id [String]
            #   # @param proration [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Proration]
            #   # @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RecurrenceFrequency]
            #   # @param rollover_fraction [Float]
            #   #
            #   def initialize(
            #     id:,
            #     access_amount:,
            #     commit_duration:,
            #     priority:,
            #     product:,
            #     rate_type:,
            #     starting_at:,
            #     applicable_product_ids: nil,
            #     applicable_product_tags: nil,
            #     contract: nil,
            #     description: nil,
            #     ending_before: nil,
            #     name: nil,
            #     netsuite_sales_order_id: nil,
            #     proration: nil,
            #     recurrence_frequency: nil,
            #     rollover_fraction: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AccessAmount < MetronomeSDK::BaseModel
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

              # @!parse
              #   # The amount of commit to grant.
              #   #
              #   # @param credit_type_id [String]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(credit_type_id:, quantity:, unit_price:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class CommitDuration < MetronomeSDK::BaseModel
              # @!attribute value
              #
              #   @return [Float]
              required :value, Float

              # @!attribute [r] unit
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration::Unit, nil]
              optional :unit,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration::Unit }

              # @!parse
              #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration::Unit]
              #   attr_writer :unit

              # @!parse
              #   # The amount of time the created commits will be valid for
              #   #
              #   # @param value [Float]
              #   # @param unit [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration::Unit]
              #   #
              #   def initialize(value:, unit: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case unit
              # in :PERIODS
              #   # ...
              # end
              # ```
              class Unit < MetronomeSDK::Enum
                PERIODS = :PERIODS

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class Product < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # @param id [String]
              #   # @param name [String]
              #   #
              #   def initialize(id:, name:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # Whether the created commits will use the commit rate or list rate
            #
            # @example
            # ```ruby
            # case rate_type
            # in :COMMIT_RATE
            #   # ...
            # in :LIST_RATE
            #   # ...
            # end
            # ```
            class RateType < MetronomeSDK::Enum
              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class Contract < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            # @abstract
            #
            # Determines whether the first and last commit will be prorated. If not provided,
            #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            # @example
            # ```ruby
            # case proration
            # in :NONE
            #   # ...
            # in :FIRST
            #   # ...
            # in :LAST
            #   # ...
            # in :FIRST_AND_LAST
            #   # ...
            # end
            # ```
            class Proration < MetronomeSDK::Enum
              NONE = :NONE
              FIRST = :FIRST
              LAST = :LAST
              FIRST_AND_LAST = :FIRST_AND_LAST

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            # @abstract
            #
            # The frequency at which the recurring commits will be created. If not provided: -
            #   The commits will be created on the usage invoice frequency. If provided: - The
            #   period defined in the duration will correspond to this frequency. - Commits will
            #   be created aligned with the recurring commit's start_date rather than the usage
            #   invoice dates.
            #
            # @example
            # ```ruby
            # case recurrence_frequency
            # in :MONTHLY
            #   # ...
            # in :QUARTERLY
            #   # ...
            # in :ANNUAL
            #   # ...
            # in :WEEKLY
            #   # ...
            # end
            # ```
            class RecurrenceFrequency < MetronomeSDK::Enum
              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class ResellerRoyalty < MetronomeSDK::BaseModel
            # @!attribute reseller_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::ResellerType]
            required :reseller_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::ResellerType }

            # @!attribute segments
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment>]
            required :segments,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment] }

            # @!parse
            #   # @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::ResellerType]
            #   # @param segments [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment>]
            #   #
            #   def initialize(reseller_type:, segments:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case reseller_type
            # in :AWS
            #   # ...
            # in :AWS_PRO_SERVICE
            #   # ...
            # in :GCP
            #   # ...
            # in :GCP_PRO_SERVICE
            #   # ...
            # end
            # ```
            class ResellerType < MetronomeSDK::Enum
              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class Segment < MetronomeSDK::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment::ResellerType]
              required :reseller_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment::ResellerType }

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute [r] applicable_product_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :applicable_product_ids

              # @!attribute [r] applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :applicable_product_tags

              # @!attribute [r] aws_account_number
              #
              #   @return [String, nil]
              optional :aws_account_number, String

              # @!parse
              #   # @return [String]
              #   attr_writer :aws_account_number

              # @!attribute [r] aws_offer_id
              #
              #   @return [String, nil]
              optional :aws_offer_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :aws_offer_id

              # @!attribute [r] aws_payer_reference_id
              #
              #   @return [String, nil]
              optional :aws_payer_reference_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :aws_payer_reference_id

              # @!attribute [r] ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :ending_before

              # @!attribute [r] gcp_account_id
              #
              #   @return [String, nil]
              optional :gcp_account_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :gcp_account_id

              # @!attribute [r] gcp_offer_id
              #
              #   @return [String, nil]
              optional :gcp_offer_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :gcp_offer_id

              # @!attribute [r] reseller_contract_value
              #
              #   @return [Float, nil]
              optional :reseller_contract_value, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :reseller_contract_value

              # @!parse
              #   # @param fraction [Float]
              #   # @param netsuite_reseller_id [String]
              #   # @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment::ResellerType]
              #   # @param starting_at [Time]
              #   # @param applicable_product_ids [Array<String>]
              #   # @param applicable_product_tags [Array<String>]
              #   # @param aws_account_number [String]
              #   # @param aws_offer_id [String]
              #   # @param aws_payer_reference_id [String]
              #   # @param ending_before [Time]
              #   # @param gcp_account_id [String]
              #   # @param gcp_offer_id [String]
              #   # @param reseller_contract_value [Float]
              #   #
              #   def initialize(
              #     fraction:,
              #     netsuite_reseller_id:,
              #     reseller_type:,
              #     starting_at:,
              #     applicable_product_ids: nil,
              #     applicable_product_tags: nil,
              #     aws_account_number: nil,
              #     aws_offer_id: nil,
              #     aws_payer_reference_id: nil,
              #     ending_before: nil,
              #     gcp_account_id: nil,
              #     gcp_offer_id: nil,
              #     reseller_contract_value: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case reseller_type
              # in :AWS
              #   # ...
              # in :AWS_PRO_SERVICE
              #   # ...
              # in :GCP
              #   # ...
              # in :GCP_PRO_SERVICE
              #   # ...
              # end
              # ```
              class ResellerType < MetronomeSDK::Enum
                AWS = :AWS
                AWS_PRO_SERVICE = :AWS_PRO_SERVICE
                GCP = :GCP
                GCP_PRO_SERVICE = :GCP_PRO_SERVICE

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          # @abstract
          #
          # Determines which scheduled and commit charges to consolidate onto the Contract's
          #   usage invoice. The charge's `timestamp` must match the usage invoice's
          #   `ending_before` date for consolidation to occur. This field cannot be modified
          #   after a Contract has been created. If this field is omitted, charges will appear
          #   on a separate invoice from usage charges.
          #
          # @example
          # ```ruby
          # case scheduled_charges_on_usage_invoices
          # in :ALL
          #   # ...
          # end
          # ```
          class ScheduledChargesOnUsageInvoices < MetronomeSDK::Enum
            ALL = :ALL

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class SpendThresholdConfiguration < MetronomeSDK::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::Commit]
            required :commit,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::Commit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #     threshold_amount. Toggling to true will result an immediate evaluation,
            #     regardless of prior state.
            #
            #   @return [Boolean]
            required :is_enabled, MetronomeSDK::BooleanModel

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig]
            required :payment_gate_config,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig }

            # @!attribute threshold_amount
            #   Specify the threshold amount for the contract. Each time the contract's usage
            #     hits this amount, a threshold charge will be initiated.
            #
            #   @return [Float]
            required :threshold_amount, Float

            # @!parse
            #   # @param commit [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::Commit]
            #   # @param is_enabled [Boolean]
            #   # @param payment_gate_config [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig]
            #   # @param threshold_amount [Float]
            #   #
            #   def initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Commit < MetronomeSDK::BaseModel
              # @!attribute product_id
              #   The commit product that will be used to generate the line item for commit
              #     payment.
              #
              #   @return [String]
              required :product_id, String

              # @!attribute [r] description
              #
              #   @return [String, nil]
              optional :description, String

              # @!parse
              #   # @return [String]
              #   attr_writer :description

              # @!attribute [r] name
              #   Specify the name of the line item for the threshold charge. If left blank, it
              #     will default to the commit product name.
              #
              #   @return [String, nil]
              optional :name, String

              # @!parse
              #   # @return [String]
              #   attr_writer :name

              # @!parse
              #   # @param product_id [String]
              #   # @param description [String]
              #   # @param name [String]
              #   #
              #   def initialize(product_id:, description: nil, name: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class PaymentGateConfig < MetronomeSDK::BaseModel
              # @!attribute payment_gate_type
              #   Gate access to the commit balance based on successful collection of payment.
              #     Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              #     facilitate payment using your own payment integration. Select NONE if you do not
              #     wish to payment gate the commit balance.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
              required :payment_gate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

              # @!attribute [r] stripe_config
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
              optional :stripe_config,
                       -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

              # @!parse
              #   # @return [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig]
              #   attr_writer :stripe_config

              # @!attribute [r] tax_type
              #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              #     not wish Metronome to calculate tax on your behalf. Leaving this field blank
              #     will default to NONE.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
              optional :tax_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

              # @!parse
              #   # @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType]
              #   attr_writer :tax_type

              # @!parse
              #   # @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
              #   # @param stripe_config [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig]
              #   # @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType]
              #   #
              #   def initialize(payment_gate_type:, stripe_config: nil, tax_type: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # Gate access to the commit balance based on successful collection of payment.
              #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              #   facilitate payment using your own payment integration. Select NONE if you do not
              #   wish to payment gate the commit balance.
              #
              # @example
              # ```ruby
              # case payment_gate_type
              # in :NONE
              #   # ...
              # in :STRIPE
              #   # ...
              # in :EXTERNAL
              #   # ...
              # end
              # ```
              class PaymentGateType < MetronomeSDK::Enum
                NONE = :NONE
                STRIPE = :STRIPE
                EXTERNAL = :EXTERNAL

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end

              class StripeConfig < MetronomeSDK::BaseModel
                # @!attribute payment_type
                #   If left blank, will default to INVOICE
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                required :payment_type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                # @!parse
                #   # Only applicable if using Stripe as your payment gateway through Metronome.
                #   #
                #   # @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                #   #
                #   def initialize(payment_type:, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

                # @abstract
                #
                # If left blank, will default to INVOICE
                #
                # @example
                # ```ruby
                # case payment_type
                # in :INVOICE
                #   # ...
                # in :PAYMENT_INTENT
                #   # ...
                # end
                # ```
                class PaymentType < MetronomeSDK::Enum
                  INVOICE = :INVOICE
                  PAYMENT_INTENT = :PAYMENT_INTENT

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   #
                  #   def self.values; end
                end
              end

              # @abstract
              #
              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
              #   will default to NONE.
              #
              # @example
              # ```ruby
              # case tax_type
              # in :NONE
              #   # ...
              # in :STRIPE
              #   # ...
              # end
              # ```
              class TaxType < MetronomeSDK::Enum
                NONE = :NONE
                STRIPE = :STRIPE

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end
        end
      end
    end
  end
end
