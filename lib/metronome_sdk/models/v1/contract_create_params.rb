# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#create
      class ContractCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute starting_at
        #   inclusive contract start time
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute billing_provider_configuration
        #   The billing provider configuration associated with a contract.
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration, nil]
        optional :billing_provider_configuration,
                 -> { MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration }

        # @!attribute commits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit>, nil]
        optional :commits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Commit] }

        # @!attribute credit_balance_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration, nil]
        optional :credit_balance_threshold_configuration,
                 -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration }

        # @!attribute credits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit>, nil]
        optional :credits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Credit] }

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute discounts
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount>, nil]
        optional :discounts,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Discount] }

        # @!attribute ending_before
        #   exclusive contract end time
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!attribute multiplier_override_prioritization
        #   Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
        #   prices automatically. EXPLICIT prioritization requires specifying priorities for
        #   each multiplier; the one with the lowest priority value will be prioritized
        #   first. If tiered overrides are used, prioritization must be explicit.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::MultiplierOverridePrioritization, nil]
        optional :multiplier_override_prioritization,
                 enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::MultiplierOverridePrioritization }

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

        # @!attribute overrides
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override>, nil]
        optional :overrides,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Override] }

        # @!attribute professional_services
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ProfessionalService>, nil]
        optional :professional_services,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::ProfessionalService] }

        # @!attribute rate_card_alias
        #   Selects the rate card linked to the specified alias as of the contract's start
        #   date.
        #
        #   @return [String, nil]
        optional :rate_card_alias, String

        # @!attribute rate_card_id
        #
        #   @return [String, nil]
        optional :rate_card_id, String

        # @!attribute recurring_commits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit>, nil]
        optional :recurring_commits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit] }

        # @!attribute recurring_credits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit>, nil]
        optional :recurring_credits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit] }

        # @!attribute reseller_royalties
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty>, nil]
        optional :reseller_royalties,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty] }

        # @!attribute salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :salesforce_opportunity_id, String

        # @!attribute scheduled_charges
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge>, nil]
        optional :scheduled_charges,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge] }

        # @!attribute scheduled_charges_on_usage_invoices
        #   Determines which scheduled and commit charges to consolidate onto the Contract's
        #   usage invoice. The charge's `timestamp` must match the usage invoice's
        #   `ending_before` date for consolidation to occur. This field cannot be modified
        #   after a Contract has been created. If this field is omitted, charges will appear
        #   on a separate invoice from usage charges.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices, nil]
        optional :scheduled_charges_on_usage_invoices,
                 enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices }

        # @!attribute spend_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration, nil]
        optional :spend_threshold_configuration,
                 -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration }

        # @!attribute total_contract_value
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Float, nil]
        optional :total_contract_value, Float

        # @!attribute transition
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Transition, nil]
        optional :transition, -> { MetronomeSDK::Models::V1::ContractCreateParams::Transition }

        # @!attribute uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made
        #   with a previously used uniqueness key, a new record will not be created and the
        #   request will fail with a 409 error.
        #
        #   @return [String, nil]
        optional :uniqueness_key, String

        # @!attribute usage_filter
        #
        #   @return [MetronomeSDK::Models::BaseUsageFilter, nil]
        optional :usage_filter, -> { MetronomeSDK::Models::BaseUsageFilter }

        # @!attribute usage_statement_schedule
        #
        #   @return [MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule, nil]
        optional :usage_statement_schedule,
                 -> { MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule }

        # @!method initialize(customer_id:, starting_at:, billing_provider_configuration: nil, commits: nil, credit_balance_threshold_configuration: nil, credits: nil, custom_fields: nil, discounts: nil, ending_before: nil, multiplier_override_prioritization: nil, name: nil, net_payment_terms_days: nil, netsuite_sales_order_id: nil, overrides: nil, professional_services: nil, rate_card_alias: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, total_contract_value: nil, transition: nil, uniqueness_key: nil, usage_filter: nil, usage_statement_schedule: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractCreateParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param starting_at [Time] inclusive contract start time
        #
        #   @param billing_provider_configuration [MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration] The billing provider configuration associated with a contract.
        #
        #   @param commits [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit>]
        #
        #   @param credit_balance_threshold_configuration [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration]
        #
        #   @param credits [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit>]
        #
        #   @param custom_fields [Hash{Symbol=>String}]
        #
        #   @param discounts [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount>] This field's availability is dependent on your client's configuration.
        #
        #   @param ending_before [Time] exclusive contract end time
        #
        #   @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
        #   ...
        #
        #   @param name [String]
        #
        #   @param net_payment_terms_days [Float]
        #
        #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
        #
        #   @param overrides [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override>]
        #
        #   @param professional_services [Array<MetronomeSDK::Models::V1::ContractCreateParams::ProfessionalService>] This field's availability is dependent on your client's configuration.
        #
        #   @param rate_card_alias [String] Selects the rate card linked to the specified alias as of the contract's start d
        #   ...
        #
        #   @param rate_card_id [String]
        #
        #   @param recurring_commits [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit>]
        #
        #   @param recurring_credits [Array<MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit>]
        #
        #   @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
        #
        #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
        #
        #   @param scheduled_charges [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge>]
        #
        #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
        #   ...
        #
        #   @param spend_threshold_configuration [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration]
        #
        #   @param total_contract_value [Float] This field's availability is dependent on your client's configuration.
        #
        #   @param transition [MetronomeSDK::Models::V1::ContractCreateParams::Transition]
        #
        #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
        #   ...
        #
        #   @param usage_filter [MetronomeSDK::Models::BaseUsageFilter]
        #
        #   @param usage_statement_schedule [MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule]
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class BillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute billing_provider
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider, nil]
          optional :billing_provider,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider }

          # @!attribute billing_provider_configuration_id
          #   The Metronome ID of the billing provider configuration
          #
          #   @return [String, nil]
          optional :billing_provider_configuration_id, String

          # @!attribute delivery_method
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod, nil]
          optional :delivery_method,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod }

          # @!method initialize(billing_provider: nil, billing_provider_configuration_id: nil, delivery_method: nil)
          #   The billing provider configuration associated with a contract.
          #
          #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::BillingProvider]
          #
          #   @param billing_provider_configuration_id [String] The Metronome ID of the billing provider configuration
          #
          #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod]

          # @see MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration#billing_provider
          module BillingProvider
            extend MetronomeSDK::Internal::Type::Enum

            AWS_MARKETPLACE = :aws_marketplace
            AZURE_MARKETPLACE = :azure_marketplace
            GCP_MARKETPLACE = :gcp_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::BillingProviderConfiguration#delivery_method
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

        class Commit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::Type]
          required :type, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::Type }

          # @!attribute access_schedule
          #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          #   commits only one schedule item is allowed and amount must match invoice_schedule
          #   total.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule }

          # @!attribute amount
          #   (DEPRECATED) Use access_schedule and invoice_schedule instead.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute applicable_product_ids
          #   Which products the commit applies to. If both applicable_product_ids and
          #   applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #   Which tags the commit applies to. If both applicable_product_ids and
          #   applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute invoice_schedule
          #   Required for "POSTPAID" commits: the true up invoice will be generated at this
          #   time and only one schedule item is allowed; the total must match access_schedule
          #   amount. Optional for "PREPAID" commits: if not provided, this will be a
          #   "complimentary" commit with no invoice.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule, nil]
          optional :invoice_schedule, -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule }

          # @!attribute name
          #   displayed on invoices
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!attribute payment_gate_config
          #   optionally payment gate this commit
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig, nil]
          optional :payment_gate_config,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig }

          # @!attribute priority
          #   If multiple commits are applicable, the one with the lower priority will apply
          #   first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::RateType }

          # @!attribute rollover_fraction
          #   Fraction of unused segments that will be rolled over. Must be between 0 and 1.
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float

          # @!attribute temporary_id
          #   A temporary ID for the commit that can be used to reference the commit for
          #   commit specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!method initialize(product_id:, type:, access_schedule: nil, amount: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, invoice_schedule: nil, name: nil, netsuite_sales_order_id: nil, payment_gate_config: nil, priority: nil, rate_type: nil, rollover_fraction: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractCreateParams::Commit} for more details.
          #
          #   @param product_id [String]
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::Type]
          #
          #   @param access_schedule [MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule] Required: Schedule for distributing the commit to the customer. For "POSTPAID" c
          #   ...
          #
          #   @param amount [Float] (DEPRECATED) Use access_schedule and invoice_schedule instead.
          #
          #   @param applicable_product_ids [Array<String>] Which products the commit applies to. If both applicable_product_ids and applica
          #   ...
          #
          #   @param applicable_product_tags [Array<String>] Which tags the commit applies to. If both applicable*product_ids and applicable*
          #   ...
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          #   @param invoice_schedule [MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule] Required for "POSTPAID" commits: the true up invoice will be generated at this t
          #   ...
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig] optionally payment gate this commit
          #
          #   @param priority [Float] If multiple commits are applicable, the one with the lower priority will apply f
          #   ...
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::RateType]
          #
          #   @param rollover_fraction [Float] Fraction of unused segments that will be rolled over. Must be between 0 and 1.
          #
          #   @param temporary_id [String] A temporary ID for the commit that can be used to reference the commit for commi
          #   ...

          # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID = :PREPAID
            POSTPAID = :POSTPAID

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule::ScheduleItem] }

            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!method initialize(schedule_items:, credit_type_id: nil)
            #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
            #   commits only one schedule item is allowed and amount must match invoice_schedule
            #   total.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit::AccessSchedule::ScheduleItem>]
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
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

              # @!method initialize(amount:, ending_before:, starting_at:)
              #   @param amount [Float]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive)
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive)
            end
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit#invoice_schedule
          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule }

            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem] }

            # @!method initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule} for
            #   more details.
            #
            #   Required for "POSTPAID" commits: the true up invoice will be generated at this
            #   time and only one schedule item is allowed; the total must match access_schedule
            #   amount. Optional for "PREPAID" commits: if not provided, this will be a
            #   "complimentary" commit with no invoice.
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed.
            #
            #   @param recurring_schedule [MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
            #   ...
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

            # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule#recurring_schedule
            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
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

              # @!attribute amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #   amount is sent, the unit_price is assumed to be the amount and quantity is
              #   inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount and must be specified with unit_price. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount and must be specified with quantity. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!method initialize(amount_distribution:, ending_before:, frequency:, starting_at:, amount: nil, quantity: nil, unit_price: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule}
              #   for more details.
              #
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #   ...
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #   ...
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #   ...

              # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule#amount_distribution
              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule#frequency
              module Frequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute timestamp
              #   timestamp of the scheduled event
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #   amount is sent, the unit_price is assumed to be the amount and quantity is
              #   inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount and must be specified with unit_price. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount and must be specified with quantity. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!method initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem}
              #   for more details.
              #
              #   @param timestamp [Time] timestamp of the scheduled event
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #   ...
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #   ...
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #   ...
            end
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit#payment_gate_config
          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType }

            # @!attribute stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig }

            # @!attribute tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType }

            # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig} for
            #   more details.
            #
            #   optionally payment gate this commit
            #
            #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
            #   ...
            #
            #   @param stripe_config [MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n
            #   ...

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            #
            # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig#payment_gate_type
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig#stripe_config
            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType }

              # @!method initialize(payment_type:)
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

              # If left blank, will default to INVOICE
              #
              # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig::StripeConfig#payment_type
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
            # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit::PaymentGateConfig#tax_type
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::Commit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CreditBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute commit
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::Commit]
          required :commit,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::Commit }

          # @!attribute is_enabled
          #   When set to false, the contract will not be evaluated against the
          #   threshold_amount. Toggling to true will result an immediate evaluation,
          #   regardless of prior state.
          #
          #   @return [Boolean]
          required :is_enabled, MetronomeSDK::Internal::Type::Boolean

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
          #   lowers to this amount, a threshold charge will be initiated.
          #
          #   @return [Float]
          required :threshold_amount, Float

          # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration}
          #   for more details.
          #
          #   @param commit [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::Commit]
          #
          #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
          #   ...
          #
          #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig]
          #
          #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
          #
          #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's balance
          #   ...

          # @see MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration#commit
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
            #   {MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::Commit}
            #   for more details.
            #
            #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
            #   ...
            #
            #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If both applicable_product_ids a
            #   ...
            #
            #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If both applicable_product_ids and a
            #   ...
            #
            #   @param description [String]
            #
            #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            #   ...
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration#payment_gate_config
          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType }

            # @!attribute stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig }

            # @!attribute tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType }

            # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig}
            #   for more details.
            #
            #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
            #   ...
            #
            #   @param stripe_config [MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n
            #   ...

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            #
            # @see MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

              # @!method initialize(payment_type:)
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

              # If left blank, will default to INVOICE
              #
              # @see MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
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
            # @see MetronomeSDK::Models::V1::ContractCreateParams::CreditBalanceThresholdConfiguration::PaymentGateConfig#tax_type
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class Credit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute access_schedule
          #   Schedule for distributing the credit to the customer.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule]
          required :access_schedule, -> { MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule }

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute applicable_product_ids
          #   Which products the credit applies to. If both applicable_product_ids and
          #   applicable_product_tags are not provided, the credit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #   Which tags the credit applies to. If both applicable_product_ids and
          #   applicable_product_tags are not provided, the credit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute name
          #   displayed on invoices
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!attribute priority
          #   If multiple credits are applicable, the one with the lower priority will apply
          #   first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Credit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Credit::RateType }

          # @!method initialize(access_schedule:, product_id:, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractCreateParams::Credit} for more details.
          #
          #   @param access_schedule [MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule] Schedule for distributing the credit to the customer.
          #
          #   @param product_id [String]
          #
          #   @param applicable_product_ids [Array<String>] Which products the credit applies to. If both applicable_product_ids and applica
          #   ...
          #
          #   @param applicable_product_tags [Array<String>] Which tags the credit applies to. If both applicable*product_ids and applicable*
          #   ...
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param priority [Float] If multiple credits are applicable, the one with the lower priority will apply f
          #   ...
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Credit::RateType]

          # @see MetronomeSDK::Models::V1::ContractCreateParams::Credit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule::ScheduleItem] }

            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!method initialize(schedule_items:, credit_type_id: nil)
            #   Schedule for distributing the credit to the customer.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractCreateParams::Credit::AccessSchedule::ScheduleItem>]
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
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

              # @!method initialize(amount:, ending_before:, starting_at:)
              #   @param amount [Float]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive)
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive)
            end
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::Credit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Discount < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute schedule
          #   Must provide either schedule_items or recurring_schedule.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule]
          required :schedule, -> { MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule }

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute name
          #   displayed on invoices
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!method initialize(product_id:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
          #   @param product_id [String]
          #
          #   @param schedule [MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule] Must provide either schedule_items or recurring_schedule.
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

          # @see MetronomeSDK::Models::V1::ContractCreateParams::Discount#schedule
          class Schedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule }

            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::ScheduleItem] }

            # @!method initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule} for more
            #   details.
            #
            #   Must provide either schedule_items or recurring_schedule.
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed.
            #
            #   @param recurring_schedule [MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
            #   ...
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

            # @see MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule#recurring_schedule
            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
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

              # @!attribute amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #   amount is sent, the unit_price is assumed to be the amount and quantity is
              #   inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount and must be specified with unit_price. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount and must be specified with quantity. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!method initialize(amount_distribution:, ending_before:, frequency:, starting_at:, amount: nil, quantity: nil, unit_price: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule}
              #   for more details.
              #
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency]
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #   ...
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #   ...
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #   ...

              # @see MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule#amount_distribution
              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::RecurringSchedule#frequency
              module Frequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute timestamp
              #   timestamp of the scheduled event
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #   amount is sent, the unit_price is assumed to be the amount and quantity is
              #   inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount and must be specified with unit_price. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount and must be specified with quantity. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!method initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractCreateParams::Discount::Schedule::ScheduleItem}
              #   for more details.
              #
              #   @param timestamp [Time] timestamp of the scheduled event
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #   ...
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #   ...
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #   ...
            end
          end
        end

        # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
        # prices automatically. EXPLICIT prioritization requires specifying priorities for
        # each multiplier; the one with the lowest priority value will be prioritized
        # first. If tiered overrides are used, prioritization must be explicit.
        module MultiplierOverridePrioritization
          extend MetronomeSDK::Internal::Type::Enum

          LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
          EXPLICIT = :EXPLICIT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Override < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute starting_at
          #   RFC 3339 timestamp indicating when the override will start applying (inclusive)
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute applicable_product_tags
          #   tags identifying products whose rates are being overridden. Cannot be used in
          #   conjunction with override_specifiers.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute ending_before
          #   RFC 3339 timestamp indicating when the override will stop applying (exclusive)
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute entitled
          #
          #   @return [Boolean, nil]
          optional :entitled, MetronomeSDK::Internal::Type::Boolean

          # @!attribute is_commit_specific
          #   Indicates whether the override should only apply to commits. Defaults to
          #   `false`. If `true`, you can specify relevant commits in `override_specifiers` by
          #   passing `commit_ids`. if you do not specify `commit_ids`, then the override will
          #   apply when consuming any prepaid or postpaid commit.
          #
          #   @return [Boolean, nil]
          optional :is_commit_specific, MetronomeSDK::Internal::Type::Boolean

          # @!attribute multiplier
          #   Required for MULTIPLIER type. Must be >=0.
          #
          #   @return [Float, nil]
          optional :multiplier, Float

          # @!attribute override_specifiers
          #   Cannot be used in conjunction with product_id or applicable_product_tags. If
          #   provided, the override will apply to all products with the specified specifiers.
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override::OverrideSpecifier>, nil]
          optional :override_specifiers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Override::OverrideSpecifier] }

          # @!attribute overwrite_rate
          #   Required for OVERWRITE type.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate, nil]
          optional :overwrite_rate, -> { MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate }

          # @!attribute priority
          #   Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
          #   Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered
          #   and multiplier overrides are prioritized by their priority value (lowest first).
          #   Must be > 0.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute product_id
          #   ID of the product whose rate is being overridden. Cannot be used in conjunction
          #   with override_specifiers.
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!attribute target
          #   Indicates whether the override applies to commit rates or list rates. Can only
          #   be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          #   `"LIST_RATE"`.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::Target, nil]
          optional :target, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Override::Target }

          # @!attribute tiers
          #   Required for TIERED type. Must have at least one tier.
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override::Tier>, nil]
          optional :tiers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::Override::Tier] }

          # @!attribute type
          #   Overwrites are prioritized over multipliers and tiered overrides.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::Type, nil]
          optional :type, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Override::Type }

          # @!method initialize(starting_at:, applicable_product_tags: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, override_specifiers: nil, overwrite_rate: nil, priority: nil, product_id: nil, target: nil, tiers: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractCreateParams::Override} for more details.
          #
          #   @param starting_at [Time] RFC 3339 timestamp indicating when the override will start applying (inclusive)
          #
          #   @param applicable_product_tags [Array<String>] tags identifying products whose rates are being overridden. Cannot be used in co
          #   ...
          #
          #   @param ending_before [Time] RFC 3339 timestamp indicating when the override will stop applying (exclusive)
          #
          #   @param entitled [Boolean]
          #
          #   @param is_commit_specific [Boolean] Indicates whether the override should only apply to commits. Defaults to `false`
          #   ...
          #
          #   @param multiplier [Float] Required for MULTIPLIER type. Must be >=0.
          #
          #   @param override_specifiers [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override::OverrideSpecifier>] Cannot be used in conjunction with product_id or applicable_product_tags. If pro
          #   ...
          #
          #   @param overwrite_rate [MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate] Required for OVERWRITE type.
          #
          #   @param priority [Float] Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
          #   ...
          #
          #   @param product_id [String] ID of the product whose rate is being overridden. Cannot be used in conjunction
          #   ...
          #
          #   @param target [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::Target] Indicates whether the override applies to commit rates or list rates. Can only b
          #   ...
          #
          #   @param tiers [Array<MetronomeSDK::Models::V1::ContractCreateParams::Override::Tier>] Required for TIERED type. Must have at least one tier.
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::Type] Overwrites are prioritized over multipliers and tiered overrides.

          class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #   one of product_id, product_tags, pricing_group_values, or
            #   presentation_group_values. If provided, the override will only apply to the
            #   specified commits. If not provided, the override will apply to all commits.
            #
            #   @return [Array<String>, nil]
            optional :commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute presentation_group_values
            #   A map of group names to values. The override will only apply to line items with
            #   the specified presentation group values.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute pricing_group_values
            #   A map of pricing group names to values. The override will only apply to products
            #   with the specified pricing group values.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute product_id
            #   If provided, the override will only apply to the product with the specified ID.
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!attribute product_tags
            #   If provided, the override will only apply to products with all the specified
            #   tags.
            #
            #   @return [Array<String>, nil]
            optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute recurring_commit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #   one of product_id, product_tags, pricing_group_values, or
            #   presentation_group_values. If provided, the override will only apply to commits
            #   created by the specified recurring commit ids.
            #
            #   @return [Array<String>, nil]
            optional :recurring_commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute recurring_credit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #   one of product_id, product_tags, pricing_group_values, or
            #   presentation_group_values. If provided, the override will only apply to credits
            #   created by the specified recurring credit ids.
            #
            #   @return [Array<String>, nil]
            optional :recurring_credit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil, recurring_credit_ids: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractCreateParams::Override::OverrideSpecifier}
            #   for more details.
            #
            #   @param commit_ids [Array<String>] Can only be used for commit specific overrides. Must be used in conjunction with
            #   ...
            #
            #   @param presentation_group_values [Hash{Symbol=>String}] A map of group names to values. The override will only apply to line items with
            #   ...
            #
            #   @param pricing_group_values [Hash{Symbol=>String}] A map of pricing group names to values. The override will only apply to products
            #   ...
            #
            #   @param product_id [String] If provided, the override will only apply to the product with the specified ID.
            #
            #   @param product_tags [Array<String>] If provided, the override will only apply to products with all the specified tag
            #   ...
            #
            #   @param recurring_commit_ids [Array<String>] Can only be used for commit specific overrides. Must be used in conjunction with
            #   ...
            #
            #   @param recurring_credit_ids [Array<String>] Can only be used for commit specific overrides. Must be used in conjunction with
            #   ...
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::Override#overwrite_rate
          class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate::RateType }

            # @!attribute credit_type_id
            #
            #   @return [String, nil]
            optional :credit_type_id, String

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
            optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::Tier] }

            # @!method initialize(rate_type:, credit_type_id: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate} for
            #   more details.
            #
            #   Required for OVERWRITE type.
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate::RateType]
            #
            #   @param credit_type_id [String]
            #
            #   @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
            #   ...
            #
            #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
            #   ...
            #
            #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
            #   ...
            #
            #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
            #
            #   @param tiers [Array<MetronomeSDK::Models::Tier>] Only set for TIERED rate_type.

            # @see MetronomeSDK::Models::V1::ContractCreateParams::Override::OverwriteRate#rate_type
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

          # Indicates whether the override applies to commit rates or list rates. Can only
          # be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          # `"LIST_RATE"`.
          #
          # @see MetronomeSDK::Models::V1::ContractCreateParams::Override#target
          module Target
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Tier < MetronomeSDK::Internal::Type::BaseModel
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

          # Overwrites are prioritized over multipliers and tiered overrides.
          #
          # @see MetronomeSDK::Models::V1::ContractCreateParams::Override#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            OVERWRITE = :OVERWRITE
            MULTIPLIER = :MULTIPLIER
            TIERED = :TIERED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ProfessionalService < MetronomeSDK::Internal::Type::BaseModel
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
          #   amount.
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute unit_price
          #   Unit price for the charge. Will be multiplied by quantity to determine the
          #   amount and must be specified.
          #
          #   @return [Float]
          required :unit_price, Float

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!method initialize(max_amount:, product_id:, quantity:, unit_price:, custom_fields: nil, description: nil, netsuite_sales_order_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractCreateParams::ProfessionalService} for more
          #   details.
          #
          #   @param max_amount [Float] Maximum amount for the term.
          #
          #   @param product_id [String]
          #
          #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
          #   ...
          #
          #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
          #   ...
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param description [String]
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
        end

        class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
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

          # @!attribute description
          #   Will be passed down to the individual commits
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute ending_before
          #   Determines when the contract will stop creating recurring commits. optional
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute invoice_amount
          #   The amount the customer should be billed for the commit. Not required.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::InvoiceAmount, nil]
          optional :invoice_amount,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::InvoiceAmount }

          # @!attribute name
          #   displayed on invoices. will be passed through to the individual commits
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
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::Proration, nil]
          optional :proration,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::Proration }

          # @!attribute rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RateType, nil]
          optional :rate_type,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RateType }

          # @!attribute recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #   The commits will be created on the usage invoice frequency. If provided: - The
          #   period defined in the duration will correspond to this frequency. - Commits will
          #   be created aligned with the recurring commit's start_date rather than the usage
          #   invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency }

          # @!attribute rollover_fraction
          #   Will be passed down to the individual commits. This controls how much of an
          #   individual unexpired commit will roll over upon contract transition. Must be
          #   between 0 and 1.
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float

          # @!attribute temporary_id
          #   A temporary ID that can be used to reference the recurring commit for commit
          #   specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!method initialize(access_amount:, commit_duration:, priority:, product_id:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, ending_before: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, rate_type: nil, recurrence_frequency: nil, rollover_fraction: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit} for more
          #   details.
          #
          #   @param access_amount [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::AccessAmount] The amount of commit to grant.
          #
          #   @param commit_duration [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration] The amount of time the created commits will be valid for.
          #
          #   @param priority [Float] Will be passed down to the individual commits
          #
          #   @param product_id [String]
          #
          #   @param starting_at [Time] determines the start time for the first commit
          #
          #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
          #
          #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
          #
          #   @param description [String] Will be passed down to the individual commits
          #
          #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. optional
          #
          #   @param invoice_amount [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
          #
          #   @param name [String] displayed on invoices. will be passed through to the individual commits
          #
          #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
          #
          #   @param proration [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
          #   ...
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
          #
          #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
          #   ...
          #
          #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
          #   ...
          #
          #   @param temporary_id [String] A temporary ID that can be used to reference the recurring commit for commit spe
          #   ...

          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit#access_amount
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

          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit#commit_duration
          class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit }

            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!method initialize(unit:, value:)
            #   The amount of time the created commits will be valid for.
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration::Unit]
            #   @param value [Float]

            # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit::CommitDuration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              PERIODS = :PERIODS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit#invoice_amount
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
          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit#proration
          module Proration
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            FIRST = :FIRST
            LAST = :LAST
            FIRST_AND_LAST = :FIRST_AND_LAST

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Whether the created commits will use the commit rate or list rate
          #
          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The frequency at which the recurring commits will be created. If not provided: -
          # The commits will be created on the usage invoice frequency. If provided: - The
          # period defined in the duration will correspond to this frequency. - Commits will
          # be created aligned with the recurring commit's start_date rather than the usage
          # invoice dates.
          #
          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCommit#recurrence_frequency
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

          # @!attribute description
          #   Will be passed down to the individual commits
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute ending_before
          #   Determines when the contract will stop creating recurring commits. optional
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute name
          #   displayed on invoices. will be passed through to the individual commits
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
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::Proration, nil]
          optional :proration,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::Proration }

          # @!attribute rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RateType, nil]
          optional :rate_type,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RateType }

          # @!attribute recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #   The commits will be created on the usage invoice frequency. If provided: - The
          #   period defined in the duration will correspond to this frequency. - Commits will
          #   be created aligned with the recurring commit's start_date rather than the usage
          #   invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency }

          # @!attribute rollover_fraction
          #   Will be passed down to the individual commits. This controls how much of an
          #   individual unexpired commit will roll over upon contract transition. Must be
          #   between 0 and 1.
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float

          # @!attribute temporary_id
          #   A temporary ID that can be used to reference the recurring commit for commit
          #   specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!method initialize(access_amount:, commit_duration:, priority:, product_id:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, ending_before: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, rate_type: nil, recurrence_frequency: nil, rollover_fraction: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit} for more
          #   details.
          #
          #   @param access_amount [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::AccessAmount] The amount of commit to grant.
          #
          #   @param commit_duration [MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration] The amount of time the created commits will be valid for.
          #
          #   @param priority [Float] Will be passed down to the individual commits
          #
          #   @param product_id [String]
          #
          #   @param starting_at [Time] determines the start time for the first commit
          #
          #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
          #
          #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
          #
          #   @param description [String] Will be passed down to the individual commits
          #
          #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. optional
          #
          #   @param name [String] displayed on invoices. will be passed through to the individual commits
          #
          #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
          #
          #   @param proration [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
          #   ...
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
          #
          #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
          #   ...
          #
          #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
          #   ...
          #
          #   @param temporary_id [String] A temporary ID that can be used to reference the recurring commit for commit spe
          #   ...

          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit#access_amount
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

          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit#commit_duration
          class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit }

            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!method initialize(unit:, value:)
            #   The amount of time the created commits will be valid for.
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration::Unit]
            #   @param value [Float]

            # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit::CommitDuration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              PERIODS = :PERIODS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit#proration
          module Proration
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            FIRST = :FIRST
            LAST = :LAST
            FIRST_AND_LAST = :FIRST_AND_LAST

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Whether the created commits will use the commit rate or list rate
          #
          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The frequency at which the recurring commits will be created. If not provided: -
          # The commits will be created on the usage invoice frequency. If provided: - The
          # period defined in the duration will correspond to this frequency. - Commits will
          # be created aligned with the recurring commit's start_date rather than the usage
          # invoice dates.
          #
          # @see MetronomeSDK::Models::V1::ContractCreateParams::RecurringCredit#recurrence_frequency
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

          # @!attribute applicable_product_ids
          #   Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #   Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute aws_options
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::AwsOptions, nil]
          optional :aws_options, -> { MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::AwsOptions }

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute gcp_options
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::GcpOptions, nil]
          optional :gcp_options, -> { MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::GcpOptions }

          # @!attribute reseller_contract_value
          #
          #   @return [Float, nil]
          optional :reseller_contract_value, Float

          # @!method initialize(fraction:, netsuite_reseller_id:, reseller_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, aws_options: nil, ending_before: nil, gcp_options: nil, reseller_contract_value: nil)
          #   @param fraction [Float]
          #
          #   @param netsuite_reseller_id [String]
          #
          #   @param reseller_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::ResellerType]
          #
          #   @param starting_at [Time]
          #
          #   @param applicable_product_ids [Array<String>] Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @param applicable_product_tags [Array<String>] Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @param aws_options [MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::AwsOptions]
          #
          #   @param ending_before [Time]
          #
          #   @param gcp_options [MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty::GcpOptions]
          #
          #   @param reseller_contract_value [Float]

          # @see MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty#reseller_type
          module ResellerType
            extend MetronomeSDK::Internal::Type::Enum

            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty#aws_options
          class AwsOptions < MetronomeSDK::Internal::Type::BaseModel
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

            # @!method initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil)
            #   @param aws_account_number [String]
            #   @param aws_offer_id [String]
            #   @param aws_payer_reference_id [String]
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::ResellerRoyalty#gcp_options
          class GcpOptions < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute gcp_account_id
            #
            #   @return [String, nil]
            optional :gcp_account_id, String

            # @!attribute gcp_offer_id
            #
            #   @return [String, nil]
            optional :gcp_offer_id, String

            # @!method initialize(gcp_account_id: nil, gcp_offer_id: nil)
            #   @param gcp_account_id [String]
            #   @param gcp_offer_id [String]
          end
        end

        class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute schedule
          #   Must provide either schedule_items or recurring_schedule.
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule]
          required :schedule, -> { MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule }

          # @!attribute name
          #   displayed on invoices
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!method initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil)
          #   @param product_id [String]
          #
          #   @param schedule [MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule] Must provide either schedule_items or recurring_schedule.
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

          # @see MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge#schedule
          class Schedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule }

            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem] }

            # @!method initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule} for
            #   more details.
            #
            #   Must provide either schedule_items or recurring_schedule.
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed.
            #
            #   @param recurring_schedule [MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
            #   ...
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

            # @see MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule#recurring_schedule
            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
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

              # @!attribute amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #   amount is sent, the unit_price is assumed to be the amount and quantity is
              #   inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount and must be specified with unit_price. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount and must be specified with quantity. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!method initialize(amount_distribution:, ending_before:, frequency:, starting_at:, amount: nil, quantity: nil, unit_price: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule}
              #   for more details.
              #
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #   ...
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #   ...
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #   ...

              # @see MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule#amount_distribution
              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule#frequency
              module Frequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute timestamp
              #   timestamp of the scheduled event
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #   amount is sent, the unit_price is assumed to be the amount and quantity is
              #   inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount and must be specified with unit_price. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount and must be specified with quantity. If specified amount cannot be
              #   provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!method initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem}
              #   for more details.
              #
              #   @param timestamp [Time] timestamp of the scheduled event
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #   ...
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #   ...
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #   ...
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

          ALL = :ALL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute commit
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::Commit]
          required :commit,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::Commit }

          # @!attribute is_enabled
          #   When set to false, the contract will not be evaluated against the
          #   threshold_amount. Toggling to true will result an immediate evaluation,
          #   regardless of prior state.
          #
          #   @return [Boolean]
          required :is_enabled, MetronomeSDK::Internal::Type::Boolean

          # @!attribute payment_gate_config
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig]
          required :payment_gate_config,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig }

          # @!attribute threshold_amount
          #   Specify the threshold amount for the contract. Each time the contract's usage
          #   hits this amount, a threshold charge will be initiated.
          #
          #   @return [Float]
          required :threshold_amount, Float

          # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration}
          #   for more details.
          #
          #   @param commit [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::Commit]
          #
          #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
          #   ...
          #
          #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig]
          #
          #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi
          #   ...

          # @see MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration#commit
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
            #   {MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::Commit}
            #   for more details.
            #
            #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
            #   ...
            #
            #   @param description [String]
            #
            #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            #   ...
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration#payment_gate_config
          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

            # @!attribute stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

            # @!attribute tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

            # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig}
            #   for more details.
            #
            #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
            #   ...
            #
            #   @param stripe_config [MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n
            #   ...

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            #
            # @see MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig#stripe_config
            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

              # @!method initialize(payment_type:)
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

              # If left blank, will default to INVOICE
              #
              # @see MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
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
            # @see MetronomeSDK::Models::V1::ContractCreateParams::SpendThresholdConfiguration::PaymentGateConfig#tax_type
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class Transition < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute from_contract_id
          #
          #   @return [String]
          required :from_contract_id, String

          # @!attribute type
          #   This field's available values may vary based on your client's configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Transition::Type]
          required :type, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Transition::Type }

          # @!attribute future_invoice_behavior
          #
          #   @return [MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior, nil]
          optional :future_invoice_behavior,
                   -> { MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior }

          # @!method initialize(from_contract_id:, type:, future_invoice_behavior: nil)
          #   @param from_contract_id [String]
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Transition::Type] This field's available values may vary based on your client's configuration.
          #
          #   @param future_invoice_behavior [MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior]

          # This field's available values may vary based on your client's configuration.
          #
          # @see MetronomeSDK::Models::V1::ContractCreateParams::Transition#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            SUPERSEDE = :SUPERSEDE
            RENEWAL = :RENEWAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::ContractCreateParams::Transition#future_invoice_behavior
          class FutureInvoiceBehavior < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute trueup
            #   Controls whether future trueup invoices are billed or removed. Default behavior
            #   is AS_IS if not specified.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup, nil]
            optional :trueup,
                     enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup },
                     nil?: true

            # @!method initialize(trueup: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior}
            #   for more details.
            #
            #   @param trueup [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup, nil] Controls whether future trueup invoices are billed or removed. Default behavior
            #   ...

            # Controls whether future trueup invoices are billed or removed. Default behavior
            # is AS_IS if not specified.
            #
            # @see MetronomeSDK::Models::V1::ContractCreateParams::Transition::FutureInvoiceBehavior#trueup
            module Trueup
              extend MetronomeSDK::Internal::Type::Enum

              REMOVE = :REMOVE
              AS_IS = :AS_IS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute frequency
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Frequency]
          required :frequency,
                   enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Frequency }

          # @!attribute billing_anchor_date
          #   Required when using CUSTOM_DATE. This option lets you set a historical billing
          #   anchor date, aligning future billing cycles with a chosen cadence. For example,
          #   if a contract starts on 2024-09-15 and you set the anchor date to 2024-09-10
          #   with a MONTHLY frequency, the first usage statement will cover 09-15 to 10-10.
          #   Subsequent statements will follow the 10th of each month.
          #
          #   @return [Time, nil]
          optional :billing_anchor_date, Time

          # @!attribute day
          #   If not provided, defaults to the first day of the month.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Day, nil]
          optional :day, enum: -> { MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Day }

          # @!attribute invoice_generation_starting_at
          #   The date Metronome should start generating usage invoices. If unspecified,
          #   contract start date will be used. This is useful to set if you want to import
          #   historical invoices via our 'Create Historical Invoices' API rather than having
          #   Metronome automatically generate them.
          #
          #   @return [Time, nil]
          optional :invoice_generation_starting_at, Time

          # @!method initialize(frequency:, billing_anchor_date: nil, day: nil, invoice_generation_starting_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule} for
          #   more details.
          #
          #   @param frequency [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Frequency]
          #
          #   @param billing_anchor_date [Time] Required when using CUSTOM_DATE. This option lets you set a historical billing a
          #   ...
          #
          #   @param day [Symbol, MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule::Day] If not provided, defaults to the first day of the month.
          #
          #   @param invoice_generation_starting_at [Time] The date Metronome should start generating usage invoices. If unspecified, contr
          #   ...

          # @see MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule#frequency
          module Frequency
            extend MetronomeSDK::Internal::Type::Enum

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # If not provided, defaults to the first day of the month.
          #
          # @see MetronomeSDK::Models::V1::ContractCreateParams::UsageStatementSchedule#day
          module Day
            extend MetronomeSDK::Internal::Type::Enum

            FIRST_OF_MONTH = :FIRST_OF_MONTH
            CONTRACT_START = :CONTRACT_START
            CUSTOM_DATE = :CUSTOM_DATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
