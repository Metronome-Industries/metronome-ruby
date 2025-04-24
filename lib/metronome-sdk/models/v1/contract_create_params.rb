# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractCreateParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute starting_at
        #   inclusive contract start time
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [r] billing_provider_configuration
        #   The billing provider configuration associated with a contract.
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration, nil]
        optional :billing_provider_configuration,
                 -> { MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration }

        # @!parse
        #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration]
        #   attr_writer :billing_provider_configuration

        # @!attribute [r] commits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit>, nil]
        optional :commits, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Commit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit>]
        #   attr_writer :commits

        # @!attribute [r] credit_balance_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration, nil]
        optional :credit_balance_threshold_configuration,
                 -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration }

        # @!parse
        #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration]
        #   attr_writer :credit_balance_threshold_configuration

        # @!attribute [r] credits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit>, nil]
        optional :credits, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Credit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit>]
        #   attr_writer :credits

        # @!attribute [r] custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :custom_fields

        # @!attribute [r] discounts
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount>, nil]
        optional :discounts,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Discount] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount>]
        #   attr_writer :discounts

        # @!attribute [r] ending_before
        #   exclusive contract end time
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
        #     first. If tiered overrides are used, prioritization must be explicit.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::MultiplierOverridePrioritization, nil]
        optional :multiplier_override_prioritization,
                 enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::MultiplierOverridePrioritization }

        # @!parse
        #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::MultiplierOverridePrioritization]
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

        # @!attribute [r] overrides
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override>, nil]
        optional :overrides,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Override] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override>]
        #   attr_writer :overrides

        # @!attribute [r] professional_services
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ProfessionalService>, nil]
        optional :professional_services,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::ProfessionalService] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ProfessionalService>]
        #   attr_writer :professional_services

        # @!attribute [r] rate_card_alias
        #   Selects the rate card linked to the specified alias as of the contract's start
        #     date.
        #
        #   @return [String, nil]
        optional :rate_card_alias, String

        # @!parse
        #   # @return [String]
        #   attr_writer :rate_card_alias

        # @!attribute [r] rate_card_id
        #
        #   @return [String, nil]
        optional :rate_card_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :rate_card_id

        # @!attribute [r] recurring_commits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit>, nil]
        optional :recurring_commits,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit>]
        #   attr_writer :recurring_commits

        # @!attribute [r] recurring_credits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit>, nil]
        optional :recurring_credits,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit>]
        #   attr_writer :recurring_credits

        # @!attribute [r] reseller_royalties
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty>, nil]
        optional :reseller_royalties,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty>]
        #   attr_writer :reseller_royalties

        # @!attribute [r] salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :salesforce_opportunity_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :salesforce_opportunity_id

        # @!attribute [r] scheduled_charges
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge>, nil]
        optional :scheduled_charges,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge>]
        #   attr_writer :scheduled_charges

        # @!attribute [r] scheduled_charges_on_usage_invoices
        #   Determines which scheduled and commit charges to consolidate onto the Contract's
        #     usage invoice. The charge's `timestamp` must match the usage invoice's
        #     `ending_before` date for consolidation to occur. This field cannot be modified
        #     after a Contract has been created. If this field is omitted, charges will appear
        #     on a separate invoice from usage charges.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices, nil]
        optional :scheduled_charges_on_usage_invoices,
                 enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices }

        # @!parse
        #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices]
        #   attr_writer :scheduled_charges_on_usage_invoices

        # @!attribute [r] spend_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration, nil]
        optional :spend_threshold_configuration,
                 -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration }

        # @!parse
        #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration]
        #   attr_writer :spend_threshold_configuration

        # @!attribute [r] total_contract_value
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Float, nil]
        optional :total_contract_value, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :total_contract_value

        # @!attribute [r] transition
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Transition, nil]
        optional :transition, -> { MetronomeSDK::Models::V1::ContractCreateParams::Transition }

        # @!parse
        #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::Transition]
        #   attr_writer :transition

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

        # @!attribute [r] usage_filter
        #
        #   @return [MetronomeSDK::Models::BaseUsageFilter, nil]
        optional :usage_filter, -> { MetronomeSDK::Models::BaseUsageFilter }

        # @!parse
        #   # @return [MetronomeSDK::Models::BaseUsageFilter]
        #   attr_writer :usage_filter

        # @!attribute [r] usage_statement_schedule
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule, nil]
        optional :usage_statement_schedule,
                 -> { MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule }

        # @!parse
        #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule]
        #   attr_writer :usage_statement_schedule

        # @!parse
        #   # @param customer_id [String]
        #   # @param starting_at [Time]
        #   # @param billing_provider_configuration [MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration]
        #   # @param commits [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit>]
        #   # @param credit_balance_threshold_configuration [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration]
        #   # @param credits [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit>]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param discounts [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount>]
        #   # @param ending_before [Time]
        #   # @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::MultiplierOverridePrioritization]
        #   # @param name [String]
        #   # @param net_payment_terms_days [Float]
        #   # @param netsuite_sales_order_id [String]
        #   # @param overrides [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override>]
        #   # @param professional_services [Array<MetronomeSDK::Models::V1::ContractCreateParams::ProfessionalService>]
        #   # @param rate_card_alias [String]
        #   # @param rate_card_id [String]
        #   # @param recurring_commits [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit>]
        #   # @param recurring_credits [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit>]
        #   # @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty>]
        #   # @param salesforce_opportunity_id [String]
        #   # @param scheduled_charges [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge>]
        #   # @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices]
        #   # @param spend_threshold_configuration [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration]
        #   # @param total_contract_value [Float]
        #   # @param transition [MetronomeSDK::Models::V1::ContractCreateParams::Transition]
        #   # @param uniqueness_key [String]
        #   # @param usage_filter [MetronomeSDK::Models::BaseUsageFilter]
        #   # @param usage_statement_schedule [MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     customer_id:,
        #     starting_at:,
        #     billing_provider_configuration: nil,
        #     commits: nil,
        #     credit_balance_threshold_configuration: nil,
        #     credits: nil,
        #     custom_fields: nil,
        #     discounts: nil,
        #     ending_before: nil,
        #     multiplier_override_prioritization: nil,
        #     name: nil,
        #     net_payment_terms_days: nil,
        #     netsuite_sales_order_id: nil,
        #     overrides: nil,
        #     professional_services: nil,
        #     rate_card_alias: nil,
        #     rate_card_id: nil,
        #     recurring_commits: nil,
        #     recurring_credits: nil,
        #     reseller_royalties: nil,
        #     salesforce_opportunity_id: nil,
        #     scheduled_charges: nil,
        #     scheduled_charges_on_usage_invoices: nil,
        #     spend_threshold_configuration: nil,
        #     total_contract_value: nil,
        #     transition: nil,
        #     uniqueness_key: nil,
        #     usage_filter: nil,
        #     usage_statement_schedule: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class BillingProviderConfiguration < MetronomeSDK::BaseModel
          # @!attribute [r] billing_provider
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider, nil]
          optional :billing_provider,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider]
          #   attr_writer :billing_provider

          # @!attribute [r] billing_provider_configuration_id
          #   The Metronome ID of the billing provider configuration
          #
          #   @return [String, nil]
          optional :billing_provider_configuration_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :billing_provider_configuration_id

          # @!attribute [r] delivery_method
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod, nil]
          optional :delivery_method,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod]
          #   attr_writer :delivery_method

          # @!parse
          #   # The billing provider configuration associated with a contract.
          #   #
          #   # @param billing_provider [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider]
          #   # @param billing_provider_configuration_id [String]
          #   # @param delivery_method [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod]
          #   #
          #   def initialize(billing_provider: nil, billing_provider_configuration_id: nil, delivery_method: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case billing_provider
          # in :aws_marketplace
          #   # ...
          # in :azure_marketplace
          #   # ...
          # in :gcp_marketplace
          #   # ...
          # in :stripe
          #   # ...
          # in :netsuite
          #   # ...
          # end
          # ```
          class BillingProvider < MetronomeSDK::Enum
            AWS_MARKETPLACE = :aws_marketplace
            AZURE_MARKETPLACE = :azure_marketplace
            GCP_MARKETPLACE = :gcp_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite

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

        class Commit < MetronomeSDK::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::Type]
          required :type, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::Type }

          # @!attribute [r] access_schedule
          #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          #     commits only one schedule item is allowed and amount must match invoice_schedule
          #     total.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule]
          #   attr_writer :access_schedule

          # @!attribute [r] amount
          #   (DEPRECATED) Use access_schedule and invoice_schedule instead.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :amount

          # @!attribute [r] applicable_product_ids
          #   Which products the commit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_ids

          # @!attribute [r] applicable_product_tags
          #   Which tags the commit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_tags

          # @!attribute [r] custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :custom_fields

          # @!attribute [r] description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

          # @!parse
          #   # @return [String]
          #   attr_writer :description

          # @!attribute [r] invoice_schedule
          #   Required for "POSTPAID" commits: the true up invoice will be generated at this
          #     time and only one schedule item is allowed; the total must match access_schedule
          #     amount. Optional for "PREPAID" commits: if not provided, this will be a
          #     "complimentary" commit with no invoice.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule, nil]
          optional :invoice_schedule, -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule]
          #   attr_writer :invoice_schedule

          # @!attribute [r] name
          #   displayed on invoices
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

          # @!attribute [r] payment_gate_config
          #   optionally payment gate this commit
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig, nil]
          optional :payment_gate_config,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig]
          #   attr_writer :payment_gate_config

          # @!attribute [r] priority
          #   If multiple commits are applicable, the one with the lower priority will apply
          #     first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :priority

          # @!attribute [r] rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::RateType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::RateType]
          #   attr_writer :rate_type

          # @!attribute [r] rollover_fraction
          #   Fraction of unused segments that will be rolled over. Must be between 0 and 1.
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :rollover_fraction

          # @!attribute [r] temporary_id
          #   A temporary ID for the commit that can be used to reference the commit for
          #     commit specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :temporary_id

          # @!parse
          #   # @param product_id [String]
          #   # @param type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::Type]
          #   # @param access_schedule [MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule]
          #   # @param amount [Float]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param description [String]
          #   # @param invoice_schedule [MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   # @param payment_gate_config [MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig]
          #   # @param priority [Float]
          #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::RateType]
          #   # @param rollover_fraction [Float]
          #   # @param temporary_id [String]
          #   #
          #   def initialize(
          #     product_id:,
          #     type:,
          #     access_schedule: nil,
          #     amount: nil,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     custom_fields: nil,
          #     description: nil,
          #     invoice_schedule: nil,
          #     name: nil,
          #     netsuite_sales_order_id: nil,
          #     payment_gate_config: nil,
          #     priority: nil,
          #     rate_type: nil,
          #     rollover_fraction: nil,
          #     temporary_id: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

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

          class AccessSchedule < MetronomeSDK::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule::ScheduleItem] }

            # @!attribute [r] credit_type_id
            #   Defaults to USD (cents) if not passed
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!parse
            #   # Required: Schedule for distributing the commit to the customer. For "POSTPAID"
            #   #   commits only one schedule item is allowed and amount must match invoice_schedule
            #   #   total.
            #   #
            #   # @param schedule_items [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule::ScheduleItem>]
            #   # @param credit_type_id [String]
            #   #
            #   def initialize(schedule_items:, credit_type_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class ScheduleItem < MetronomeSDK::BaseModel
              # @!attribute amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive)
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute starting_at
              #   RFC 3339 timestamp (inclusive)
              #
              #   @return [Time]
              required :starting_at, Time

              # @!parse
              #   # @param amount [Float]
              #   # @param ending_before [Time]
              #   # @param starting_at [Time]
              #   #
              #   def initialize(amount:, ending_before:, starting_at:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end

          class InvoiceSchedule < MetronomeSDK::BaseModel
            # @!attribute [r] credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!attribute [r] recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #     amount. If amount is sent, the unit price is assumed to be the amount and
            #     quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule]
            #   attr_writer :recurring_schedule

            # @!attribute [r] schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem>]
            #   attr_writer :schedule_items

            # @!parse
            #   # Required for "POSTPAID" commits: the true up invoice will be generated at this
            #   #   time and only one schedule item is allowed; the total must match access_schedule
            #   #   amount. Optional for "PREPAID" commits: if not provided, this will be a
            #   #   "complimentary" commit with no invoice.
            #   #
            #   # @param credit_type_id [String]
            #   # @param recurring_schedule [MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule]
            #   # @param schedule_items [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem>]
            #   #
            #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class RecurringSchedule < MetronomeSDK::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency }

              # @!attribute starting_at
              #   RFC 3339 timestamp (inclusive).
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # Enter the unit price and quantity for the charge or instead only send the
              #   #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   #   quantity is inferred to be 1.
              #   #
              #   # @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              #   # @param ending_before [Time]
              #   # @param frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
              #   # @param starting_at [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(
              #     amount_distribution:,
              #     ending_before:,
              #     frequency:,
              #     starting_at:,
              #     amount: nil,
              #     quantity: nil,
              #     unit_price: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case amount_distribution
              # in :DIVIDED
              #   # ...
              # in :DIVIDED_ROUNDED
              #   # ...
              # in :EACH
              #   # ...
              # end
              # ```
              class AmountDistribution < MetronomeSDK::Enum
                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

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
              # case frequency
              # in :MONTHLY
              #   # ...
              # in :QUARTERLY
              #   # ...
              # in :SEMI_ANNUAL
              #   # ...
              # in :ANNUAL
              #   # ...
              # end
              # ```
              class Frequency < MetronomeSDK::Enum
                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              # @!attribute timestamp
              #   timestamp of the scheduled event
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # @param timestamp [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end

          class PaymentGateConfig < MetronomeSDK::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #     Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #     facilitate payment using your own payment integration. Select NONE if you do not
            #     wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType }

            # @!attribute [r] stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig]
            #   attr_writer :stripe_config

            # @!attribute [r] tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #     not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #     will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType]
            #   attr_writer :tax_type

            # @!parse
            #   # optionally payment gate this commit
            #   #
            #   # @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType]
            #   # @param stripe_config [MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig]
            #   # @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType]
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
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType }

              # @!parse
              #   # Only applicable if using Stripe as your payment gateway through Metronome.
              #   #
              #   # @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType]
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
        end

        class CreditBalanceThresholdConfiguration < MetronomeSDK::BaseModel
          # @!attribute commit
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::Commit]
          required :commit,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::Commit }

          # @!attribute is_enabled
          #   When set to false, the contract will not be evaluated against the
          #     threshold_amount. Toggling to true will result an immediate evaluation,
          #     regardless of prior state.
          #
          #   @return [Boolean]
          required :is_enabled, MetronomeSDK::BooleanModel

          # @!attribute payment_gate_config
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig]
          required :payment_gate_config,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig }

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
          #   # @param commit [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::Commit]
          #   # @param is_enabled [Boolean]
          #   # @param payment_gate_config [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig]
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
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType }

            # @!attribute [r] stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig]
            #   attr_writer :stripe_config

            # @!attribute [r] tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #     not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #     will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType]
            #   attr_writer :tax_type

            # @!parse
            #   # @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            #   # @param stripe_config [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig]
            #   # @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType]
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
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

              # @!parse
              #   # Only applicable if using Stripe as your payment gateway through Metronome.
              #   #
              #   # @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
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

        class Credit < MetronomeSDK::BaseModel
          # @!attribute access_schedule
          #   Schedule for distributing the credit to the customer.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule]
          required :access_schedule, -> { MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule }

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute [r] applicable_product_ids
          #   Which products the credit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the credit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_ids

          # @!attribute [r] applicable_product_tags
          #   Which tags the credit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the credit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_tags

          # @!attribute [r] custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :custom_fields

          # @!attribute [r] description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

          # @!parse
          #   # @return [String]
          #   attr_writer :description

          # @!attribute [r] name
          #   displayed on invoices
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
          #   If multiple credits are applicable, the one with the lower priority will apply
          #     first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :priority

          # @!attribute [r] rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Credit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Credit::RateType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Credit::RateType]
          #   attr_writer :rate_type

          # @!parse
          #   # @param access_schedule [MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule]
          #   # @param product_id [String]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param description [String]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   # @param priority [Float]
          #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Credit::RateType]
          #   #
          #   def initialize(
          #     access_schedule:,
          #     product_id:,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     custom_fields: nil,
          #     description: nil,
          #     name: nil,
          #     netsuite_sales_order_id: nil,
          #     priority: nil,
          #     rate_type: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class AccessSchedule < MetronomeSDK::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule::ScheduleItem] }

            # @!attribute [r] credit_type_id
            #   Defaults to USD (cents) if not passed
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!parse
            #   # Schedule for distributing the credit to the customer.
            #   #
            #   # @param schedule_items [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule::ScheduleItem>]
            #   # @param credit_type_id [String]
            #   #
            #   def initialize(schedule_items:, credit_type_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class ScheduleItem < MetronomeSDK::BaseModel
              # @!attribute amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive)
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute starting_at
              #   RFC 3339 timestamp (inclusive)
              #
              #   @return [Time]
              required :starting_at, Time

              # @!parse
              #   # @param amount [Float]
              #   # @param ending_before [Time]
              #   # @param starting_at [Time]
              #   #
              #   def initialize(amount:, ending_before:, starting_at:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
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
        end

        class Discount < MetronomeSDK::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute schedule
          #   Must provide either schedule_items or recurring_schedule.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule]
          required :schedule, -> { MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule }

          # @!attribute [r] custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :custom_fields

          # @!attribute [r] name
          #   displayed on invoices
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

          # @!parse
          #   # @param product_id [String]
          #   # @param schedule [MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   #
          #   def initialize(product_id:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class Schedule < MetronomeSDK::BaseModel
            # @!attribute [r] credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!attribute [r] recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #     amount. If amount is sent, the unit price is assumed to be the amount and
            #     quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule]
            #   attr_writer :recurring_schedule

            # @!attribute [r] schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::ScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::ScheduleItem>]
            #   attr_writer :schedule_items

            # @!parse
            #   # Must provide either schedule_items or recurring_schedule.
            #   #
            #   # @param credit_type_id [String]
            #   # @param recurring_schedule [MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule]
            #   # @param schedule_items [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::ScheduleItem>]
            #   #
            #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class RecurringSchedule < MetronomeSDK::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency }

              # @!attribute starting_at
              #   RFC 3339 timestamp (inclusive).
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # Enter the unit price and quantity for the charge or instead only send the
              #   #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   #   quantity is inferred to be 1.
              #   #
              #   # @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
              #   # @param ending_before [Time]
              #   # @param frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency]
              #   # @param starting_at [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(
              #     amount_distribution:,
              #     ending_before:,
              #     frequency:,
              #     starting_at:,
              #     amount: nil,
              #     quantity: nil,
              #     unit_price: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case amount_distribution
              # in :DIVIDED
              #   # ...
              # in :DIVIDED_ROUNDED
              #   # ...
              # in :EACH
              #   # ...
              # end
              # ```
              class AmountDistribution < MetronomeSDK::Enum
                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

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
              # case frequency
              # in :MONTHLY
              #   # ...
              # in :QUARTERLY
              #   # ...
              # in :SEMI_ANNUAL
              #   # ...
              # in :ANNUAL
              #   # ...
              # end
              # ```
              class Frequency < MetronomeSDK::Enum
                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              # @!attribute timestamp
              #   timestamp of the scheduled event
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # @param timestamp [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end

        # @abstract
        #
        # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
        #   prices automatically. EXPLICIT prioritization requires specifying priorities for
        #   each multiplier; the one with the lowest priority value will be prioritized
        #   first. If tiered overrides are used, prioritization must be explicit.
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

        class Override < MetronomeSDK::BaseModel
          # @!attribute starting_at
          #   RFC 3339 timestamp indicating when the override will start applying (inclusive)
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute [r] applicable_product_tags
          #   tags identifying products whose rates are being overridden. Cannot be used in
          #     conjunction with override_specifiers.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_tags

          # @!attribute [r] ending_before
          #   RFC 3339 timestamp indicating when the override will stop applying (exclusive)
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
          #   Indicates whether the override should only apply to commits. Defaults to
          #     `false`. If `true`, you can specify relevant commits in `override_specifiers` by
          #     passing `commit_ids`. if you do not specify `commit_ids`, then the override will
          #     apply when consuming any prepaid or postpaid commit.
          #
          #   @return [Boolean, nil]
          optional :is_commit_specific, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_commit_specific

          # @!attribute [r] multiplier
          #   Required for MULTIPLIER type. Must be >=0.
          #
          #   @return [Float, nil]
          optional :multiplier, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :multiplier

          # @!attribute [r] override_specifiers
          #   Cannot be used in conjunction with product_id or applicable_product_tags. If
          #     provided, the override will apply to all products with the specified specifiers.
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override::OverrideSpecifier>, nil]
          optional :override_specifiers,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Override::OverrideSpecifier] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override::OverrideSpecifier>]
          #   attr_writer :override_specifiers

          # @!attribute [r] overwrite_rate
          #   Required for OVERWRITE type.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate, nil]
          optional :overwrite_rate, -> { MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate]
          #   attr_writer :overwrite_rate

          # @!attribute [r] priority
          #   Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
          #     Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered
          #     and multiplier overrides are prioritized by their priority value (lowest first).
          #     Must be > 0.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :priority

          # @!attribute [r] product_id
          #   ID of the product whose rate is being overridden. Cannot be used in conjunction
          #     with override_specifiers.
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :product_id

          # @!attribute [r] target
          #   Indicates whether the override applies to commit rates or list rates. Can only
          #     be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          #     `"LIST_RATE"`.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::Target, nil]
          optional :target, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Override::Target }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::Target]
          #   attr_writer :target

          # @!attribute [r] tiers
          #   Required for TIERED type. Must have at least one tier.
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override::Tier>, nil]
          optional :tiers,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Override::Tier] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override::Tier>]
          #   attr_writer :tiers

          # @!attribute [r] type
          #   Overwrites are prioritized over multipliers and tiered overrides.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::Type, nil]
          optional :type, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Override::Type }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::Type]
          #   attr_writer :type

          # @!parse
          #   # @param starting_at [Time]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param ending_before [Time]
          #   # @param entitled [Boolean]
          #   # @param is_commit_specific [Boolean]
          #   # @param multiplier [Float]
          #   # @param override_specifiers [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override::OverrideSpecifier>]
          #   # @param overwrite_rate [MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate]
          #   # @param priority [Float]
          #   # @param product_id [String]
          #   # @param target [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::Target]
          #   # @param tiers [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override::Tier>]
          #   # @param type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::Type]
          #   #
          #   def initialize(
          #     starting_at:,
          #     applicable_product_tags: nil,
          #     ending_before: nil,
          #     entitled: nil,
          #     is_commit_specific: nil,
          #     multiplier: nil,
          #     override_specifiers: nil,
          #     overwrite_rate: nil,
          #     priority: nil,
          #     product_id: nil,
          #     target: nil,
          #     tiers: nil,
          #     type: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class OverrideSpecifier < MetronomeSDK::BaseModel
            # @!attribute [r] commit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #     one of product_id, product_tags, pricing_group_values, or
            #     presentation_group_values. If provided, the override will only apply to the
            #     specified commits. If not provided, the override will apply to all commits.
            #
            #   @return [Array<String>, nil]
            optional :commit_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :commit_ids

            # @!attribute [r] presentation_group_values
            #   A map of group names to values. The override will only apply to line items with
            #     the specified presentation group values.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :presentation_group_values, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :presentation_group_values

            # @!attribute [r] pricing_group_values
            #   A map of pricing group names to values. The override will only apply to products
            #     with the specified pricing group values.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :pricing_group_values

            # @!attribute [r] product_id
            #   If provided, the override will only apply to the product with the specified ID.
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :product_id

            # @!attribute [r] product_tags
            #   If provided, the override will only apply to products with all the specified
            #     tags.
            #
            #   @return [Array<String>, nil]
            optional :product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :product_tags

            # @!attribute [r] recurring_commit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #     one of product_id, product_tags, pricing_group_values, or
            #     presentation_group_values. If provided, the override will only apply to commits
            #     created by the specified recurring commit ids.
            #
            #   @return [Array<String>, nil]
            optional :recurring_commit_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :recurring_commit_ids

            # @!attribute [r] recurring_credit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #     one of product_id, product_tags, pricing_group_values, or
            #     presentation_group_values. If provided, the override will only apply to credits
            #     created by the specified recurring credit ids.
            #
            #   @return [Array<String>, nil]
            optional :recurring_credit_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :recurring_credit_ids

            # @!parse
            #   # @param commit_ids [Array<String>]
            #   # @param presentation_group_values [Hash{Symbol=>String}]
            #   # @param pricing_group_values [Hash{Symbol=>String}]
            #   # @param product_id [String]
            #   # @param product_tags [Array<String>]
            #   # @param recurring_commit_ids [Array<String>]
            #   # @param recurring_credit_ids [Array<String>]
            #   #
            #   def initialize(
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
          end

          class OverwriteRate < MetronomeSDK::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate::RateType }

            # @!attribute [r] credit_type_id
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

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
            #   # Required for OVERWRITE type.
            #   #
            #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate::RateType]
            #   # @param credit_type_id [String]
            #   # @param custom_rate [Hash{Symbol=>Object}]
            #   # @param is_prorated [Boolean]
            #   # @param price [Float]
            #   # @param quantity [Float]
            #   # @param tiers [Array<MetronomeSDK::Models::Tier>]
            #   #
            #   def initialize(
            #     rate_type:,
            #     credit_type_id: nil,
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

          # @abstract
          #
          # Indicates whether the override applies to commit rates or list rates. Can only
          #   be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          #   `"LIST_RATE"`.
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

          class Tier < MetronomeSDK::BaseModel
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

          # @abstract
          #
          # Overwrites are prioritized over multipliers and tiered overrides.
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

        class ProfessionalService < MetronomeSDK::BaseModel
          # @!attribute max_amount
          #   Maximum amount for the term.
          #
          #   @return [Float]
          required :max_amount, Float

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute quantity
          #   Quantity for the charge. Will be multiplied by unit_price to determine the
          #     amount.
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute unit_price
          #   Unit price for the charge. Will be multiplied by quantity to determine the
          #     amount and must be specified.
          #
          #   @return [Float]
          required :unit_price, Float

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

          # @!attribute [r] netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_sales_order_id

          # @!parse
          #   # @param max_amount [Float]
          #   # @param product_id [String]
          #   # @param quantity [Float]
          #   # @param unit_price [Float]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param description [String]
          #   # @param netsuite_sales_order_id [String]
          #   #
          #   def initialize(
          #     max_amount:,
          #     product_id:,
          #     quantity:,
          #     unit_price:,
          #     custom_fields: nil,
          #     description: nil,
          #     netsuite_sales_order_id: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class RecurringCommit < MetronomeSDK::BaseModel
          # @!attribute access_amount
          #   The amount of commit to grant.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::AccessAmount]
          required :access_amount,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::AccessAmount }

          # @!attribute commit_duration
          #   The amount of time the created commits will be valid for.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration]
          required :commit_duration,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration }

          # @!attribute priority
          #   Will be passed down to the individual commits
          #
          #   @return [Float]
          required :priority, Float

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute starting_at
          #   determines the start time for the first commit
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

          # @!attribute [r] description
          #   Will be passed down to the individual commits
          #
          #   @return [String, nil]
          optional :description, String

          # @!parse
          #   # @return [String]
          #   attr_writer :description

          # @!attribute [r] ending_before
          #   Determines when the contract will stop creating recurring commits. optional
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] invoice_amount
          #   The amount the customer should be billed for the commit. Not required.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::InvoiceAmount, nil]
          optional :invoice_amount,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::InvoiceAmount }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::InvoiceAmount]
          #   attr_writer :invoice_amount

          # @!attribute [r] name
          #   displayed on invoices. will be passed through to the individual commits
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
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::Proration, nil]
          optional :proration,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::Proration }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::Proration]
          #   attr_writer :proration

          # @!attribute [r] rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RateType, nil]
          optional :rate_type,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RateType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RateType]
          #   attr_writer :rate_type

          # @!attribute [r] recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #     The commits will be created on the usage invoice frequency. If provided: - The
          #     period defined in the duration will correspond to this frequency. - Commits will
          #     be created aligned with the recurring commit's start_date rather than the usage
          #     invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency]
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

          # @!attribute [r] temporary_id
          #   A temporary ID that can be used to reference the recurring commit for commit
          #     specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :temporary_id

          # @!parse
          #   # @param access_amount [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::AccessAmount]
          #   # @param commit_duration [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration]
          #   # @param priority [Float]
          #   # @param product_id [String]
          #   # @param starting_at [Time]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param description [String]
          #   # @param ending_before [Time]
          #   # @param invoice_amount [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::InvoiceAmount]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   # @param proration [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::Proration]
          #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RateType]
          #   # @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency]
          #   # @param rollover_fraction [Float]
          #   # @param temporary_id [String]
          #   #
          #   def initialize(
          #     access_amount:,
          #     commit_duration:,
          #     priority:,
          #     product_id:,
          #     starting_at:,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     description: nil,
          #     ending_before: nil,
          #     invoice_amount: nil,
          #     name: nil,
          #     netsuite_sales_order_id: nil,
          #     proration: nil,
          #     rate_type: nil,
          #     recurrence_frequency: nil,
          #     rollover_fraction: nil,
          #     temporary_id: nil,
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
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit }

            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!parse
            #   # The amount of time the created commits will be valid for.
            #   #
            #   # @param unit [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit]
            #   # @param value [Float]
            #   #
            #   def initialize(unit:, value:, **) = super

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
          # @!attribute access_amount
          #   The amount of commit to grant.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::AccessAmount]
          required :access_amount,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::AccessAmount }

          # @!attribute commit_duration
          #   The amount of time the created commits will be valid for.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration]
          required :commit_duration,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration }

          # @!attribute priority
          #   Will be passed down to the individual commits
          #
          #   @return [Float]
          required :priority, Float

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute starting_at
          #   determines the start time for the first commit
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

          # @!attribute [r] description
          #   Will be passed down to the individual commits
          #
          #   @return [String, nil]
          optional :description, String

          # @!parse
          #   # @return [String]
          #   attr_writer :description

          # @!attribute [r] ending_before
          #   Determines when the contract will stop creating recurring commits. optional
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] name
          #   displayed on invoices. will be passed through to the individual commits
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
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::Proration, nil]
          optional :proration,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::Proration }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::Proration]
          #   attr_writer :proration

          # @!attribute [r] rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RateType, nil]
          optional :rate_type,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RateType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RateType]
          #   attr_writer :rate_type

          # @!attribute [r] recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #     The commits will be created on the usage invoice frequency. If provided: - The
          #     period defined in the duration will correspond to this frequency. - Commits will
          #     be created aligned with the recurring commit's start_date rather than the usage
          #     invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency]
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

          # @!attribute [r] temporary_id
          #   A temporary ID that can be used to reference the recurring commit for commit
          #     specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :temporary_id

          # @!parse
          #   # @param access_amount [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::AccessAmount]
          #   # @param commit_duration [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration]
          #   # @param priority [Float]
          #   # @param product_id [String]
          #   # @param starting_at [Time]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param description [String]
          #   # @param ending_before [Time]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   # @param proration [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::Proration]
          #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RateType]
          #   # @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency]
          #   # @param rollover_fraction [Float]
          #   # @param temporary_id [String]
          #   #
          #   def initialize(
          #     access_amount:,
          #     commit_duration:,
          #     priority:,
          #     product_id:,
          #     starting_at:,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     description: nil,
          #     ending_before: nil,
          #     name: nil,
          #     netsuite_sales_order_id: nil,
          #     proration: nil,
          #     rate_type: nil,
          #     recurrence_frequency: nil,
          #     rollover_fraction: nil,
          #     temporary_id: nil,
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
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit }

            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!parse
            #   # The amount of time the created commits will be valid for.
            #   #
            #   # @param unit [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit]
            #   # @param value [Float]
            #   #
            #   def initialize(unit:, value:, **) = super

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
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::ResellerType]
          required :reseller_type,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::ResellerType }

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute [r] applicable_product_ids
          #   Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_ids

          # @!attribute [r] applicable_product_tags
          #   Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_tags

          # @!attribute [r] aws_options
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::AwsOptions, nil]
          optional :aws_options, -> { MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::AwsOptions }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::AwsOptions]
          #   attr_writer :aws_options

          # @!attribute [r] ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] gcp_options
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::GcpOptions, nil]
          optional :gcp_options, -> { MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::GcpOptions }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::GcpOptions]
          #   attr_writer :gcp_options

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
          #   # @param reseller_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::ResellerType]
          #   # @param starting_at [Time]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param aws_options [MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::AwsOptions]
          #   # @param ending_before [Time]
          #   # @param gcp_options [MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::GcpOptions]
          #   # @param reseller_contract_value [Float]
          #   #
          #   def initialize(
          #     fraction:,
          #     netsuite_reseller_id:,
          #     reseller_type:,
          #     starting_at:,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     aws_options: nil,
          #     ending_before: nil,
          #     gcp_options: nil,
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

          class AwsOptions < MetronomeSDK::BaseModel
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

            # @!parse
            #   # @param aws_account_number [String]
            #   # @param aws_offer_id [String]
            #   # @param aws_payer_reference_id [String]
            #   #
            #   def initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class GcpOptions < MetronomeSDK::BaseModel
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

            # @!parse
            #   # @param gcp_account_id [String]
            #   # @param gcp_offer_id [String]
            #   #
            #   def initialize(gcp_account_id: nil, gcp_offer_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end
        end

        class ScheduledCharge < MetronomeSDK::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute schedule
          #   Must provide either schedule_items or recurring_schedule.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule]
          required :schedule, -> { MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule }

          # @!attribute [r] name
          #   displayed on invoices
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

          # @!parse
          #   # @param product_id [String]
          #   # @param schedule [MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   #
          #   def initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class Schedule < MetronomeSDK::BaseModel
            # @!attribute [r] credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!attribute [r] recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #     amount. If amount is sent, the unit price is assumed to be the amount and
            #     quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule]
            #   attr_writer :recurring_schedule

            # @!attribute [r] schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem>]
            #   attr_writer :schedule_items

            # @!parse
            #   # Must provide either schedule_items or recurring_schedule.
            #   #
            #   # @param credit_type_id [String]
            #   # @param recurring_schedule [MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule]
            #   # @param schedule_items [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem>]
            #   #
            #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class RecurringSchedule < MetronomeSDK::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency }

              # @!attribute starting_at
              #   RFC 3339 timestamp (inclusive).
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # Enter the unit price and quantity for the charge or instead only send the
              #   #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   #   quantity is inferred to be 1.
              #   #
              #   # @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              #   # @param ending_before [Time]
              #   # @param frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
              #   # @param starting_at [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(
              #     amount_distribution:,
              #     ending_before:,
              #     frequency:,
              #     starting_at:,
              #     amount: nil,
              #     quantity: nil,
              #     unit_price: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case amount_distribution
              # in :DIVIDED
              #   # ...
              # in :DIVIDED_ROUNDED
              #   # ...
              # in :EACH
              #   # ...
              # end
              # ```
              class AmountDistribution < MetronomeSDK::Enum
                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

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
              # case frequency
              # in :MONTHLY
              #   # ...
              # in :QUARTERLY
              #   # ...
              # in :SEMI_ANNUAL
              #   # ...
              # in :ANNUAL
              #   # ...
              # end
              # ```
              class Frequency < MetronomeSDK::Enum
                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              # @!attribute timestamp
              #   timestamp of the scheduled event
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # @param timestamp [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
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
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::Commit]
          required :commit,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::Commit }

          # @!attribute is_enabled
          #   When set to false, the contract will not be evaluated against the
          #     threshold_amount. Toggling to true will result an immediate evaluation,
          #     regardless of prior state.
          #
          #   @return [Boolean]
          required :is_enabled, MetronomeSDK::BooleanModel

          # @!attribute payment_gate_config
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig]
          required :payment_gate_config,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig }

          # @!attribute threshold_amount
          #   Specify the threshold amount for the contract. Each time the contract's usage
          #     hits this amount, a threshold charge will be initiated.
          #
          #   @return [Float]
          required :threshold_amount, Float

          # @!parse
          #   # @param commit [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::Commit]
          #   # @param is_enabled [Boolean]
          #   # @param payment_gate_config [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig]
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
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

            # @!attribute [r] stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig]
            #   attr_writer :stripe_config

            # @!attribute [r] tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #     not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #     will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType]
            #   attr_writer :tax_type

            # @!parse
            #   # @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            #   # @param stripe_config [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig]
            #   # @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType]
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
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

              # @!parse
              #   # Only applicable if using Stripe as your payment gateway through Metronome.
              #   #
              #   # @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
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

        class Transition < MetronomeSDK::BaseModel
          # @!attribute from_contract_id
          #
          #   @return [String]
          required :from_contract_id, String

          # @!attribute type
          #   This field's available values may vary based on your client's configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Transition::Type]
          required :type, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Transition::Type }

          # @!attribute [r] future_invoice_behavior
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior, nil]
          optional :future_invoice_behavior,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior]
          #   attr_writer :future_invoice_behavior

          # @!parse
          #   # @param from_contract_id [String]
          #   # @param type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Transition::Type]
          #   # @param future_invoice_behavior [MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior]
          #   #
          #   def initialize(from_contract_id:, type:, future_invoice_behavior: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # This field's available values may vary based on your client's configuration.
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

          class FutureInvoiceBehavior < MetronomeSDK::BaseModel
            # @!attribute trueup
            #   Controls whether future trueup invoices are billed or removed. Default behavior
            #     is AS_IS if not specified.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup, nil]
            optional :trueup,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup },
                     nil?: true

            # @!parse
            #   # @param trueup [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup, nil]
            #   #
            #   def initialize(trueup: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # Controls whether future trueup invoices are billed or removed. Default behavior
            #   is AS_IS if not specified.
            #
            # @example
            # ```ruby
            # case trueup
            # in :REMOVE
            #   # ...
            # in :AS_IS
            #   # ...
            # end
            # ```
            class Trueup < MetronomeSDK::Enum
              REMOVE = :REMOVE
              AS_IS = :AS_IS

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class UsageStatementSchedule < MetronomeSDK::BaseModel
          # @!attribute frequency
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Frequency]
          required :frequency,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Frequency }

          # @!attribute [r] billing_anchor_date
          #   Required when using CUSTOM_DATE. This option lets you set a historical billing
          #     anchor date, aligning future billing cycles with a chosen cadence. For example,
          #     if a contract starts on 2024-09-15 and you set the anchor date to 2024-09-10
          #     with a MONTHLY frequency, the first usage statement will cover 09-15 to 10-10.
          #     Subsequent statements will follow the 10th of each month.
          #
          #   @return [Time, nil]
          optional :billing_anchor_date, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :billing_anchor_date

          # @!attribute [r] day
          #   If not provided, defaults to the first day of the month.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Day, nil]
          optional :day, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Day }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Day]
          #   attr_writer :day

          # @!attribute [r] invoice_generation_starting_at
          #   The date Metronome should start generating usage invoices. If unspecified,
          #     contract start date will be used. This is useful to set if you want to import
          #     historical invoices via our 'Create Historical Invoices' API rather than having
          #     Metronome automatically generate them.
          #
          #   @return [Time, nil]
          optional :invoice_generation_starting_at, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :invoice_generation_starting_at

          # @!parse
          #   # @param frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Frequency]
          #   # @param billing_anchor_date [Time]
          #   # @param day [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Day]
          #   # @param invoice_generation_starting_at [Time]
          #   #
          #   def initialize(frequency:, billing_anchor_date: nil, day: nil, invoice_generation_starting_at: nil, **) = super

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

          # @abstract
          #
          # If not provided, defaults to the first day of the month.
          #
          # @example
          # ```ruby
          # case day
          # in :FIRST_OF_MONTH
          #   # ...
          # in :CONTRACT_START
          #   # ...
          # in :CUSTOM_DATE
          #   # ...
          # end
          # ```
          class Day < MetronomeSDK::Enum
            FIRST_OF_MONTH = :FIRST_OF_MONTH
            CONTRACT_START = :CONTRACT_START
            CUSTOM_DATE = :CUSTOM_DATE

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
