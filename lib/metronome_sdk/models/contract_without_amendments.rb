# frozen_string_literal: true

module MetronomeSDK
  module Models
    class ContractWithoutAmendments < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute commits
      #
      #   @return [Array<MetronomeSDK::Models::Commit>]
      required :commits, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Commit] }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #
      #   @return [String]
      required :created_by, String

      # @!attribute overrides
      #
      #   @return [Array<MetronomeSDK::Models::Override>]
      required :overrides, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Override] }

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
      #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::Transition>]
      required :transitions,
               -> {
                 MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractWithoutAmendments::Transition]
               }

      # @!attribute usage_statement_schedule
      #
      #   @return [MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule]
      required :usage_statement_schedule,
               -> {
                 MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule
               }

      # @!attribute credits
      #
      #   @return [Array<MetronomeSDK::Models::Credit>, nil]
      optional :credits, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Credit] }

      # @!attribute discounts
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<MetronomeSDK::Models::Discount>, nil]
      optional :discounts, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Discount] }

      # @!attribute ending_before
      #
      #   @return [Time, nil]
      optional :ending_before, Time

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
      #   @return [MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration, nil]
      optional :prepaid_balance_threshold_configuration,
               -> { MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration }

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
      #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit>, nil]
      optional :recurring_commits,
               -> {
                 MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractWithoutAmendments::RecurringCommit]
               }

      # @!attribute recurring_credits
      #
      #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit>, nil]
      optional :recurring_credits,
               -> {
                 MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractWithoutAmendments::RecurringCredit]
               }

      # @!attribute reseller_royalties
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty>, nil]
      optional :reseller_royalties,
               -> {
                 MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty]
               }

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
      #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices, nil]
      optional :scheduled_charges_on_usage_invoices,
               enum: -> { MetronomeSDK::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices }

      # @!attribute spend_threshold_configuration
      #
      #   @return [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration, nil]
      optional :spend_threshold_configuration,
               -> { MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration }

      # @!attribute total_contract_value
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Float, nil]
      optional :total_contract_value, Float

      # @!attribute usage_filter
      #
      #   @return [MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter, nil]
      optional :usage_filter, -> { MetronomeSDK::ContractWithoutAmendments::UsageFilter }

      # @!method initialize(commits:, created_at:, created_by:, overrides:, scheduled_charges:, starting_at:, transitions:, usage_statement_schedule:, credits: nil, discounts: nil, ending_before: nil, name: nil, net_payment_terms_days: nil, netsuite_sales_order_id: nil, prepaid_balance_threshold_configuration: nil, professional_services: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, total_contract_value: nil, usage_filter: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::ContractWithoutAmendments} for more details.
      #
      #   @param commits [Array<MetronomeSDK::Models::Commit>]
      #
      #   @param created_at [Time]
      #
      #   @param created_by [String]
      #
      #   @param overrides [Array<MetronomeSDK::Models::Override>]
      #
      #   @param scheduled_charges [Array<MetronomeSDK::Models::ScheduledCharge>]
      #
      #   @param starting_at [Time]
      #
      #   @param transitions [Array<MetronomeSDK::Models::ContractWithoutAmendments::Transition>]
      #
      #   @param usage_statement_schedule [MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule]
      #
      #   @param credits [Array<MetronomeSDK::Models::Credit>]
      #
      #   @param discounts [Array<MetronomeSDK::Models::Discount>] This field's availability is dependent on your client's configuration.
      #
      #   @param ending_before [Time]
      #
      #   @param name [String]
      #
      #   @param net_payment_terms_days [Float]
      #
      #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
      #
      #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration]
      #
      #   @param professional_services [Array<MetronomeSDK::Models::ProService>] This field's availability is dependent on your client's configuration.
      #
      #   @param rate_card_id [String]
      #
      #   @param recurring_commits [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit>]
      #
      #   @param recurring_credits [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit>]
      #
      #   @param reseller_royalties [Array<MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
      #
      #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
      #
      #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
      #
      #   @param spend_threshold_configuration [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration]
      #
      #   @param total_contract_value [Float] This field's availability is dependent on your client's configuration.
      #
      #   @param usage_filter [MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter]

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
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type]
        required :type, enum: -> { MetronomeSDK::ContractWithoutAmendments::Transition::Type }

        # @!method initialize(from_contract_id:, to_contract_id:, type:)
        #   @param from_contract_id [String]
        #   @param to_contract_id [String]
        #   @param type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type]

        # @see MetronomeSDK::Models::ContractWithoutAmendments::Transition#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see MetronomeSDK::Models::ContractWithoutAmendments#usage_statement_schedule
      class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute billing_anchor_date
        #   Contract usage statements follow a selected cadence based on this date.
        #
        #   @return [Time]
        required :billing_anchor_date, Time

        # @!attribute frequency
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency]
        required :frequency,
                 enum: -> { MetronomeSDK::ContractWithoutAmendments::UsageStatementSchedule::Frequency }

        # @!method initialize(billing_anchor_date:, frequency:)
        #   @param billing_anchor_date [Time] Contract usage statements follow a selected cadence based on this date.
        #
        #   @param frequency [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency]

        # @see MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule#frequency
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

      # @see MetronomeSDK::Models::ContractWithoutAmendments#prepaid_balance_threshold_configuration
      class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute commit
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit]
        required :commit,
                 -> { MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit }

        # @!attribute is_enabled
        #   When set to false, the contract will not be evaluated against the
        #   threshold_amount. Toggling to true will result an immediate evaluation,
        #   regardless of prior state.
        #
        #   @return [Boolean]
        required :is_enabled, MetronomeSDK::Internal::Type::Boolean

        # @!attribute payment_gate_config
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
        required :payment_gate_config,
                 -> {
                   MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig
                 }

        # @!attribute recharge_to_amount
        #   Specify the amount the balance should be recharged to.
        #
        #   @return [Float]
        required :recharge_to_amount, Float

        # @!attribute threshold_amount
        #   Specify the threshold amount for the contract. Each time the contract's prepaid
        #   balance lowers to this amount, a threshold charge will be initiated.
        #
        #   @return [Float]
        required :threshold_amount, Float

        # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration}
        #   for more details.
        #
        #   @param commit [MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit]
        #
        #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
        #
        #   @param payment_gate_config [MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
        #
        #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
        #
        #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's prepaid

        # @see MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration#commit
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

          # @!attribute specifiers
          #   List of filters that determine what kind of customer usage draws down a commit
          #   or credit. A customer's usage needs to meet the condition of at least one of the
          #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
          #   be used together with `applicable_product_ids` or `applicable_product_tags`.
          #
          #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::Specifier>, nil]
          optional :specifiers,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::Specifier]
                   }

          # @!method initialize(product_id:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil, specifiers: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit}
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
          #
          #   @param specifiers [Array<MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o

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
            #   {MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::Commit::Specifier}
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

        # @see MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration#payment_gate_config
        class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute payment_gate_type
          #   Gate access to the commit balance based on successful collection of payment.
          #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          #   facilitate payment using your own payment integration. Select NONE if you do not
          #   wish to payment gate the commit balance.
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
          required :payment_gate_type,
                   enum: -> {
                     MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                   }

          # @!attribute stripe_config
          #   Only applicable if using Stripe as your payment gateway through Metronome.
          #
          #   @return [MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
          optional :stripe_config,
                   -> {
                     MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                   }

          # @!attribute tax_type
          #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
          #   will default to NONE.
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
          optional :tax_type,
                   enum: -> {
                     MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                   }

          # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig}
          #   for more details.
          #
          #   @param payment_gate_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
          #
          #   @param stripe_config [MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
          #
          #   @param tax_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          #
          # @see MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
          module PaymentGateType
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            STRIPE = :STRIPE
            EXTERNAL = :EXTERNAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
          class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_type
            #   If left blank, will default to INVOICE
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
            required :payment_type,
                     enum: -> {
                       MetronomeSDK::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                     }

            # @!method initialize(payment_type:)
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @param payment_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

            # If left blank, will default to INVOICE
            #
            # @see MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
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
          # @see MetronomeSDK::Models::ContractWithoutAmendments::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#tax_type
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
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount]
        required :access_amount, -> { MetronomeSDK::ContractWithoutAmendments::RecurringCommit::AccessAmount }

        # @!attribute commit_duration
        #   The amount of time the created commits will be valid for
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration]
        required :commit_duration,
                 -> {
                   MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration
                 }

        # @!attribute priority
        #   Will be passed down to the individual commits
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product]
        required :product, -> { MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Product }

        # @!attribute rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType]
        required :rate_type, enum: -> { MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RateType }

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
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract, nil]
        optional :contract, -> { MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Contract }

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
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount, nil]
        optional :invoice_amount,
                 -> {
                   MetronomeSDK::ContractWithoutAmendments::RecurringCommit::InvoiceAmount
                 }

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
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration, nil]
        optional :proration, enum: -> { MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Proration }

        # @!attribute recurrence_frequency
        #   The frequency at which the recurring commits will be created. If not provided: -
        #   The commits will be created on the usage invoice frequency. If provided: - The
        #   period defined in the duration will correspond to this frequency. - Commits will
        #   be created aligned with the recurring commit's starting_at rather than the usage
        #   invoice dates.
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency, nil]
        optional :recurrence_frequency,
                 enum: -> { MetronomeSDK::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency }

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
        #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Specifier>, nil]
        optional :specifiers,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractWithoutAmendments::RecurringCommit::Specifier]
                 }

        # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit} for more
        #   details.
        #
        #   @param id [String]
        #
        #   @param access_amount [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount] The amount of commit to grant.
        #
        #   @param commit_duration [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration] The amount of time the created commits will be valid for
        #
        #   @param priority [Float] Will be passed down to the individual commits
        #
        #   @param product [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product]
        #
        #   @param rate_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
        #
        #   @param starting_at [Time] Determines the start time for the first commit
        #
        #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
        #
        #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
        #
        #   @param contract [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract]
        #
        #   @param description [String] Will be passed down to the individual commits
        #
        #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
        #
        #   @param invoice_amount [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
        #
        #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
        #
        #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
        #
        #   @param proration [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
        #
        #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
        #
        #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
        #
        #   @param specifiers [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o

        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit#access_amount
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

        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit#commit_duration
        class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit, nil]
          optional :unit,
                   enum: -> { MetronomeSDK::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit }

          # @!method initialize(value:, unit: nil)
          #   The amount of time the created commits will be valid for
          #
          #   @param value [Float]
          #   @param unit [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit]

          # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            PERIODS = :PERIODS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit#product
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
        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit#rate_type
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit#contract
        class Contract < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit#invoice_amount
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
        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit#proration
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
        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit#recurrence_frequency
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
          #   {MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Specifier}
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

      class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute access_amount
        #   The amount of commit to grant.
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount]
        required :access_amount, -> { MetronomeSDK::ContractWithoutAmendments::RecurringCredit::AccessAmount }

        # @!attribute commit_duration
        #   The amount of time the created commits will be valid for
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration]
        required :commit_duration,
                 -> {
                   MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration
                 }

        # @!attribute priority
        #   Will be passed down to the individual commits
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product]
        required :product, -> { MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Product }

        # @!attribute rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType]
        required :rate_type, enum: -> { MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RateType }

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
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract, nil]
        optional :contract, -> { MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Contract }

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
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration, nil]
        optional :proration, enum: -> { MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Proration }

        # @!attribute recurrence_frequency
        #   The frequency at which the recurring commits will be created. If not provided: -
        #   The commits will be created on the usage invoice frequency. If provided: - The
        #   period defined in the duration will correspond to this frequency. - Commits will
        #   be created aligned with the recurring commit's starting_at rather than the usage
        #   invoice dates.
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency, nil]
        optional :recurrence_frequency,
                 enum: -> { MetronomeSDK::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency }

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
        #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Specifier>, nil]
        optional :specifiers,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractWithoutAmendments::RecurringCredit::Specifier]
                 }

        # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit} for more
        #   details.
        #
        #   @param id [String]
        #
        #   @param access_amount [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount] The amount of commit to grant.
        #
        #   @param commit_duration [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration] The amount of time the created commits will be valid for
        #
        #   @param priority [Float] Will be passed down to the individual commits
        #
        #   @param product [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product]
        #
        #   @param rate_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
        #
        #   @param starting_at [Time] Determines the start time for the first commit
        #
        #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
        #
        #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
        #
        #   @param contract [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract]
        #
        #   @param description [String] Will be passed down to the individual commits
        #
        #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
        #
        #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
        #
        #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
        #
        #   @param proration [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
        #
        #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
        #
        #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
        #
        #   @param specifiers [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o

        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit#access_amount
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

        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit#commit_duration
        class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit, nil]
          optional :unit,
                   enum: -> { MetronomeSDK::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit }

          # @!method initialize(value:, unit: nil)
          #   The amount of time the created commits will be valid for
          #
          #   @param value [Float]
          #   @param unit [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit]

          # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            PERIODS = :PERIODS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit#product
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
        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit#rate_type
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit#contract
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
        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit#proration
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
        # @see MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit#recurrence_frequency
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
          #   {MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Specifier}
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

      class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType]
        required :reseller_type,
                 enum: -> { MetronomeSDK::ContractWithoutAmendments::ResellerRoyalty::ResellerType }

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
        #   @param reseller_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType]
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

        # @see MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty#reseller_type
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

      # Determines which scheduled and commit charges to consolidate onto the Contract's
      # usage invoice. The charge's `timestamp` must match the usage invoice's
      # `ending_before` date for consolidation to occur. This field cannot be modified
      # after a Contract has been created. If this field is omitted, charges will appear
      # on a separate invoice from usage charges.
      #
      # @see MetronomeSDK::Models::ContractWithoutAmendments#scheduled_charges_on_usage_invoices
      module ScheduledChargesOnUsageInvoices
        extend MetronomeSDK::Internal::Type::Enum

        ALL = :ALL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Models::ContractWithoutAmendments#spend_threshold_configuration
      class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute commit
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit]
        required :commit, -> { MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::Commit }

        # @!attribute is_enabled
        #   When set to false, the contract will not be evaluated against the
        #   threshold_amount. Toggling to true will result an immediate evaluation,
        #   regardless of prior state.
        #
        #   @return [Boolean]
        required :is_enabled, MetronomeSDK::Internal::Type::Boolean

        # @!attribute payment_gate_config
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig]
        required :payment_gate_config,
                 -> {
                   MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig
                 }

        # @!attribute threshold_amount
        #   Specify the threshold amount for the contract. Each time the contract's usage
        #   hits this amount, a threshold charge will be initiated.
        #
        #   @return [Float]
        required :threshold_amount, Float

        # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration}
        #   for more details.
        #
        #   @param commit [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit]
        #
        #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
        #
        #   @param payment_gate_config [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig]
        #
        #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

        # @see MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration#commit
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
          #   {MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit}
          #   for more details.
          #
          #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
          #
          #   @param description [String]
          #
          #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
        end

        # @see MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration#payment_gate_config
        class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute payment_gate_type
          #   Gate access to the commit balance based on successful collection of payment.
          #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          #   facilitate payment using your own payment integration. Select NONE if you do not
          #   wish to payment gate the commit balance.
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
          required :payment_gate_type,
                   enum: -> {
                     MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                   }

          # @!attribute stripe_config
          #   Only applicable if using Stripe as your payment gateway through Metronome.
          #
          #   @return [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
          optional :stripe_config,
                   -> {
                     MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                   }

          # @!attribute tax_type
          #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
          #   will default to NONE.
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
          optional :tax_type,
                   enum: -> {
                     MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType
                   }

          # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig}
          #   for more details.
          #
          #   @param payment_gate_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
          #
          #   @param stripe_config [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
          #
          #   @param tax_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          #
          # @see MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
          module PaymentGateType
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            STRIPE = :STRIPE
            EXTERNAL = :EXTERNAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig#stripe_config
          class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_type
            #   If left blank, will default to INVOICE
            #
            #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
            required :payment_type,
                     enum: -> {
                       MetronomeSDK::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                     }

            # @!method initialize(payment_type:)
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @param payment_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

            # If left blank, will default to INVOICE
            #
            # @see MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
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
          # @see MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig#tax_type
          module TaxType
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            STRIPE = :STRIPE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see MetronomeSDK::Models::ContractWithoutAmendments#usage_filter
      class UsageFilter < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute current
        #
        #   @return [MetronomeSDK::Models::BaseUsageFilter, nil]
        required :current, -> { MetronomeSDK::BaseUsageFilter }, nil?: true

        # @!attribute initial
        #
        #   @return [MetronomeSDK::Models::BaseUsageFilter]
        required :initial, -> { MetronomeSDK::BaseUsageFilter }

        # @!attribute updates
        #
        #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update>]
        required :updates,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractWithoutAmendments::UsageFilter::Update]
                 }

        # @!method initialize(current:, initial:, updates:)
        #   @param current [MetronomeSDK::Models::BaseUsageFilter, nil]
        #   @param initial [MetronomeSDK::Models::BaseUsageFilter]
        #   @param updates [Array<MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update>]

        class Update < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute group_key
          #
          #   @return [String]
          required :group_key, String

          # @!attribute group_values
          #
          #   @return [Array<String>]
          required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!method initialize(group_key:, group_values:, starting_at:)
          #   @param group_key [String]
          #   @param group_values [Array<String>]
          #   @param starting_at [Time]
        end
      end
    end
  end
end
