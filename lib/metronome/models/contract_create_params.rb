# frozen_string_literal: true

module Metronome
  module Models
    class ContractCreateParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

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
      #   @return [Metronome::Models::ContractCreateParams::BillingProviderConfiguration, nil]
      optional :billing_provider_configuration,
               -> { Metronome::Models::ContractCreateParams::BillingProviderConfiguration }

      # @!parse
      #   # @return [Metronome::Models::ContractCreateParams::BillingProviderConfiguration]
      #   attr_writer :billing_provider_configuration

      # @!attribute [r] commits
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::Commit>, nil]
      optional :commits, -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Commit] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractCreateParams::Commit>]
      #   attr_writer :commits

      # @!attribute [r] credits
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::Credit>, nil]
      optional :credits, -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Credit] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractCreateParams::Credit>]
      #   attr_writer :credits

      # @!attribute [r] custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, Metronome::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :custom_fields

      # @!attribute [r] discounts
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::Discount>, nil]
      optional :discounts, -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Discount] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractCreateParams::Discount>]
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
      #   @return [Symbol, Metronome::Models::ContractCreateParams::MultiplierOverridePrioritization, nil]
      optional :multiplier_override_prioritization,
               enum: -> { Metronome::Models::ContractCreateParams::MultiplierOverridePrioritization }

      # @!parse
      #   # @return [Symbol, Metronome::Models::ContractCreateParams::MultiplierOverridePrioritization]
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
      #   @return [Array<Metronome::Models::ContractCreateParams::Override>, nil]
      optional :overrides, -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Override] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractCreateParams::Override>]
      #   attr_writer :overrides

      # @!attribute [r] professional_services
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::ProfessionalService>, nil]
      optional :professional_services,
               -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::ProfessionalService] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractCreateParams::ProfessionalService>]
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
      #   @return [Array<Metronome::Models::ContractCreateParams::RecurringCommit>, nil]
      optional :recurring_commits,
               -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::RecurringCommit] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractCreateParams::RecurringCommit>]
      #   attr_writer :recurring_commits

      # @!attribute [r] recurring_credits
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::RecurringCredit>, nil]
      optional :recurring_credits,
               -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::RecurringCredit] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractCreateParams::RecurringCredit>]
      #   attr_writer :recurring_credits

      # @!attribute [r] reseller_royalties
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::ResellerRoyalty>, nil]
      optional :reseller_royalties,
               -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::ResellerRoyalty] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractCreateParams::ResellerRoyalty>]
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
      #   @return [Array<Metronome::Models::ContractCreateParams::ScheduledCharge>, nil]
      optional :scheduled_charges,
               -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::ScheduledCharge] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractCreateParams::ScheduledCharge>]
      #   attr_writer :scheduled_charges

      # @!attribute [r] scheduled_charges_on_usage_invoices
      #   Determines which scheduled and commit charges to consolidate onto the Contract's
      #     usage invoice. The charge's `timestamp` must match the usage invoice's
      #     `ending_before` date for consolidation to occur. This field cannot be modified
      #     after a Contract has been created. If this field is omitted, charges will appear
      #     on a separate invoice from usage charges.
      #
      #   @return [Symbol, Metronome::Models::ContractCreateParams::ScheduledChargesOnUsageInvoices, nil]
      optional :scheduled_charges_on_usage_invoices,
               enum: -> { Metronome::Models::ContractCreateParams::ScheduledChargesOnUsageInvoices }

      # @!parse
      #   # @return [Symbol, Metronome::Models::ContractCreateParams::ScheduledChargesOnUsageInvoices]
      #   attr_writer :scheduled_charges_on_usage_invoices

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
      #   @return [Metronome::Models::ContractCreateParams::Transition, nil]
      optional :transition, -> { Metronome::Models::ContractCreateParams::Transition }

      # @!parse
      #   # @return [Metronome::Models::ContractCreateParams::Transition]
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
      #   @return [Metronome::Models::BaseUsageFilter, nil]
      optional :usage_filter, -> { Metronome::Models::BaseUsageFilter }

      # @!parse
      #   # @return [Metronome::Models::BaseUsageFilter]
      #   attr_writer :usage_filter

      # @!attribute [r] usage_statement_schedule
      #
      #   @return [Metronome::Models::ContractCreateParams::UsageStatementSchedule, nil]
      optional :usage_statement_schedule, -> { Metronome::Models::ContractCreateParams::UsageStatementSchedule }

      # @!parse
      #   # @return [Metronome::Models::ContractCreateParams::UsageStatementSchedule]
      #   attr_writer :usage_statement_schedule

      # @!parse
      #   # @param customer_id [String]
      #   # @param starting_at [Time]
      #   # @param billing_provider_configuration [Metronome::Models::ContractCreateParams::BillingProviderConfiguration]
      #   # @param commits [Array<Metronome::Models::ContractCreateParams::Commit>]
      #   # @param credits [Array<Metronome::Models::ContractCreateParams::Credit>]
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   # @param discounts [Array<Metronome::Models::ContractCreateParams::Discount>]
      #   # @param ending_before [Time]
      #   # @param multiplier_override_prioritization [Symbol, Metronome::Models::ContractCreateParams::MultiplierOverridePrioritization]
      #   # @param name [String]
      #   # @param net_payment_terms_days [Float]
      #   # @param netsuite_sales_order_id [String]
      #   # @param overrides [Array<Metronome::Models::ContractCreateParams::Override>]
      #   # @param professional_services [Array<Metronome::Models::ContractCreateParams::ProfessionalService>]
      #   # @param rate_card_alias [String]
      #   # @param rate_card_id [String]
      #   # @param recurring_commits [Array<Metronome::Models::ContractCreateParams::RecurringCommit>]
      #   # @param recurring_credits [Array<Metronome::Models::ContractCreateParams::RecurringCredit>]
      #   # @param reseller_royalties [Array<Metronome::Models::ContractCreateParams::ResellerRoyalty>]
      #   # @param salesforce_opportunity_id [String]
      #   # @param scheduled_charges [Array<Metronome::Models::ContractCreateParams::ScheduledCharge>]
      #   # @param scheduled_charges_on_usage_invoices [Symbol, Metronome::Models::ContractCreateParams::ScheduledChargesOnUsageInvoices]
      #   # @param total_contract_value [Float]
      #   # @param transition [Metronome::Models::ContractCreateParams::Transition]
      #   # @param uniqueness_key [String]
      #   # @param usage_filter [Metronome::Models::BaseUsageFilter]
      #   # @param usage_statement_schedule [Metronome::Models::ContractCreateParams::UsageStatementSchedule]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     customer_id:,
      #     starting_at:,
      #     billing_provider_configuration: nil,
      #     commits: nil,
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

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # billing_provider_configuration => {
      #   billing_provider: Metronome::Models::ContractCreateParams::BillingProviderConfiguration::BillingProvider,
      #   billing_provider_configuration_id: String,
      #   delivery_method: Metronome::Models::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod
      # }
      # ```
      class BillingProviderConfiguration < Metronome::BaseModel
        # @!attribute [r] billing_provider
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::BillingProviderConfiguration::BillingProvider, nil]
        optional :billing_provider,
                 enum: -> { Metronome::Models::ContractCreateParams::BillingProviderConfiguration::BillingProvider }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateParams::BillingProviderConfiguration::BillingProvider]
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
        #   @return [Symbol, Metronome::Models::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod, nil]
        optional :delivery_method,
                 enum: -> { Metronome::Models::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod]
        #   attr_writer :delivery_method

        # @!parse
        #   # The billing provider configuration associated with a contract.
        #   #
        #   # @param billing_provider [Symbol, Metronome::Models::ContractCreateParams::BillingProviderConfiguration::BillingProvider]
        #   # @param billing_provider_configuration_id [String]
        #   # @param delivery_method [Symbol, Metronome::Models::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod]
        #   #
        #   def initialize(billing_provider: nil, billing_provider_configuration_id: nil, delivery_method: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
        class BillingProvider < Metronome::Enum
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
        class DeliveryMethod < Metronome::Enum
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

      # @example
      # ```ruby
      # commit => {
      #   product_id: String,
      #   type: Metronome::Models::ContractCreateParams::Commit::Type,
      #   access_schedule: Metronome::Models::ContractCreateParams::Commit::AccessSchedule,
      #   amount: Float,
      #   applicable_product_ids: -> { Metronome::ArrayOf[String] === _1 },
      #   **_
      # }
      # ```
      class Commit < Metronome::BaseModel
        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute type
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Commit::Type]
        required :type, enum: -> { Metronome::Models::ContractCreateParams::Commit::Type }

        # @!attribute [r] access_schedule
        #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
        #     commits only one schedule item is allowed and amount must match invoice_schedule
        #     total.
        #
        #   @return [Metronome::Models::ContractCreateParams::Commit::AccessSchedule, nil]
        optional :access_schedule, -> { Metronome::Models::ContractCreateParams::Commit::AccessSchedule }

        # @!parse
        #   # @return [Metronome::Models::ContractCreateParams::Commit::AccessSchedule]
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
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_ids

        # @!attribute [r] applicable_product_tags
        #   Which tags the commit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_tags

        # @!attribute [r] custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, Metronome::HashOf[String]

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
        #   @return [Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule, nil]
        optional :invoice_schedule, -> { Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule }

        # @!parse
        #   # @return [Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule]
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
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Commit::RateType, nil]
        optional :rate_type, enum: -> { Metronome::Models::ContractCreateParams::Commit::RateType }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateParams::Commit::RateType]
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
        #   # @param type [Symbol, Metronome::Models::ContractCreateParams::Commit::Type]
        #   # @param access_schedule [Metronome::Models::ContractCreateParams::Commit::AccessSchedule]
        #   # @param amount [Float]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param description [String]
        #   # @param invoice_schedule [Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
        #   # @param priority [Float]
        #   # @param rate_type [Symbol, Metronome::Models::ContractCreateParams::Commit::RateType]
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
        #     priority: nil,
        #     rate_type: nil,
        #     rollover_fraction: nil,
        #     temporary_id: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
        class Type < Metronome::Enum
          PREPAID = :PREPAID
          POSTPAID = :POSTPAID

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @example
        # ```ruby
        # access_schedule => {
        #   schedule_items: -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem] === _1 },
        #   credit_type_id: String
        # }
        # ```
        class AccessSchedule < Metronome::BaseModel
          # @!attribute schedule_items
          #
          #   @return [Array<Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem] }

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
          #   # @param schedule_items [Array<Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem>]
          #   # @param credit_type_id [String]
          #   #
          #   def initialize(schedule_items:, credit_type_id: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          # ```ruby
          # schedule_item => {
          #   amount: Float,
          #   ending_before: Time,
          #   starting_at: Time
          # }
          # ```
          class ScheduleItem < Metronome::BaseModel
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

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end

        # @example
        # ```ruby
        # invoice_schedule => {
        #   credit_type_id: String,
        #   recurring_schedule: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule,
        #   schedule_items: -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem] === _1 }
        # }
        # ```
        class InvoiceSchedule < Metronome::BaseModel
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
          #   @return [Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule, nil]
          optional :recurring_schedule,
                   -> { Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule }

          # @!parse
          #   # @return [Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule]
          #   attr_writer :recurring_schedule

          # @!attribute [r] schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #
          #   @return [Array<Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem>, nil]
          optional :schedule_items,
                   -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem] }

          # @!parse
          #   # @return [Array<Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem>]
          #   attr_writer :schedule_items

          # @!parse
          #   # Required for "POSTPAID" commits: the true up invoice will be generated at this
          #   #   time and only one schedule item is allowed; the total must match access_schedule
          #   #   amount. Optional for "PREPAID" commits: if not provided, this will be a
          #   #   "complimentary" commit with no invoice.
          #   #
          #   # @param credit_type_id [String]
          #   # @param recurring_schedule [Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule]
          #   # @param schedule_items [Array<Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem>]
          #   #
          #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          # ```ruby
          # recurring_schedule => {
          #   amount_distribution: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution,
          #   ending_before: Time,
          #   frequency: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency,
          #   starting_at: Time,
          #   amount: Float,
          #   **_
          # }
          # ```
          class RecurringSchedule < Metronome::BaseModel
            # @!attribute amount_distribution
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> { Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution }

            # @!attribute ending_before
            #   RFC 3339 timestamp (exclusive).
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute frequency
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> { Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency }

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
            #   # @param amount_distribution [Symbol, Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
            #   # @param ending_before [Time]
            #   # @param frequency [Symbol, Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
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

            # def initialize: (Hash | Metronome::BaseModel) -> void

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
            class AmountDistribution < Metronome::Enum
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
            class Frequency < Metronome::Enum
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

          # @example
          # ```ruby
          # schedule_item => {
          #   timestamp: Time,
          #   amount: Float,
          #   quantity: Float,
          #   unit_price: Float
          # }
          # ```
          class ScheduleItem < Metronome::BaseModel
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

            # def initialize: (Hash | Metronome::BaseModel) -> void
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
        class RateType < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @example
      # ```ruby
      # credit => {
      #   access_schedule: Metronome::Models::ContractCreateParams::Credit::AccessSchedule,
      #   product_id: String,
      #   applicable_product_ids: -> { Metronome::ArrayOf[String] === _1 },
      #   applicable_product_tags: -> { Metronome::ArrayOf[String] === _1 },
      #   custom_fields: -> { Metronome::HashOf[String] === _1 },
      #   **_
      # }
      # ```
      class Credit < Metronome::BaseModel
        # @!attribute access_schedule
        #   Schedule for distributing the credit to the customer.
        #
        #   @return [Metronome::Models::ContractCreateParams::Credit::AccessSchedule]
        required :access_schedule, -> { Metronome::Models::ContractCreateParams::Credit::AccessSchedule }

        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute [r] applicable_product_ids
        #   Which products the credit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_ids

        # @!attribute [r] applicable_product_tags
        #   Which tags the credit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_tags

        # @!attribute [r] custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, Metronome::HashOf[String]

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
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Credit::RateType, nil]
        optional :rate_type, enum: -> { Metronome::Models::ContractCreateParams::Credit::RateType }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateParams::Credit::RateType]
        #   attr_writer :rate_type

        # @!parse
        #   # @param access_schedule [Metronome::Models::ContractCreateParams::Credit::AccessSchedule]
        #   # @param product_id [String]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param description [String]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
        #   # @param priority [Float]
        #   # @param rate_type [Symbol, Metronome::Models::ContractCreateParams::Credit::RateType]
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

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # access_schedule => {
        #   schedule_items: -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem] === _1 },
        #   credit_type_id: String
        # }
        # ```
        class AccessSchedule < Metronome::BaseModel
          # @!attribute schedule_items
          #
          #   @return [Array<Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem] }

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
          #   # @param schedule_items [Array<Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem>]
          #   # @param credit_type_id [String]
          #   #
          #   def initialize(schedule_items:, credit_type_id: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          # ```ruby
          # schedule_item => {
          #   amount: Float,
          #   ending_before: Time,
          #   starting_at: Time
          # }
          # ```
          class ScheduleItem < Metronome::BaseModel
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

            # def initialize: (Hash | Metronome::BaseModel) -> void
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
        class RateType < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @example
      # ```ruby
      # discount => {
      #   product_id: String,
      #   schedule: Metronome::Models::ContractCreateParams::Discount::Schedule,
      #   custom_fields: -> { Metronome::HashOf[String] === _1 },
      #   name: String,
      #   netsuite_sales_order_id: String
      # }
      # ```
      class Discount < Metronome::BaseModel
        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute schedule
        #   Must provide either schedule_items or recurring_schedule.
        #
        #   @return [Metronome::Models::ContractCreateParams::Discount::Schedule]
        required :schedule, -> { Metronome::Models::ContractCreateParams::Discount::Schedule }

        # @!attribute [r] custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, Metronome::HashOf[String]

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
        #   # @param schedule [Metronome::Models::ContractCreateParams::Discount::Schedule]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
        #   #
        #   def initialize(product_id:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # schedule => {
        #   credit_type_id: String,
        #   recurring_schedule: Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule,
        #   schedule_items: -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem] === _1 }
        # }
        # ```
        class Schedule < Metronome::BaseModel
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
          #   @return [Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule, nil]
          optional :recurring_schedule,
                   -> { Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule }

          # @!parse
          #   # @return [Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule]
          #   attr_writer :recurring_schedule

          # @!attribute [r] schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #
          #   @return [Array<Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem>, nil]
          optional :schedule_items,
                   -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem] }

          # @!parse
          #   # @return [Array<Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem>]
          #   attr_writer :schedule_items

          # @!parse
          #   # Must provide either schedule_items or recurring_schedule.
          #   #
          #   # @param credit_type_id [String]
          #   # @param recurring_schedule [Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule]
          #   # @param schedule_items [Array<Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem>]
          #   #
          #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          # ```ruby
          # recurring_schedule => {
          #   amount_distribution: Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution,
          #   ending_before: Time,
          #   frequency: Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency,
          #   starting_at: Time,
          #   amount: Float,
          #   **_
          # }
          # ```
          class RecurringSchedule < Metronome::BaseModel
            # @!attribute amount_distribution
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> { Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution }

            # @!attribute ending_before
            #   RFC 3339 timestamp (exclusive).
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute frequency
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> { Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency }

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
            #   # @param amount_distribution [Symbol, Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
            #   # @param ending_before [Time]
            #   # @param frequency [Symbol, Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency]
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

            # def initialize: (Hash | Metronome::BaseModel) -> void

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
            class AmountDistribution < Metronome::Enum
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
            class Frequency < Metronome::Enum
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

          # @example
          # ```ruby
          # schedule_item => {
          #   timestamp: Time,
          #   amount: Float,
          #   quantity: Float,
          #   unit_price: Float
          # }
          # ```
          class ScheduleItem < Metronome::BaseModel
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

            # def initialize: (Hash | Metronome::BaseModel) -> void
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
      class MultiplierOverridePrioritization < Metronome::Enum
        LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
        EXPLICIT = :EXPLICIT

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @example
      # ```ruby
      # override => {
      #   starting_at: Time,
      #   applicable_product_tags: -> { Metronome::ArrayOf[String] === _1 },
      #   ending_before: Time,
      #   entitled: Metronome::BooleanModel,
      #   is_commit_specific: Metronome::BooleanModel,
      #   **_
      # }
      # ```
      class Override < Metronome::BaseModel
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
        optional :applicable_product_tags, Metronome::ArrayOf[String]

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
        optional :entitled, Metronome::BooleanModel

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
        optional :is_commit_specific, Metronome::BooleanModel

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
        #   @return [Array<Metronome::Models::ContractCreateParams::Override::OverrideSpecifier>, nil]
        optional :override_specifiers,
                 -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Override::OverrideSpecifier] }

        # @!parse
        #   # @return [Array<Metronome::Models::ContractCreateParams::Override::OverrideSpecifier>]
        #   attr_writer :override_specifiers

        # @!attribute [r] overwrite_rate
        #   Required for OVERWRITE type.
        #
        #   @return [Metronome::Models::ContractCreateParams::Override::OverwriteRate, nil]
        optional :overwrite_rate, -> { Metronome::Models::ContractCreateParams::Override::OverwriteRate }

        # @!parse
        #   # @return [Metronome::Models::ContractCreateParams::Override::OverwriteRate]
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
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Override::Target, nil]
        optional :target, enum: -> { Metronome::Models::ContractCreateParams::Override::Target }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateParams::Override::Target]
        #   attr_writer :target

        # @!attribute [r] tiers
        #   Required for TIERED type. Must have at least one tier.
        #
        #   @return [Array<Metronome::Models::ContractCreateParams::Override::Tier>, nil]
        optional :tiers, -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::Override::Tier] }

        # @!parse
        #   # @return [Array<Metronome::Models::ContractCreateParams::Override::Tier>]
        #   attr_writer :tiers

        # @!attribute [r] type
        #   Overwrites are prioritized over multipliers and tiered overrides.
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Override::Type, nil]
        optional :type, enum: -> { Metronome::Models::ContractCreateParams::Override::Type }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateParams::Override::Type]
        #   attr_writer :type

        # @!parse
        #   # @param starting_at [Time]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param ending_before [Time]
        #   # @param entitled [Boolean]
        #   # @param is_commit_specific [Boolean]
        #   # @param multiplier [Float]
        #   # @param override_specifiers [Array<Metronome::Models::ContractCreateParams::Override::OverrideSpecifier>]
        #   # @param overwrite_rate [Metronome::Models::ContractCreateParams::Override::OverwriteRate]
        #   # @param priority [Float]
        #   # @param product_id [String]
        #   # @param target [Symbol, Metronome::Models::ContractCreateParams::Override::Target]
        #   # @param tiers [Array<Metronome::Models::ContractCreateParams::Override::Tier>]
        #   # @param type [Symbol, Metronome::Models::ContractCreateParams::Override::Type]
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

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # override_specifier => {
        #   commit_ids: -> { Metronome::ArrayOf[String] === _1 },
        #   presentation_group_values: -> { Metronome::HashOf[String] === _1 },
        #   pricing_group_values: -> { Metronome::HashOf[String] === _1 },
        #   product_id: String,
        #   product_tags: -> { Metronome::ArrayOf[String] === _1 },
        #   **_
        # }
        # ```
        class OverrideSpecifier < Metronome::BaseModel
          # @!attribute [r] commit_ids
          #   Can only be used for commit specific overrides. Must be used in conjunction with
          #     one of product_id, product_tags, pricing_group_values, or
          #     presentation_group_values. If provided, the override will only apply to the
          #     specified commits. If not provided, the override will apply to all commits.
          #
          #   @return [Array<String>, nil]
          optional :commit_ids, Metronome::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :commit_ids

          # @!attribute [r] presentation_group_values
          #   A map of group names to values. The override will only apply to line items with
          #     the specified presentation group values.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :presentation_group_values, Metronome::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :presentation_group_values

          # @!attribute [r] pricing_group_values
          #   A map of pricing group names to values. The override will only apply to products
          #     with the specified pricing group values.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :pricing_group_values, Metronome::HashOf[String]

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
          optional :product_tags, Metronome::ArrayOf[String]

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
          optional :recurring_commit_ids, Metronome::ArrayOf[String]

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
          optional :recurring_credit_ids, Metronome::ArrayOf[String]

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

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        # @example
        # ```ruby
        # overwrite_rate => {
        #   rate_type: Metronome::Models::ContractCreateParams::Override::OverwriteRate::RateType,
        #   credit_type_id: String,
        #   custom_rate: -> { Metronome::HashOf[Metronome::Unknown] === _1 },
        #   is_prorated: Metronome::BooleanModel,
        #   price: Float,
        #   **_
        # }
        # ```
        class OverwriteRate < Metronome::BaseModel
          # @!attribute rate_type
          #
          #   @return [Symbol, Metronome::Models::ContractCreateParams::Override::OverwriteRate::RateType]
          required :rate_type,
                   enum: -> { Metronome::Models::ContractCreateParams::Override::OverwriteRate::RateType }

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
          optional :custom_rate, Metronome::HashOf[Metronome::Unknown]

          # @!parse
          #   # @return [Hash{Symbol=>Object}]
          #   attr_writer :custom_rate

          # @!attribute [r] is_prorated
          #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
          #     set to true.
          #
          #   @return [Boolean, nil]
          optional :is_prorated, Metronome::BooleanModel

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
          #   @return [Array<Metronome::Models::Tier>, nil]
          optional :tiers, -> { Metronome::ArrayOf[Metronome::Models::Tier] }

          # @!parse
          #   # @return [Array<Metronome::Models::Tier>]
          #   attr_writer :tiers

          # @!parse
          #   # Required for OVERWRITE type.
          #   #
          #   # @param rate_type [Symbol, Metronome::Models::ContractCreateParams::Override::OverwriteRate::RateType]
          #   # @param credit_type_id [String]
          #   # @param custom_rate [Hash{Symbol=>Object}]
          #   # @param is_prorated [Boolean]
          #   # @param price [Float]
          #   # @param quantity [Float]
          #   # @param tiers [Array<Metronome::Models::Tier>]
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

          # def initialize: (Hash | Metronome::BaseModel) -> void

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
          class RateType < Metronome::Enum
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
        class Target < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @example
        # ```ruby
        # tier => {
        #   multiplier: Float,
        #   size: Float
        # }
        # ```
        class Tier < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
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
        class Type < Metronome::Enum
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

      # @example
      # ```ruby
      # professional_service => {
      #   max_amount: Float,
      #   product_id: String,
      #   quantity: Float,
      #   unit_price: Float,
      #   custom_fields: -> { Metronome::HashOf[String] === _1 },
      #   **_
      # }
      # ```
      class ProfessionalService < Metronome::BaseModel
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
        optional :custom_fields, Metronome::HashOf[String]

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

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      # ```ruby
      # recurring_commit => {
      #   access_amount: Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount,
      #   commit_duration: Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration,
      #   priority: Float,
      #   product_id: String,
      #   starting_at: Time,
      #   **_
      # }
      # ```
      class RecurringCommit < Metronome::BaseModel
        # @!attribute access_amount
        #   The amount of commit to grant.
        #
        #   @return [Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount]
        required :access_amount, -> { Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount }

        # @!attribute commit_duration
        #   The amount of time the created commits will be valid for.
        #
        #   @return [Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration]
        required :commit_duration, -> { Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration }

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
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_ids

        # @!attribute [r] applicable_product_tags
        #   Will be passed down to the individual commits
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

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
        #   @return [Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount, nil]
        optional :invoice_amount, -> { Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount }

        # @!parse
        #   # @return [Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount]
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

        # @!attribute [r] rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::RecurringCommit::RateType, nil]
        optional :rate_type, enum: -> { Metronome::Models::ContractCreateParams::RecurringCommit::RateType }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateParams::RecurringCommit::RateType]
        #   attr_writer :rate_type

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
        #   # @param access_amount [Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount]
        #   # @param commit_duration [Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration]
        #   # @param priority [Float]
        #   # @param product_id [String]
        #   # @param starting_at [Time]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param description [String]
        #   # @param ending_before [Time]
        #   # @param invoice_amount [Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
        #   # @param rate_type [Symbol, Metronome::Models::ContractCreateParams::RecurringCommit::RateType]
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
        #     rate_type: nil,
        #     rollover_fraction: nil,
        #     temporary_id: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # access_amount => {
        #   credit_type_id: String,
        #   quantity: Float,
        #   unit_price: Float
        # }
        # ```
        class AccessAmount < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        # @example
        # ```ruby
        # commit_duration => {
        #   unit: Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration::Unit,
        #   value: Float
        # }
        # ```
        class CommitDuration < Metronome::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration::Unit]
          required :unit,
                   enum: -> { Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration::Unit }

          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!parse
          #   # The amount of time the created commits will be valid for.
          #   #
          #   # @param unit [Symbol, Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration::Unit]
          #   # @param value [Float]
          #   #
          #   def initialize(unit:, value:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case unit
          # in :PERIODS
          #   # ...
          # end
          # ```
          class Unit < Metronome::Enum
            PERIODS = :PERIODS

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # invoice_amount => {
        #   credit_type_id: String,
        #   quantity: Float,
        #   unit_price: Float
        # }
        # ```
        class InvoiceAmount < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
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
        class RateType < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @example
      # ```ruby
      # recurring_credit => {
      #   access_amount: Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount,
      #   commit_duration: Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration,
      #   priority: Float,
      #   product_id: String,
      #   starting_at: Time,
      #   **_
      # }
      # ```
      class RecurringCredit < Metronome::BaseModel
        # @!attribute access_amount
        #   The amount of commit to grant.
        #
        #   @return [Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount]
        required :access_amount, -> { Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount }

        # @!attribute commit_duration
        #   The amount of time the created commits will be valid for.
        #
        #   @return [Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration]
        required :commit_duration, -> { Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration }

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
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_ids

        # @!attribute [r] applicable_product_tags
        #   Will be passed down to the individual commits
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

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

        # @!attribute [r] rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::RecurringCredit::RateType, nil]
        optional :rate_type, enum: -> { Metronome::Models::ContractCreateParams::RecurringCredit::RateType }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateParams::RecurringCredit::RateType]
        #   attr_writer :rate_type

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
        #   # @param access_amount [Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount]
        #   # @param commit_duration [Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration]
        #   # @param priority [Float]
        #   # @param product_id [String]
        #   # @param starting_at [Time]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param description [String]
        #   # @param ending_before [Time]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
        #   # @param rate_type [Symbol, Metronome::Models::ContractCreateParams::RecurringCredit::RateType]
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
        #     rate_type: nil,
        #     rollover_fraction: nil,
        #     temporary_id: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # access_amount => {
        #   credit_type_id: String,
        #   quantity: Float,
        #   unit_price: Float
        # }
        # ```
        class AccessAmount < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        # @example
        # ```ruby
        # commit_duration => {
        #   unit: Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration::Unit,
        #   value: Float
        # }
        # ```
        class CommitDuration < Metronome::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration::Unit]
          required :unit,
                   enum: -> { Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration::Unit }

          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!parse
          #   # The amount of time the created commits will be valid for.
          #   #
          #   # @param unit [Symbol, Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration::Unit]
          #   # @param value [Float]
          #   #
          #   def initialize(unit:, value:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case unit
          # in :PERIODS
          #   # ...
          # end
          # ```
          class Unit < Metronome::Enum
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
        class RateType < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @example
      # ```ruby
      # reseller_royalty => {
      #   fraction: Float,
      #   netsuite_reseller_id: String,
      #   reseller_type: Metronome::Models::ContractCreateParams::ResellerRoyalty::ResellerType,
      #   starting_at: Time,
      #   applicable_product_ids: -> { Metronome::ArrayOf[String] === _1 },
      #   **_
      # }
      # ```
      class ResellerRoyalty < Metronome::BaseModel
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
        #   @return [Symbol, Metronome::Models::ContractCreateParams::ResellerRoyalty::ResellerType]
        required :reseller_type,
                 enum: -> { Metronome::Models::ContractCreateParams::ResellerRoyalty::ResellerType }

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [r] applicable_product_ids
        #   Must provide at least one of applicable_product_ids or applicable_product_tags.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_ids

        # @!attribute [r] applicable_product_tags
        #   Must provide at least one of applicable_product_ids or applicable_product_tags.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_tags

        # @!attribute [r] aws_options
        #
        #   @return [Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions, nil]
        optional :aws_options, -> { Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions }

        # @!parse
        #   # @return [Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions]
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
        #   @return [Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions, nil]
        optional :gcp_options, -> { Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions }

        # @!parse
        #   # @return [Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions]
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
        #   # @param reseller_type [Symbol, Metronome::Models::ContractCreateParams::ResellerRoyalty::ResellerType]
        #   # @param starting_at [Time]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param aws_options [Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions]
        #   # @param ending_before [Time]
        #   # @param gcp_options [Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions]
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

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
        class ResellerType < Metronome::Enum
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

        # @example
        # ```ruby
        # aws_options => {
        #   aws_account_number: String,
        #   aws_offer_id: String,
        #   aws_payer_reference_id: String
        # }
        # ```
        class AwsOptions < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        # @example
        # ```ruby
        # gcp_options => {
        #   gcp_account_id: String,
        #   gcp_offer_id: String
        # }
        # ```
        class GcpOptions < Metronome::BaseModel
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

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # scheduled_charge => {
      #   product_id: String,
      #   schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule,
      #   name: String,
      #   netsuite_sales_order_id: String
      # }
      # ```
      class ScheduledCharge < Metronome::BaseModel
        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute schedule
        #   Must provide either schedule_items or recurring_schedule.
        #
        #   @return [Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule]
        required :schedule, -> { Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule }

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
        #   # @param schedule [Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
        #   #
        #   def initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # schedule => {
        #   credit_type_id: String,
        #   recurring_schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule,
        #   schedule_items: -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem] === _1 }
        # }
        # ```
        class Schedule < Metronome::BaseModel
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
          #   @return [Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule, nil]
          optional :recurring_schedule,
                   -> { Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule }

          # @!parse
          #   # @return [Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule]
          #   attr_writer :recurring_schedule

          # @!attribute [r] schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #
          #   @return [Array<Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem>, nil]
          optional :schedule_items,
                   -> { Metronome::ArrayOf[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem] }

          # @!parse
          #   # @return [Array<Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem>]
          #   attr_writer :schedule_items

          # @!parse
          #   # Must provide either schedule_items or recurring_schedule.
          #   #
          #   # @param credit_type_id [String]
          #   # @param recurring_schedule [Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule]
          #   # @param schedule_items [Array<Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem>]
          #   #
          #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          # ```ruby
          # recurring_schedule => {
          #   amount_distribution: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution,
          #   ending_before: Time,
          #   frequency: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency,
          #   starting_at: Time,
          #   amount: Float,
          #   **_
          # }
          # ```
          class RecurringSchedule < Metronome::BaseModel
            # @!attribute amount_distribution
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> { Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution }

            # @!attribute ending_before
            #   RFC 3339 timestamp (exclusive).
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute frequency
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> { Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency }

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
            #   # @param amount_distribution [Symbol, Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
            #   # @param ending_before [Time]
            #   # @param frequency [Symbol, Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
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

            # def initialize: (Hash | Metronome::BaseModel) -> void

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
            class AmountDistribution < Metronome::Enum
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
            class Frequency < Metronome::Enum
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

          # @example
          # ```ruby
          # schedule_item => {
          #   timestamp: Time,
          #   amount: Float,
          #   quantity: Float,
          #   unit_price: Float
          # }
          # ```
          class ScheduleItem < Metronome::BaseModel
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

            # def initialize: (Hash | Metronome::BaseModel) -> void
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
      class ScheduledChargesOnUsageInvoices < Metronome::Enum
        ALL = :ALL

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @example
      # ```ruby
      # transition => {
      #   from_contract_id: String,
      #   type: Metronome::Models::ContractCreateParams::Transition::Type,
      #   future_invoice_behavior: Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior
      # }
      # ```
      class Transition < Metronome::BaseModel
        # @!attribute from_contract_id
        #
        #   @return [String]
        required :from_contract_id, String

        # @!attribute type
        #   This field's available values may vary based on your client's configuration.
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Transition::Type]
        required :type, enum: -> { Metronome::Models::ContractCreateParams::Transition::Type }

        # @!attribute [r] future_invoice_behavior
        #
        #   @return [Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior, nil]
        optional :future_invoice_behavior,
                 -> { Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior }

        # @!parse
        #   # @return [Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior]
        #   attr_writer :future_invoice_behavior

        # @!parse
        #   # @param from_contract_id [String]
        #   # @param type [Symbol, Metronome::Models::ContractCreateParams::Transition::Type]
        #   # @param future_invoice_behavior [Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior]
        #   #
        #   def initialize(from_contract_id:, type:, future_invoice_behavior: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
        class Type < Metronome::Enum
          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @example
        # ```ruby
        # future_invoice_behavior => {
        #   trueup: Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup
        # }
        # ```
        class FutureInvoiceBehavior < Metronome::BaseModel
          # @!attribute trueup
          #   Controls whether future trueup invoices are billed or removed. Default behavior
          #     is AS_IS if not specified.
          #
          #   @return [Symbol, Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup, nil]
          optional :trueup,
                   enum: -> { Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup },
                   nil?: true

          # @!parse
          #   # @param trueup [Symbol, Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup, nil]
          #   #
          #   def initialize(trueup: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

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
          class Trueup < Metronome::Enum
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

      # @example
      # ```ruby
      # usage_statement_schedule => {
      #   frequency: Metronome::Models::ContractCreateParams::UsageStatementSchedule::Frequency,
      #   billing_anchor_date: Time,
      #   day: Metronome::Models::ContractCreateParams::UsageStatementSchedule::Day,
      #   invoice_generation_starting_at: Time
      # }
      # ```
      class UsageStatementSchedule < Metronome::BaseModel
        # @!attribute frequency
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::UsageStatementSchedule::Frequency]
        required :frequency,
                 enum: -> { Metronome::Models::ContractCreateParams::UsageStatementSchedule::Frequency }

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
        #   @return [Symbol, Metronome::Models::ContractCreateParams::UsageStatementSchedule::Day, nil]
        optional :day, enum: -> { Metronome::Models::ContractCreateParams::UsageStatementSchedule::Day }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractCreateParams::UsageStatementSchedule::Day]
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
        #   # @param frequency [Symbol, Metronome::Models::ContractCreateParams::UsageStatementSchedule::Frequency]
        #   # @param billing_anchor_date [Time]
        #   # @param day [Symbol, Metronome::Models::ContractCreateParams::UsageStatementSchedule::Day]
        #   # @param invoice_generation_starting_at [Time]
        #   #
        #   def initialize(frequency:, billing_anchor_date: nil, day: nil, invoice_generation_starting_at: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
        # end
        # ```
        class Frequency < Metronome::Enum
          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL

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
        class Day < Metronome::Enum
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
