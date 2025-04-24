# frozen_string_literal: true

module MetronomeSDK
  module Models
    class ContractWithoutAmendments < MetronomeSDK::BaseModel
      # @!attribute commits
      #
      #   @return [Array<MetronomeSDK::Models::Commit>]
      required :commits, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Commit] }

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
      required :overrides, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Override] }

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
      #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::Transition>]
      required :transitions,
               -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ContractWithoutAmendments::Transition] }

      # @!attribute usage_statement_schedule
      #
      #   @return [MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule]
      required :usage_statement_schedule,
               -> { MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule }

      # @!attribute [r] credit_balance_threshold_configuration
      #
      #   @return [MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration, nil]
      optional :credit_balance_threshold_configuration,
               -> { MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration }

      # @!parse
      #   # @return [MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration]
      #   attr_writer :credit_balance_threshold_configuration

      # @!attribute [r] credits
      #
      #   @return [Array<MetronomeSDK::Models::Credit>, nil]
      optional :credits, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Credit] }

      # @!parse
      #   # @return [Array<MetronomeSDK::Models::Credit>]
      #   attr_writer :credits

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
      #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit>, nil]
      optional :recurring_commits,
               -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit] }

      # @!parse
      #   # @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit>]
      #   attr_writer :recurring_commits

      # @!attribute [r] recurring_credits
      #
      #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit>, nil]
      optional :recurring_credits,
               -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit] }

      # @!parse
      #   # @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit>]
      #   attr_writer :recurring_credits

      # @!attribute [r] reseller_royalties
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty>, nil]
      optional :reseller_royalties,
               -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty] }

      # @!parse
      #   # @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty>]
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
      #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices, nil]
      optional :scheduled_charges_on_usage_invoices,
               enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices }

      # @!parse
      #   # @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices]
      #   attr_writer :scheduled_charges_on_usage_invoices

      # @!attribute [r] spend_threshold_configuration
      #
      #   @return [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration, nil]
      optional :spend_threshold_configuration,
               -> { MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration }

      # @!parse
      #   # @return [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration]
      #   attr_writer :spend_threshold_configuration

      # @!attribute [r] total_contract_value
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Float, nil]
      optional :total_contract_value, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :total_contract_value

      # @!attribute [r] usage_filter
      #
      #   @return [MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter, nil]
      optional :usage_filter, -> { MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter }

      # @!parse
      #   # @return [MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter]
      #   attr_writer :usage_filter

      # @!parse
      #   # @param commits [Array<MetronomeSDK::Models::Commit>]
      #   # @param created_at [Time]
      #   # @param created_by [String]
      #   # @param overrides [Array<MetronomeSDK::Models::Override>]
      #   # @param scheduled_charges [Array<MetronomeSDK::Models::ScheduledCharge>]
      #   # @param starting_at [Time]
      #   # @param transitions [Array<MetronomeSDK::Models::ContractWithoutAmendments::Transition>]
      #   # @param usage_statement_schedule [MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule]
      #   # @param credit_balance_threshold_configuration [MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration]
      #   # @param credits [Array<MetronomeSDK::Models::Credit>]
      #   # @param discounts [Array<MetronomeSDK::Models::Discount>]
      #   # @param ending_before [Time]
      #   # @param name [String]
      #   # @param net_payment_terms_days [Float]
      #   # @param netsuite_sales_order_id [String]
      #   # @param professional_services [Array<MetronomeSDK::Models::ProService>]
      #   # @param rate_card_id [String]
      #   # @param recurring_commits [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit>]
      #   # @param recurring_credits [Array<MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit>]
      #   # @param reseller_royalties [Array<MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty>]
      #   # @param salesforce_opportunity_id [String]
      #   # @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices]
      #   # @param spend_threshold_configuration [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration]
      #   # @param total_contract_value [Float]
      #   # @param usage_filter [MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter]
      #   #
      #   def initialize(
      #     commits:,
      #     created_at:,
      #     created_by:,
      #     overrides:,
      #     scheduled_charges:,
      #     starting_at:,
      #     transitions:,
      #     usage_statement_schedule:,
      #     credit_balance_threshold_configuration: nil,
      #     credits: nil,
      #     discounts: nil,
      #     ending_before: nil,
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
      #     usage_filter: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

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
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type]
        required :type, enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type }

        # @!parse
        #   # @param from_contract_id [String]
        #   # @param to_contract_id [String]
        #   # @param type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type]
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

      class UsageStatementSchedule < MetronomeSDK::BaseModel
        # @!attribute billing_anchor_date
        #   Contract usage statements follow a selected cadence based on this date.
        #
        #   @return [Time]
        required :billing_anchor_date, Time

        # @!attribute frequency
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency]
        required :frequency,
                 enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency }

        # @!parse
        #   # @param billing_anchor_date [Time]
        #   # @param frequency [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency]
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
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit]
        required :commit,
                 -> { MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit }

        # @!attribute is_enabled
        #   When set to false, the contract will not be evaluated against the
        #     threshold_amount. Toggling to true will result an immediate evaluation,
        #     regardless of prior state.
        #
        #   @return [Boolean]
        required :is_enabled, MetronomeSDK::BooleanModel

        # @!attribute payment_gate_config
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig]
        required :payment_gate_config,
                 -> { MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig }

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
        #   # @param commit [MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit]
        #   # @param is_enabled [Boolean]
        #   # @param payment_gate_config [MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig]
        #   # @param recharge_to_amount [Float]
        #   # @param threshold_amount [Float]
        #   #
        #   def initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:, **) = super

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

        class PaymentGateConfig < MetronomeSDK::BaseModel
          # @!attribute payment_gate_type
          #   Gate access to the commit balance based on successful collection of payment.
          #     Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          #     facilitate payment using your own payment integration. Select NONE if you do not
          #     wish to payment gate the commit balance.
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
          required :payment_gate_type,
                   enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType }

          # @!attribute [r] stripe_config
          #   Only applicable if using Stripe as your payment gateway through Metronome.
          #
          #   @return [MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
          optional :stripe_config,
                   -> { MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig }

          # @!parse
          #   # @return [MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig]
          #   attr_writer :stripe_config

          # @!attribute [r] tax_type
          #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          #     not wish Metronome to calculate tax on your behalf. Leaving this field blank
          #     will default to NONE.
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
          optional :tax_type,
                   enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType]
          #   attr_writer :tax_type

          # @!parse
          #   # @param payment_gate_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
          #   # @param stripe_config [MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig]
          #   # @param tax_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType]
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
            #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
            required :payment_type,
                     enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

            # @!parse
            #   # Only applicable if using Stripe as your payment gateway through Metronome.
            #   #
            #   # @param payment_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
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

      class RecurringCommit < MetronomeSDK::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute access_amount
        #   The amount of commit to grant.
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount]
        required :access_amount,
                 -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount }

        # @!attribute commit_duration
        #   The amount of time the created commits will be valid for
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration]
        required :commit_duration,
                 -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration }

        # @!attribute priority
        #   Will be passed down to the individual commits
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product]
        required :product, -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product }

        # @!attribute rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType]
        required :rate_type,
                 enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType }

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
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract, nil]
        optional :contract, -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract }

        # @!parse
        #   # @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract]
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
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount, nil]
        optional :invoice_amount,
                 -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount }

        # @!parse
        #   # @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount]
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
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration, nil]
        optional :proration,
                 enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration }

        # @!parse
        #   # @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration]
        #   attr_writer :proration

        # @!attribute [r] recurrence_frequency
        #   The frequency at which the recurring commits will be created. If not provided: -
        #     The commits will be created on the usage invoice frequency. If provided: - The
        #     period defined in the duration will correspond to this frequency. - Commits will
        #     be created aligned with the recurring commit's start_date rather than the usage
        #     invoice dates.
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency, nil]
        optional :recurrence_frequency,
                 enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency }

        # @!parse
        #   # @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency]
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
        #   # @param access_amount [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount]
        #   # @param commit_duration [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration]
        #   # @param priority [Float]
        #   # @param product [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product]
        #   # @param rate_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType]
        #   # @param starting_at [Time]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param contract [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract]
        #   # @param description [String]
        #   # @param ending_before [Time]
        #   # @param invoice_amount [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
        #   # @param proration [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration]
        #   # @param recurrence_frequency [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency]
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
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit, nil]
          optional :unit,
                   enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit]
          #   attr_writer :unit

          # @!parse
          #   # The amount of time the created commits will be valid for
          #   #
          #   # @param value [Float]
          #   # @param unit [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit]
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
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount]
        required :access_amount,
                 -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount }

        # @!attribute commit_duration
        #   The amount of time the created commits will be valid for
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration]
        required :commit_duration,
                 -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration }

        # @!attribute priority
        #   Will be passed down to the individual commits
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product]
        required :product, -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product }

        # @!attribute rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType]
        required :rate_type,
                 enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType }

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
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract, nil]
        optional :contract, -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract }

        # @!parse
        #   # @return [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract]
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
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration, nil]
        optional :proration,
                 enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration }

        # @!parse
        #   # @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration]
        #   attr_writer :proration

        # @!attribute [r] recurrence_frequency
        #   The frequency at which the recurring commits will be created. If not provided: -
        #     The commits will be created on the usage invoice frequency. If provided: - The
        #     period defined in the duration will correspond to this frequency. - Commits will
        #     be created aligned with the recurring commit's start_date rather than the usage
        #     invoice dates.
        #
        #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency, nil]
        optional :recurrence_frequency,
                 enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency }

        # @!parse
        #   # @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency]
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
        #   # @param access_amount [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount]
        #   # @param commit_duration [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration]
        #   # @param priority [Float]
        #   # @param product [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product]
        #   # @param rate_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType]
        #   # @param starting_at [Time]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param contract [MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract]
        #   # @param description [String]
        #   # @param ending_before [Time]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
        #   # @param proration [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration]
        #   # @param recurrence_frequency [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency]
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
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit, nil]
          optional :unit,
                   enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit]
          #   attr_writer :unit

          # @!parse
          #   # The amount of time the created commits will be valid for
          #   #
          #   # @param value [Float]
          #   # @param unit [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit]
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
                 enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType }

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
        #   # @param reseller_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType]
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
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit]
        required :commit,
                 -> { MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit }

        # @!attribute is_enabled
        #   When set to false, the contract will not be evaluated against the
        #     threshold_amount. Toggling to true will result an immediate evaluation,
        #     regardless of prior state.
        #
        #   @return [Boolean]
        required :is_enabled, MetronomeSDK::BooleanModel

        # @!attribute payment_gate_config
        #
        #   @return [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig]
        required :payment_gate_config,
                 -> { MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig }

        # @!attribute threshold_amount
        #   Specify the threshold amount for the contract. Each time the contract's usage
        #     hits this amount, a threshold charge will be initiated.
        #
        #   @return [Float]
        required :threshold_amount, Float

        # @!parse
        #   # @param commit [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit]
        #   # @param is_enabled [Boolean]
        #   # @param payment_gate_config [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig]
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
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
          required :payment_gate_type,
                   enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

          # @!attribute [r] stripe_config
          #   Only applicable if using Stripe as your payment gateway through Metronome.
          #
          #   @return [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
          optional :stripe_config,
                   -> { MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

          # @!parse
          #   # @return [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig]
          #   attr_writer :stripe_config

          # @!attribute [r] tax_type
          #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          #     not wish Metronome to calculate tax on your behalf. Leaving this field blank
          #     will default to NONE.
          #
          #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
          optional :tax_type,
                   enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType]
          #   attr_writer :tax_type

          # @!parse
          #   # @param payment_gate_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
          #   # @param stripe_config [MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig]
          #   # @param tax_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType]
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
            #   @return [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
            required :payment_type,
                     enum: -> { MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

            # @!parse
            #   # Only applicable if using Stripe as your payment gateway through Metronome.
            #   #
            #   # @param payment_type [Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
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

      class UsageFilter < MetronomeSDK::BaseModel
        # @!attribute current
        #
        #   @return [MetronomeSDK::Models::BaseUsageFilter, nil]
        required :current, -> { MetronomeSDK::Models::BaseUsageFilter }, nil?: true

        # @!attribute initial
        #
        #   @return [MetronomeSDK::Models::BaseUsageFilter]
        required :initial, -> { MetronomeSDK::Models::BaseUsageFilter }

        # @!attribute updates
        #
        #   @return [Array<MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update>]
        required :updates,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update] }

        # @!parse
        #   # @param current [MetronomeSDK::Models::BaseUsageFilter, nil]
        #   # @param initial [MetronomeSDK::Models::BaseUsageFilter]
        #   # @param updates [Array<MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update>]
        #   #
        #   def initialize(current:, initial:, updates:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Update < MetronomeSDK::BaseModel
          # @!attribute group_key
          #
          #   @return [String]
          required :group_key, String

          # @!attribute group_values
          #
          #   @return [Array<String>]
          required :group_values, MetronomeSDK::ArrayOf[String]

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!parse
          #   # @param group_key [String]
          #   # @param group_values [Array<String>]
          #   # @param starting_at [Time]
          #   #
          #   def initialize(group_key:, group_values:, starting_at:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
