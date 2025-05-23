# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#list
      class ContractListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::V2::ContractListResponse::Data>]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Commit>]
          required :commits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Commit] }

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
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Override] }

          # @!attribute scheduled_charges
          #
          #   @return [Array<MetronomeSDK::ScheduledCharge>]
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
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Transition>]
          required :transitions,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Transition] }

          # @!attribute usage_filter
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::UsageFilter>]
          required :usage_filter,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::UsageFilter] }

          # @!attribute usage_statement_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule]
          required :usage_statement_schedule,
                   -> { MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule }

          # @!attribute archived_at
          #
          #   @return [Time, nil]
          optional :archived_at, Time

          # @!attribute credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Credit>, nil]
          optional :credits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Credit] }

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute customer_billing_provider_configuration
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration, nil]
          optional :customer_billing_provider_configuration,
                   -> { MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration }

          # @!attribute discounts
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<MetronomeSDK::Discount>, nil]
          optional :discounts, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Discount] }

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute multiplier_override_prioritization
          #   Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          #   prices automatically. EXPLICIT prioritization requires specifying priorities for
          #   each multiplier; the one with the lowest priority value will be prioritized
          #   first.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::MultiplierOverridePrioritization, nil]
          optional :multiplier_override_prioritization,
                   enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::MultiplierOverridePrioritization }

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
          #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration, nil]
          optional :prepaid_balance_threshold_configuration,
                   -> { MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration }

          # @!attribute professional_services
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<MetronomeSDK::ProService>, nil]
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
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit>, nil]
          optional :recurring_commits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit] }

          # @!attribute recurring_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit>, nil]
          optional :recurring_credits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit] }

          # @!attribute reseller_royalties
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty>, nil]
          optional :reseller_royalties,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty] }

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
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ScheduledChargesOnUsageInvoices, nil]
          optional :scheduled_charges_on_usage_invoices,
                   enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::ScheduledChargesOnUsageInvoices }

          # @!attribute spend_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration, nil]
          optional :spend_threshold_configuration,
                   -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration }

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

          # @!method initialize(id:, commits:, created_at:, created_by:, customer_id:, overrides:, scheduled_charges:, starting_at:, transitions:, usage_filter:, usage_statement_schedule:, archived_at: nil, credits: nil, custom_fields: nil, customer_billing_provider_configuration: nil, discounts: nil, ending_before: nil, multiplier_override_prioritization: nil, name: nil, net_payment_terms_days: nil, netsuite_sales_order_id: nil, prepaid_balance_threshold_configuration: nil, professional_services: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, total_contract_value: nil, uniqueness_key: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractListResponse::Data} for more details.
          #
          #   @param id [String]
          #
          #   @param commits [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Commit>]
          #
          #   @param created_at [Time]
          #
          #   @param created_by [String]
          #
          #   @param customer_id [String]
          #
          #   @param overrides [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override>]
          #
          #   @param scheduled_charges [Array<MetronomeSDK::ScheduledCharge>]
          #
          #   @param starting_at [Time]
          #
          #   @param transitions [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Transition>]
          #
          #   @param usage_filter [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::UsageFilter>]
          #
          #   @param usage_statement_schedule [MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule]
          #
          #   @param archived_at [Time]
          #
          #   @param credits [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Credit>]
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param customer_billing_provider_configuration [MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration] This field's availability is dependent on your client's configuration.
          #
          #   @param discounts [Array<MetronomeSDK::Discount>] This field's availability is dependent on your client's configuration.
          #
          #   @param ending_before [Time]
          #
          #   @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
          #
          #   @param name [String]
          #
          #   @param net_payment_terms_days [Float]
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration]
          #
          #   @param professional_services [Array<MetronomeSDK::ProService>] This field's availability is dependent on your client's configuration.
          #
          #   @param rate_card_id [String]
          #
          #   @param recurring_commits [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit>]
          #
          #   @param recurring_credits [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit>]
          #
          #   @param reseller_royalties [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
          #
          #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
          #
          #   @param spend_threshold_configuration [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration]
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
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Product]
            required :product, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Type]
            required :type, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Type }

            # @!attribute access_schedule
            #   The schedule that the customer will gain access to the credits purposed with
            #   this commit.
            #
            #   @return [MetronomeSDK::ScheduleDuration, nil]
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
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Contract }

            # @!attribute custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute invoice_contract
            #   The contract that this commit will be billed on.
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::InvoiceContract, nil]
            optional :invoice_contract,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::InvoiceContract }

            # @!attribute invoice_schedule
            #   The schedule that the customer will be invoiced for this commit.
            #
            #   @return [MetronomeSDK::SchedulePointInTime, nil]
            optional :invoice_schedule, -> { MetronomeSDK::SchedulePointInTime }

            # @!attribute ledger
            #   A list of ordered events that impact the balance of a commit. For example, an
            #   invoice deduction or a rollover.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>, nil]
            optional :ledger,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger] }

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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RateType, nil]
            optional :rate_type, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RateType }

            # @!attribute rolled_over_from
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RolledOverFrom, nil]
            optional :rolled_over_from,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RolledOverFrom }

            # @!attribute rollover_fraction
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!attribute salesforce_opportunity_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :salesforce_opportunity_id, String

            # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, archived_at: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, invoice_contract: nil, invoice_schedule: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rolled_over_from: nil, rollover_fraction: nil, salesforce_opportunity_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractListResponse::Data::Commit} for more details.
            #
            #   @param id [String]
            #
            #   @param product [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Product]
            #
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Type]
            #
            #   @param access_schedule [MetronomeSDK::ScheduleDuration] The schedule that the customer will gain access to the credits purposed with thi
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
            #   @param contract [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Contract]
            #
            #   @param custom_fields [Hash{Symbol=>String}]
            #
            #   @param description [String]
            #
            #   @param invoice_contract [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::InvoiceContract] The contract that this commit will be billed on.
            #
            #   @param invoice_schedule [MetronomeSDK::SchedulePointInTime] The schedule that the customer will be invoiced for this commit.
            #
            #   @param ledger [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>] A list of ordered events that impact the balance of a commit. For example, an in
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RateType]
            #
            #   @param rolled_over_from [MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::RolledOverFrom]
            #
            #   @param rollover_fraction [Float]
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit#product
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

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID = :PREPAID
              POSTPAID = :POSTPAID

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit#contract
            class Contract < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String]
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit#invoice_contract
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type }

                # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param new_contract_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type }

                # @!method initialize(amount:, timestamp:, type:)
                #   @param amount [Float]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type }

                # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param new_contract_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type }

                # @!method initialize(amount:, reason:, timestamp:, type:)
                #   @param amount [Float]
                #   @param reason [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type }

                # @!method initialize(amount:, reason:, timestamp:, type:)
                #   @param amount [Float]
                #   @param reason [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type }

                # @!method initialize(amount:, timestamp:, type:)
                #   @param amount [Float]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry)]

              define_sorbet_constant!(:Variants) do
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PrepaidCommitManualLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitManualLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
                  )
                end
              end
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Commit#rolled_over_from
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
            #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier>, nil]
            optional :override_specifiers,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier] }

            # @!attribute override_tiers
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideTier>, nil]
            optional :override_tiers,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideTier] }

            # @!attribute overwrite_rate
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate, nil]
            optional :overwrite_rate,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate }

            # @!attribute priority
            #
            #   @return [Float, nil]
            optional :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Product, nil]
            optional :product, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Product }

            # @!attribute target
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Target, nil]
            optional :target, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Target }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Type, nil]
            optional :type, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Type }

            # @!method initialize(id:, starting_at:, applicable_product_tags: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, override_specifiers: nil, override_tiers: nil, overwrite_rate: nil, priority: nil, product: nil, target: nil, type: nil)
            #   @param id [String]
            #   @param starting_at [Time]
            #   @param applicable_product_tags [Array<String>]
            #   @param ending_before [Time]
            #   @param entitled [Boolean]
            #   @param is_commit_specific [Boolean]
            #   @param multiplier [Float]
            #   @param override_specifiers [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideSpecifier>]
            #   @param override_tiers [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverrideTier>]
            #   @param overwrite_rate [MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate]
            #   @param priority [Float]
            #   @param product [MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Product]
            #   @param target [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Target]
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::Type]

            class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
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

              # @!method initialize(commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil, recurring_credit_ids: nil)
              #   @param commit_ids [Array<String>]
              #   @param presentation_group_values [Hash{Symbol=>String, nil}]
              #   @param pricing_group_values [Hash{Symbol=>String}]
              #   @param product_id [String]
              #   @param product_tags [Array<String>]
              #   @param recurring_commit_ids [Array<String>]
              #   @param recurring_credit_ids [Array<String>]
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

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Override#overwrite_rate
            class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate::RateType }

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::CreditTypeData, nil]
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
              #   @return [Array<MetronomeSDK::Tier>, nil]
              optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

              # @!method initialize(rate_type:, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate}
              #   for more details.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate::RateType]
              #
              #   @param credit_type [MetronomeSDK::CreditTypeData]
              #
              #   @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
              #
              #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #
              #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
              #
              #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @param tiers [Array<MetronomeSDK::Tier>] Only set for TIERED rate_type.

              # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Override::OverwriteRate#rate_type
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

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Override#product
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

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Override#target
            module Target
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Override#type
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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Transition::Type]
            required :type, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Transition::Type }

            # @!method initialize(from_contract_id:, to_contract_id:, type:)
            #   @param from_contract_id [String]
            #   @param to_contract_id [String]
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Transition::Type]

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Transition#type
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
            #   {MetronomeSDK::Models::V2::ContractListResponse::Data::UsageFilter} for more
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

          # @see MetronomeSDK::Models::V2::ContractListResponse::Data#usage_statement_schedule
          class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
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

            # @!method initialize(billing_anchor_date:, frequency:)
            #   @param billing_anchor_date [Time] Contract usage statements follow a selected cadence based on this date.
            #
            #   @param frequency [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule::Frequency]

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::UsageStatementSchedule#frequency
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
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Product]
            required :product, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Type]
            required :type, enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Type }

            # @!attribute access_schedule
            #   The schedule that the customer will gain access to the credits.
            #
            #   @return [MetronomeSDK::ScheduleDuration, nil]
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
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Contract }

            # @!attribute custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute ledger
            #   A list of ordered events that impact the balance of a credit. For example, an
            #   invoice deduction or an expiration.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry>, nil]
            optional :ledger,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger] }

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

            # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, salesforce_opportunity_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractListResponse::Data::Credit} for more details.
            #
            #   @param id [String]
            #
            #   @param product [MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Product]
            #
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Type]
            #
            #   @param access_schedule [MetronomeSDK::ScheduleDuration] The schedule that the customer will gain access to the credits.
            #
            #   @param applicable_contract_ids [Array<String>]
            #
            #   @param applicable_product_ids [Array<String>]
            #
            #   @param applicable_product_tags [Array<String>]
            #
            #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
            #
            #   @param contract [MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Contract]
            #
            #   @param custom_fields [Hash{Symbol=>String}]
            #
            #   @param description [String]
            #
            #   @param ledger [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry>] A list of ordered events that impact the balance of a credit. For example, an in
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Credit#product
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

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Credit#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT = :CREDIT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Credit#contract
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

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry }

              variant -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry }

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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type }

                # @!method initialize(amount:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type }

                # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                #   @param amount [Float]
                #   @param invoice_id [String]
                #   @param segment_id [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry#type
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
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type }

                # @!method initialize(amount:, reason:, timestamp:, type:)
                #   @param amount [Float]
                #   @param reason [String]
                #   @param timestamp [Time]
                #   @param type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry::Type]

                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  CREDIT_MANUAL = :CREDIT_MANUAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry, MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry)]

              define_sorbet_constant!(:Variants) do
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditSegmentStartLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditExpirationLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCanceledLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditCreditedLedgerEntry,
                    MetronomeSDK::Models::V2::ContractListResponse::Data::Credit::Ledger::CreditManualLedgerEntry
                  )
                end
              end
            end
          end

          # @see MetronomeSDK::Models::V2::ContractListResponse::Data#customer_billing_provider_configuration
          class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
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

            # @!method initialize(billing_provider:, delivery_method:)
            #   This field's availability is dependent on your client's configuration.
            #
            #   @param billing_provider [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
            #   @param delivery_method [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration#billing_provider
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

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::CustomerBillingProviderConfiguration#delivery_method
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

          # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
          # prices automatically. EXPLICIT prioritization requires specifying priorities for
          # each multiplier; the one with the lowest priority value will be prioritized
          # first.
          #
          # @see MetronomeSDK::Models::V2::ContractListResponse::Data#multiplier_override_prioritization
          module MultiplierOverridePrioritization
            extend MetronomeSDK::Internal::Type::Enum

            LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
            EXPLICIT = :EXPLICIT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V2::ContractListResponse::Data#prepaid_balance_threshold_configuration
          class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit]
            required :commit,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #   threshold_amount. Toggling to true will result an immediate evaluation,
            #   regardless of prior state.
            #
            #   @return [Boolean]
            required :is_enabled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
            required :payment_gate_config,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig }

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

            # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration}
            #   for more details.
            #
            #   @param commit [MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit]
            #
            #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
            #
            #   @param payment_gate_config [MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
            #
            #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
            #
            #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's balance

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration#commit
            class Commit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute product_id
              #   The commit product that will be used to generate the line item for commit
              #   payment.
              #
              #   @return [String]
              required :product_id, String

              # @!attribute applicable_product_ids
              #   Which products the threshold commit applies to. If both applicable_product_ids
              #   and applicable_product_tags are not provided, the commit applies to all
              #   products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #   Which tags the threshold commit applies to. If both applicable_product_ids and
              #   applicable_product_tags are not provided, the commit applies to all products.
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

              # @!method initialize(product_id:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit}
              #   for more details.
              #
              #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
              #
              #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If both applicable_product_ids a
              #
              #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If both applicable_product_ids and a
              #
              #   @param description [String]
              #
              #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration#payment_gate_config
            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_gate_type
              #   Gate access to the commit balance based on successful collection of payment.
              #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              #   facilitate payment using your own payment integration. Select NONE if you do not
              #   wish to payment gate the commit balance.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
              required :payment_gate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType }

              # @!attribute stripe_config
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
              optional :stripe_config,
                       -> { MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig }

              # @!attribute tax_type
              #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
              #   will default to NONE.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
              optional :tax_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType }

              # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig}
              #   for more details.
              #
              #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
              #
              #   @param stripe_config [MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              #
              # @see MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
              module PaymentGateType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE
                EXTERNAL = :EXTERNAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_type
                #   If left blank, will default to INVOICE
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                required :payment_type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                # @!method initialize(payment_type:)
                #   Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

                # If left blank, will default to INVOICE
                #
                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
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
              # @see MetronomeSDK::Models::V2::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#tax_type
              module TaxType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE

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
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Contract }

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

            # @!attribute invoice_amount
            #   The amount the customer should be billed for the commit. Not required.
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::InvoiceAmount, nil]
            optional :invoice_amount,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::InvoiceAmount }

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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Proration, nil]
            optional :proration,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Proration }

            # @!attribute recurrence_frequency
            #   The frequency at which the recurring commits will be created. If not provided: -
            #   The commits will be created on the usage invoice frequency. If provided: - The
            #   period defined in the duration will correspond to this frequency. - Commits will
            #   be created aligned with the recurring commit's start_date rather than the usage
            #   invoice dates.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RecurrenceFrequency, nil]
            optional :recurrence_frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RecurrenceFrequency }

            # @!attribute rollover_fraction
            #   Will be passed down to the individual commits. This controls how much of an
            #   individual unexpired commit will roll over upon contract transition. Must be
            #   between 0 and 1.
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit} for more
            #   details.
            #
            #   @param id [String]
            #
            #   @param access_amount [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::AccessAmount] The amount of commit to grant.
            #
            #   @param commit_duration [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration] The amount of time the created commits will be valid for
            #
            #   @param priority [Float] Will be passed down to the individual commits
            #
            #   @param product [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Product]
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
            #
            #   @param starting_at [Time] Determines the start time for the first commit
            #
            #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
            #
            #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
            #
            #   @param contract [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Contract]
            #
            #   @param description [String] Will be passed down to the individual commits
            #
            #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
            #
            #   @param invoice_amount [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
            #
            #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
            #
            #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
            #
            #   @param proration [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
            #
            #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
            #
            #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit#access_amount
            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
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
              #   The amount of commit to grant.
              #
              #   @param credit_type_id [String]
              #   @param quantity [Float]
              #   @param unit_price [Float]
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit#commit_duration
            class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute value
              #
              #   @return [Float]
              required :value, Float

              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration::Unit, nil]
              optional :unit,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration::Unit }

              # @!method initialize(value:, unit: nil)
              #   The amount of time the created commits will be valid for
              #
              #   @param value [Float]
              #   @param unit [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration::Unit]

              # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit::CommitDuration#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                PERIODS = :PERIODS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit#product
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
            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit#contract
            class Contract < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String]
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit#invoice_amount
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
            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit#proration
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
            # be created aligned with the recurring commit's start_date rather than the usage
            # invoice dates.
            #
            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCommit#recurrence_frequency
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
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Contract, nil]
            optional :contract, -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Contract }

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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Proration, nil]
            optional :proration,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Proration }

            # @!attribute recurrence_frequency
            #   The frequency at which the recurring commits will be created. If not provided: -
            #   The commits will be created on the usage invoice frequency. If provided: - The
            #   period defined in the duration will correspond to this frequency. - Commits will
            #   be created aligned with the recurring commit's start_date rather than the usage
            #   invoice dates.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RecurrenceFrequency, nil]
            optional :recurrence_frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RecurrenceFrequency }

            # @!attribute rollover_fraction
            #   Will be passed down to the individual commits. This controls how much of an
            #   individual unexpired commit will roll over upon contract transition. Must be
            #   between 0 and 1.
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit} for more
            #   details.
            #
            #   @param id [String]
            #
            #   @param access_amount [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::AccessAmount] The amount of commit to grant.
            #
            #   @param commit_duration [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration] The amount of time the created commits will be valid for
            #
            #   @param priority [Float] Will be passed down to the individual commits
            #
            #   @param product [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Product]
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
            #
            #   @param starting_at [Time] Determines the start time for the first commit
            #
            #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
            #
            #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
            #
            #   @param contract [MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Contract]
            #
            #   @param description [String] Will be passed down to the individual commits
            #
            #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
            #
            #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
            #
            #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
            #
            #   @param proration [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
            #
            #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
            #
            #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit#access_amount
            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
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
              #   The amount of commit to grant.
              #
              #   @param credit_type_id [String]
              #   @param quantity [Float]
              #   @param unit_price [Float]
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit#commit_duration
            class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute value
              #
              #   @return [Float]
              required :value, Float

              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration::Unit, nil]
              optional :unit,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration::Unit }

              # @!method initialize(value:, unit: nil)
              #   The amount of time the created commits will be valid for
              #
              #   @param value [Float]
              #   @param unit [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration::Unit]

              # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit::CommitDuration#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                PERIODS = :PERIODS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit#product
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
            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit#contract
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
            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit#proration
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
            # be created aligned with the recurring commit's start_date rather than the usage
            # invoice dates.
            #
            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::RecurringCredit#recurrence_frequency
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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::ResellerType]
            required :reseller_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::ResellerType }

            # @!attribute segments
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment>]
            required :segments,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment] }

            # @!method initialize(reseller_type:, segments:)
            #   @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::ResellerType]
            #   @param segments [Array<MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment>]

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty#reseller_type
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
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment::ResellerType]
              required :reseller_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment::ResellerType }

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
              #   @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment::ResellerType]
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

              # @see MetronomeSDK::Models::V2::ContractListResponse::Data::ResellerRoyalty::Segment#reseller_type
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
          # @see MetronomeSDK::Models::V2::ContractListResponse::Data#scheduled_charges_on_usage_invoices
          module ScheduledChargesOnUsageInvoices
            extend MetronomeSDK::Internal::Type::Enum

            ALL = :ALL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V2::ContractListResponse::Data#spend_threshold_configuration
          class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::Commit]
            required :commit,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::Commit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #   threshold_amount. Toggling to true will result an immediate evaluation,
            #   regardless of prior state.
            #
            #   @return [Boolean]
            required :is_enabled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig]
            required :payment_gate_config,
                     -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig }

            # @!attribute threshold_amount
            #   Specify the threshold amount for the contract. Each time the contract's usage
            #   hits this amount, a threshold charge will be initiated.
            #
            #   @return [Float]
            required :threshold_amount, Float

            # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration}
            #   for more details.
            #
            #   @param commit [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::Commit]
            #
            #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
            #
            #   @param payment_gate_config [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig]
            #
            #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration#commit
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
              #   {MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::Commit}
              #   for more details.
              #
              #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
              #
              #   @param description [String]
              #
              #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            end

            # @see MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration#payment_gate_config
            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_gate_type
              #   Gate access to the commit balance based on successful collection of payment.
              #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              #   facilitate payment using your own payment integration. Select NONE if you do not
              #   wish to payment gate the commit balance.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
              required :payment_gate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

              # @!attribute stripe_config
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @return [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
              optional :stripe_config,
                       -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

              # @!attribute tax_type
              #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
              #   will default to NONE.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
              optional :tax_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

              # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig}
              #   for more details.
              #
              #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
              #
              #   @param stripe_config [MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              #
              # @see MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
              module PaymentGateType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE
                EXTERNAL = :EXTERNAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#stripe_config
              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_type
                #   If left blank, will default to INVOICE
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                required :payment_type,
                         enum: -> { MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                # @!method initialize(payment_type:)
                #   Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

                # If left blank, will default to INVOICE
                #
                # @see MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
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
              # @see MetronomeSDK::Models::V2::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#tax_type
              module TaxType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
