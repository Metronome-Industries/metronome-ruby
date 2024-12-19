# frozen_string_literal: true

module Metronome
  module Models
    class ContractCreateParams < Metronome::BaseModel
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
      #   @return [Metronome::Models::ContractCreateParams::BillingProviderConfiguration]
      optional :billing_provider_configuration,
               -> { Metronome::Models::ContractCreateParams::BillingProviderConfiguration }

      # @!attribute commits
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::Commit>]
      optional :commits, Metronome::ArrayOf[-> { Metronome::Models::ContractCreateParams::Commit }]

      # @!attribute credits
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::Credit>]
      optional :credits, Metronome::ArrayOf[-> { Metronome::Models::ContractCreateParams::Credit }]

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol => String}]
      optional :custom_fields, Metronome::HashOf[String]

      # @!attribute discounts
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::Discount>]
      optional :discounts, Metronome::ArrayOf[-> { Metronome::Models::ContractCreateParams::Discount }]

      # @!attribute ending_before
      #   exclusive contract end time
      #
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute multiplier_override_prioritization
      #   Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. If tiered overrides are used, prioritization must be explicit.
      #
      #   @return [Symbol, Metronome::Models::ContractCreateParams::MultiplierOverridePrioritization]
      optional :multiplier_override_prioritization,
               enum: -> { Metronome::Models::ContractCreateParams::MultiplierOverridePrioritization }

      # @!attribute name
      #
      #   @return [String]
      optional :name, String

      # @!attribute net_payment_terms_days
      #
      #   @return [Float]
      optional :net_payment_terms_days, Float

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!attribute overrides
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::Override>]
      optional :overrides, Metronome::ArrayOf[-> { Metronome::Models::ContractCreateParams::Override }]

      # @!attribute professional_services
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::ProfessionalService>]
      optional :professional_services,
               Metronome::ArrayOf[-> { Metronome::Models::ContractCreateParams::ProfessionalService }]

      # @!attribute rate_card_alias
      #   Selects the rate card linked to the specified alias as of the contract's start date.
      #
      #   @return [String]
      optional :rate_card_alias, String

      # @!attribute rate_card_id
      #
      #   @return [String]
      optional :rate_card_id, String

      # @!attribute reseller_royalties
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::ResellerRoyalty>]
      optional :reseller_royalties,
               Metronome::ArrayOf[-> { Metronome::Models::ContractCreateParams::ResellerRoyalty }]

      # @!attribute salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :salesforce_opportunity_id, String

      # @!attribute scheduled_charges
      #
      #   @return [Array<Metronome::Models::ContractCreateParams::ScheduledCharge>]
      optional :scheduled_charges,
               Metronome::ArrayOf[-> { Metronome::Models::ContractCreateParams::ScheduledCharge }]

      # @!attribute total_contract_value
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Float]
      optional :total_contract_value, Float

      # @!attribute transition
      #
      #   @return [Metronome::Models::ContractCreateParams::Transition]
      optional :transition, -> { Metronome::Models::ContractCreateParams::Transition }

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error.
      #
      #   @return [String]
      optional :uniqueness_key, String

      # @!attribute usage_filter
      #
      #   @return [Metronome::Models::BaseUsageFilter]
      optional :usage_filter, -> { Metronome::Models::BaseUsageFilter }

      # @!attribute usage_statement_schedule
      #
      #   @return [Metronome::Models::ContractCreateParams::UsageStatementSchedule]
      optional :usage_statement_schedule,
               -> {
                 Metronome::Models::ContractCreateParams::UsageStatementSchedule
               }

      # @!parse
      #   # @param customer_id [String]
      #   #
      #   # @param starting_at [String] inclusive contract start time
      #   #
      #   # @param billing_provider_configuration [Metronome::Models::ContractCreateParams::BillingProviderConfiguration, nil] The billing provider configuration associated with a contract.
      #   #
      #   # @param commits [Array<Metronome::Models::ContractCreateParams::Commit>, nil]
      #   #
      #   # @param credits [Array<Metronome::Models::ContractCreateParams::Credit>, nil]
      #   #
      #   # @param custom_fields [Hash{Symbol => String}, nil]
      #   #
      #   # @param discounts [Array<Metronome::Models::ContractCreateParams::Discount>, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param ending_before [String, nil] exclusive contract end time
      #   #
      #   # @param multiplier_override_prioritization [String, nil] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
      #   #   prices automatically. EXPLICIT prioritization requires specifying priorities for
      #   #   each multiplier; the one with the lowest priority value will be prioritized
      #   #   first. If tiered overrides are used, prioritization must be explicit.
      #   #
      #   # @param name [String, nil]
      #   #
      #   # @param net_payment_terms_days [Float, nil]
      #   #
      #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param overrides [Array<Metronome::Models::ContractCreateParams::Override>, nil]
      #   #
      #   # @param professional_services [Array<Metronome::Models::ContractCreateParams::ProfessionalService>, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param rate_card_alias [String, nil] Selects the rate card linked to the specified alias as of the contract's start
      #   #   date.
      #   #
      #   # @param rate_card_id [String, nil]
      #   #
      #   # @param reseller_royalties [Array<Metronome::Models::ContractCreateParams::ResellerRoyalty>, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param salesforce_opportunity_id [String, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param scheduled_charges [Array<Metronome::Models::ContractCreateParams::ScheduledCharge>, nil]
      #   #
      #   # @param total_contract_value [Float, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param transition [Metronome::Models::ContractCreateParams::Transition, nil]
      #   #
      #   # @param uniqueness_key [String, nil] Prevents the creation of duplicates. If a request to create a record is made
      #   #   with a previously used uniqueness key, a new record will not be created and the
      #   #   request will fail with a 409 error.
      #   #
      #   # @param usage_filter [Metronome::Models::BaseUsageFilter, nil]
      #   #
      #   # @param usage_statement_schedule [Metronome::Models::ContractCreateParams::UsageStatementSchedule, nil]
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
      #     reseller_royalties: nil,
      #     salesforce_opportunity_id: nil,
      #     scheduled_charges: nil,
      #     total_contract_value: nil,
      #     transition: nil,
      #     uniqueness_key: nil,
      #     usage_filter: nil,
      #     usage_statement_schedule: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class BillingProviderConfiguration < Metronome::BaseModel
        # @!attribute billing_provider
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::BillingProviderConfiguration::BillingProvider]
        optional :billing_provider,
                 enum: -> {
                   Metronome::Models::ContractCreateParams::BillingProviderConfiguration::BillingProvider
                 }

        # @!attribute billing_provider_configuration_id
        #   The Metronome ID of the billing provider configuration
        #
        #   @return [String]
        optional :billing_provider_configuration_id, String

        # @!attribute delivery_method
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod]
        optional :delivery_method,
                 enum: -> {
                   Metronome::Models::ContractCreateParams::BillingProviderConfiguration::DeliveryMethod
                 }

        # @!parse
        #   # The billing provider configuration associated with a contract.
        #   #
        #   # @param billing_provider [String, nil]
        #   #
        #   # @param billing_provider_configuration_id [String, nil] The Metronome ID of the billing provider configuration
        #   #
        #   # @param delivery_method [String, nil]
        #   #
        #   def initialize(billing_provider: nil, billing_provider_configuration_id: nil, delivery_method: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
        end

        # @example
        #
        # ```ruby
        # case enum
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
        end
      end

      class Commit < Metronome::BaseModel
        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute type
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Commit::Type]
        required :type, enum: -> { Metronome::Models::ContractCreateParams::Commit::Type }

        # @!attribute access_schedule
        #   Required: Schedule for distributing the commit to the customer. For "POSTPAID" commits only one schedule item is allowed and amount must match invoice_schedule total.
        #
        #   @return [Metronome::Models::ContractCreateParams::Commit::AccessSchedule]
        optional :access_schedule, -> { Metronome::Models::ContractCreateParams::Commit::AccessSchedule }

        # @!attribute amount
        #   (DEPRECATED) Use access_schedule and invoice_schedule instead.
        #
        #   @return [Float]
        optional :amount, Float

        # @!attribute applicable_product_ids
        #   Which products the commit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!attribute applicable_product_tags
        #   Which tags the commit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol => String}]
        optional :custom_fields, Metronome::HashOf[String]

        # @!attribute description
        #   Used only in UI/API. It is not exposed to end customers.
        #
        #   @return [String]
        optional :description, String

        # @!attribute invoice_schedule
        #   Required for "POSTPAID" commits: the true up invoice will be generated at this time and only one schedule item is allowed; the total must match access_schedule amount. Optional for "PREPAID" commits: if not provided, this will be a "complimentary" commit with no invoice.
        #
        #   @return [Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule]
        optional :invoice_schedule, -> { Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule }

        # @!attribute name
        #   displayed on invoices
        #
        #   @return [String]
        optional :name, String

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!attribute priority
        #   If multiple commits are applicable, the one with the lower priority will apply first.
        #
        #   @return [Float]
        optional :priority, Float

        # @!attribute rate_type
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Commit::RateType]
        optional :rate_type, enum: -> { Metronome::Models::ContractCreateParams::Commit::RateType }

        # @!attribute rollover_fraction
        #   Fraction of unused segments that will be rolled over. Must be between 0 and 1.
        #
        #   @return [Float]
        optional :rollover_fraction, Float

        # @!attribute temporary_id
        #   A temporary ID for the commit that can be used to reference the commit for commit specific overrides.
        #
        #   @return [String]
        optional :temporary_id, String

        # @!parse
        #   # @param product_id [String]
        #   #
        #   # @param type [String]
        #   #
        #   # @param access_schedule [Metronome::Models::ContractCreateParams::Commit::AccessSchedule, nil] Required: Schedule for distributing the commit to the customer. For "POSTPAID"
        #   #   commits only one schedule item is allowed and amount must match invoice_schedule
        #   #   total.
        #   #
        #   # @param amount [Float, nil] (DEPRECATED) Use access_schedule and invoice_schedule instead.
        #   #
        #   # @param applicable_product_ids [Array<String>, nil] Which products the commit applies to. If both applicable_product_ids and
        #   #   applicable_product_tags are not provided, the commit applies to all products.
        #   #
        #   # @param applicable_product_tags [Array<String>, nil] Which tags the commit applies to. If both applicable_product_ids and
        #   #   applicable_product_tags are not provided, the commit applies to all products.
        #   #
        #   # @param custom_fields [Hash{Symbol => String}, nil]
        #   #
        #   # @param description [String, nil] Used only in UI/API. It is not exposed to end customers.
        #   #
        #   # @param invoice_schedule [Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule, nil] Required for "POSTPAID" commits: the true up invoice will be generated at this
        #   #   time and only one schedule item is allowed; the total must match access_schedule
        #   #   amount. Optional for "PREPAID" commits: if not provided, this will be a
        #   #   "complimentary" commit with no invoice.
        #   #
        #   # @param name [String, nil] displayed on invoices
        #   #
        #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   # @param priority [Float, nil] If multiple commits are applicable, the one with the lower priority will apply
        #   #   first.
        #   #
        #   # @param rate_type [String, nil]
        #   #
        #   # @param rollover_fraction [Float, nil] Fraction of unused segments that will be rolled over. Must be between 0 and 1.
        #   #
        #   # @param temporary_id [String, nil] A temporary ID for the commit that can be used to reference the commit for
        #   #   commit specific overrides.
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
        #     temporary_id: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :PREPAID
        #   # ...
        # in :POSTPAID
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          PREPAID = :PREPAID
          POSTPAID = :POSTPAID
        end

        class AccessSchedule < Metronome::BaseModel
          # @!attribute schedule_items
          #
          #   @return [Array<Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   Metronome::ArrayOf[-> {
                     Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem
                   }]

          # @!attribute credit_type_id
          #   Defaults to USD (cents) if not passed
          #
          #   @return [String]
          optional :credit_type_id, String

          # @!parse
          #   # Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          #   #   commits only one schedule item is allowed and amount must match invoice_schedule
          #   #   total.
          #   #
          #   # @param schedule_items [Array<Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem>]
          #   #
          #   # @param credit_type_id [String, nil] Defaults to USD (cents) if not passed
          #   #
          #   def initialize(schedule_items:, credit_type_id: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

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
            #   #
            #   # @param ending_before [String] RFC 3339 timestamp (exclusive)
            #   #
            #   # @param starting_at [String] RFC 3339 timestamp (inclusive)
            #   #
            #   def initialize(amount:, ending_before:, starting_at:) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end

        class InvoiceSchedule < Metronome::BaseModel
          # @!attribute credit_type_id
          #   Defaults to USD (cents) if not passed.
          #
          #   @return [String]
          optional :credit_type_id, String

          # @!attribute recurring_schedule
          #   Enter the unit price and quantity for the charge or instead only send the amount. If amount is sent, the unit price is assumed to be the amount and quantity is inferred to be 1.
          #
          #   @return [Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule]
          optional :recurring_schedule,
                   -> { Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule }

          # @!attribute schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #
          #   @return [Array<Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem>]
          optional :schedule_items,
                   Metronome::ArrayOf[-> {
                     Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem
                   }]

          # @!parse
          #   # Required for "POSTPAID" commits: the true up invoice will be generated at this
          #   #   time and only one schedule item is allowed; the total must match access_schedule
          #   #   amount. Optional for "PREPAID" commits: if not provided, this will be a
          #   #   "complimentary" commit with no invoice.
          #   #
          #   # @param credit_type_id [String, nil] Defaults to USD (cents) if not passed.
          #   #
          #   # @param recurring_schedule [Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule, nil] Enter the unit price and quantity for the charge or instead only send the
          #   #   amount. If amount is sent, the unit price is assumed to be the amount and
          #   #   quantity is inferred to be 1.
          #   #
          #   # @param schedule_items [Array<Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem>, nil] Either provide amount or provide both unit_price and quantity.
          #   #
          #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class RecurringSchedule < Metronome::BaseModel
            # @!attribute amount_distribution
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> {
                       Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution
                     }

            # @!attribute ending_before
            #   RFC 3339 timestamp (exclusive).
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute frequency
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> {
                       Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency
                     }

            # @!attribute starting_at
            #   RFC 3339 timestamp (inclusive).
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #
            #   @return [Float]
            optional :amount, Float

            # @!attribute quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :quantity, Float

            # @!attribute unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :unit_price, Float

            # @!parse
            #   # Enter the unit price and quantity for the charge or instead only send the
            #   #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   #   quantity is inferred to be 1.
            #   #
            #   # @param amount_distribution [String]
            #   #
            #   # @param ending_before [String] RFC 3339 timestamp (exclusive).
            #   #
            #   # @param frequency [String]
            #   #
            #   # @param starting_at [String] RFC 3339 timestamp (inclusive).
            #   #
            #   # @param amount [Float, nil] Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #   amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #   inferred to be 1.
            #   #
            #   # @param quantity [Float, nil] Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #   amount and must be specified with unit_price. If specified amount cannot be
            #   #   provided.
            #   #
            #   # @param unit_price [Float, nil] Unit price for the charge. Will be multiplied by quantity to determine the
            #   #   amount and must be specified with quantity. If specified amount cannot be
            #   #   provided.
            #   #
            #   def initialize(
            #     amount_distribution:,
            #     ending_before:,
            #     frequency:,
            #     starting_at:,
            #     amount: nil,
            #     quantity: nil,
            #     unit_price: nil
            #   )
            #     super
            #   end

            # def initialize: (Hash | Metronome::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
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
            end

            # @example
            #
            # ```ruby
            # case enum
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
            end
          end

          class ScheduleItem < Metronome::BaseModel
            # @!attribute timestamp
            #   timestamp of the scheduled event
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #
            #   @return [Float]
            optional :amount, Float

            # @!attribute quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :quantity, Float

            # @!attribute unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :unit_price, Float

            # @!parse
            #   # @param timestamp [String] timestamp of the scheduled event
            #   #
            #   # @param amount [Float, nil] Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #   amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #   inferred to be 1.
            #   #
            #   # @param quantity [Float, nil] Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #   amount and must be specified with unit_price. If specified amount cannot be
            #   #   provided.
            #   #
            #   # @param unit_price [Float, nil] Unit price for the charge. Will be multiplied by quantity to determine the
            #   #   amount and must be specified with quantity. If specified amount cannot be
            #   #   provided.
            #   #
            #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :COMMIT_RATE
        #   # ...
        # in :commit_rate
        #   # ...
        # in :LIST_RATE
        #   # ...
        # in :list_rate
        #   # ...
        # end
        # ```
        class RateType < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          COMMIT_RATE = :commit_rate
          LIST_RATE = :LIST_RATE
          LIST_RATE = :list_rate
        end
      end

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

        # @!attribute applicable_product_ids
        #   Which products the credit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!attribute applicable_product_tags
        #   Which tags the credit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol => String}]
        optional :custom_fields, Metronome::HashOf[String]

        # @!attribute description
        #   Used only in UI/API. It is not exposed to end customers.
        #
        #   @return [String]
        optional :description, String

        # @!attribute name
        #   displayed on invoices
        #
        #   @return [String]
        optional :name, String

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!attribute priority
        #   If multiple credits are applicable, the one with the lower priority will apply first.
        #
        #   @return [Float]
        optional :priority, Float

        # @!attribute rate_type
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Credit::RateType]
        optional :rate_type, enum: -> { Metronome::Models::ContractCreateParams::Credit::RateType }

        # @!parse
        #   # @param access_schedule [Metronome::Models::ContractCreateParams::Credit::AccessSchedule] Schedule for distributing the credit to the customer.
        #   #
        #   # @param product_id [String]
        #   #
        #   # @param applicable_product_ids [Array<String>, nil] Which products the credit applies to. If both applicable_product_ids and
        #   #   applicable_product_tags are not provided, the credit applies to all products.
        #   #
        #   # @param applicable_product_tags [Array<String>, nil] Which tags the credit applies to. If both applicable_product_ids and
        #   #   applicable_product_tags are not provided, the credit applies to all products.
        #   #
        #   # @param custom_fields [Hash{Symbol => String}, nil]
        #   #
        #   # @param description [String, nil] Used only in UI/API. It is not exposed to end customers.
        #   #
        #   # @param name [String, nil] displayed on invoices
        #   #
        #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   # @param priority [Float, nil] If multiple credits are applicable, the one with the lower priority will apply
        #   #   first.
        #   #
        #   # @param rate_type [String, nil]
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
        #     rate_type: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class AccessSchedule < Metronome::BaseModel
          # @!attribute schedule_items
          #
          #   @return [Array<Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   Metronome::ArrayOf[-> {
                     Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem
                   }]

          # @!attribute credit_type_id
          #   Defaults to USD (cents) if not passed
          #
          #   @return [String]
          optional :credit_type_id, String

          # @!parse
          #   # Schedule for distributing the credit to the customer.
          #   #
          #   # @param schedule_items [Array<Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem>]
          #   #
          #   # @param credit_type_id [String, nil] Defaults to USD (cents) if not passed
          #   #
          #   def initialize(schedule_items:, credit_type_id: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

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
            #   #
            #   # @param ending_before [String] RFC 3339 timestamp (exclusive)
            #   #
            #   # @param starting_at [String] RFC 3339 timestamp (inclusive)
            #   #
            #   def initialize(amount:, ending_before:, starting_at:) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end

        # @example
        #
        # ```ruby
        # case enum
        # in :COMMIT_RATE
        #   # ...
        # in :commit_rate
        #   # ...
        # in :LIST_RATE
        #   # ...
        # in :list_rate
        #   # ...
        # end
        # ```
        class RateType < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          COMMIT_RATE = :commit_rate
          LIST_RATE = :LIST_RATE
          LIST_RATE = :list_rate
        end
      end

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

        # @!attribute name
        #   displayed on invoices
        #
        #   @return [String]
        optional :name, String

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!parse
        #   # @param product_id [String]
        #   #
        #   # @param schedule [Metronome::Models::ContractCreateParams::Discount::Schedule] Must provide either schedule_items or recurring_schedule.
        #   #
        #   # @param name [String, nil] displayed on invoices
        #   #
        #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   def initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class Schedule < Metronome::BaseModel
          # @!attribute credit_type_id
          #   Defaults to USD (cents) if not passed.
          #
          #   @return [String]
          optional :credit_type_id, String

          # @!attribute recurring_schedule
          #   Enter the unit price and quantity for the charge or instead only send the amount. If amount is sent, the unit price is assumed to be the amount and quantity is inferred to be 1.
          #
          #   @return [Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule]
          optional :recurring_schedule,
                   -> { Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule }

          # @!attribute schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #
          #   @return [Array<Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem>]
          optional :schedule_items,
                   Metronome::ArrayOf[-> {
                     Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem
                   }]

          # @!parse
          #   # Must provide either schedule_items or recurring_schedule.
          #   #
          #   # @param credit_type_id [String, nil] Defaults to USD (cents) if not passed.
          #   #
          #   # @param recurring_schedule [Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule, nil] Enter the unit price and quantity for the charge or instead only send the
          #   #   amount. If amount is sent, the unit price is assumed to be the amount and
          #   #   quantity is inferred to be 1.
          #   #
          #   # @param schedule_items [Array<Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem>, nil] Either provide amount or provide both unit_price and quantity.
          #   #
          #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class RecurringSchedule < Metronome::BaseModel
            # @!attribute amount_distribution
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> {
                       Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::AmountDistribution
                     }

            # @!attribute ending_before
            #   RFC 3339 timestamp (exclusive).
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute frequency
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> {
                       Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::Frequency
                     }

            # @!attribute starting_at
            #   RFC 3339 timestamp (inclusive).
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #
            #   @return [Float]
            optional :amount, Float

            # @!attribute quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :quantity, Float

            # @!attribute unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :unit_price, Float

            # @!parse
            #   # Enter the unit price and quantity for the charge or instead only send the
            #   #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   #   quantity is inferred to be 1.
            #   #
            #   # @param amount_distribution [String]
            #   #
            #   # @param ending_before [String] RFC 3339 timestamp (exclusive).
            #   #
            #   # @param frequency [String]
            #   #
            #   # @param starting_at [String] RFC 3339 timestamp (inclusive).
            #   #
            #   # @param amount [Float, nil] Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #   amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #   inferred to be 1.
            #   #
            #   # @param quantity [Float, nil] Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #   amount and must be specified with unit_price. If specified amount cannot be
            #   #   provided.
            #   #
            #   # @param unit_price [Float, nil] Unit price for the charge. Will be multiplied by quantity to determine the
            #   #   amount and must be specified with quantity. If specified amount cannot be
            #   #   provided.
            #   #
            #   def initialize(
            #     amount_distribution:,
            #     ending_before:,
            #     frequency:,
            #     starting_at:,
            #     amount: nil,
            #     quantity: nil,
            #     unit_price: nil
            #   )
            #     super
            #   end

            # def initialize: (Hash | Metronome::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
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
            end

            # @example
            #
            # ```ruby
            # case enum
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
            end
          end

          class ScheduleItem < Metronome::BaseModel
            # @!attribute timestamp
            #   timestamp of the scheduled event
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #
            #   @return [Float]
            optional :amount, Float

            # @!attribute quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :quantity, Float

            # @!attribute unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :unit_price, Float

            # @!parse
            #   # @param timestamp [String] timestamp of the scheduled event
            #   #
            #   # @param amount [Float, nil] Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #   amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #   inferred to be 1.
            #   #
            #   # @param quantity [Float, nil] Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #   amount and must be specified with unit_price. If specified amount cannot be
            #   #   provided.
            #   #
            #   # @param unit_price [Float, nil] Unit price for the charge. Will be multiplied by quantity to determine the
            #   #   amount and must be specified with quantity. If specified amount cannot be
            #   #   provided.
            #   #
            #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end
      end

      # Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list prices automatically. EXPLICIT prioritization requires specifying priorities for each multiplier; the one with the lowest priority value will be prioritized first. If tiered overrides are used, prioritization must be explicit.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :LOWEST_MULTIPLIER
      #   # ...
      # in :EXPLICIT
      #   # ...
      # end
      # ```
      class MultiplierOverridePrioritization < Metronome::Enum
        LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
        EXPLICIT = :EXPLICIT
      end

      class Override < Metronome::BaseModel
        # @!attribute starting_at
        #   RFC 3339 timestamp indicating when the override will start applying (inclusive)
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute applicable_product_tags
        #   tags identifying products whose rates are being overridden. Cannot be used in conjunction with override_specifiers.
        #
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!attribute ending_before
        #   RFC 3339 timestamp indicating when the override will stop applying (exclusive)
        #
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute entitled
        #
        #   @return [Boolean]
        optional :entitled, Metronome::BooleanModel

        # @!attribute is_commit_specific
        #   Indicates whether the override should only apply to commits. Defaults to `false`. If `true`, you can specify relevant commits in `override_specifiers` by passing `commit_ids`. if you do not specify `commit_ids`, then the override will apply when consuming any prepaid or postpaid commit.
        #
        #   @return [Boolean]
        optional :is_commit_specific, Metronome::BooleanModel

        # @!attribute multiplier
        #   Required for MULTIPLIER type. Must be >=0.
        #
        #   @return [Float]
        optional :multiplier, Float

        # @!attribute override_specifiers
        #   Cannot be used in conjunction with product_id or applicable_product_tags. If provided, the override will apply to all products with the specified specifiers.
        #
        #   @return [Array<Metronome::Models::ContractCreateParams::Override::OverrideSpecifier>]
        optional :override_specifiers,
                 Metronome::ArrayOf[-> {
                   Metronome::Models::ContractCreateParams::Override::OverrideSpecifier
                 }]

        # @!attribute overwrite_rate
        #   Required for OVERWRITE type.
        #
        #   @return [Metronome::Models::ContractCreateParams::Override::OverwriteRate]
        optional :overwrite_rate, -> { Metronome::Models::ContractCreateParams::Override::OverwriteRate }

        # @!attribute priority
        #   Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides. Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered and multiplier overrides are prioritized by their priority value (lowest first). Must be > 0.
        #
        #   @return [Float]
        optional :priority, Float

        # @!attribute product_id
        #   ID of the product whose rate is being overridden. Cannot be used in conjunction with override_specifiers.
        #
        #   @return [String]
        optional :product_id, String

        # @!attribute target
        #   Indicates whether the override applies to commit rates or list rates. Can only be used for overrides that have `is_commit_specific` set to `true`. Defaults to `"LIST_RATE"`.
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Override::Target]
        optional :target, enum: -> { Metronome::Models::ContractCreateParams::Override::Target }

        # @!attribute tiers
        #   Required for TIERED type. Must have at least one tier.
        #
        #   @return [Array<Metronome::Models::ContractCreateParams::Override::Tier>]
        optional :tiers, Metronome::ArrayOf[-> { Metronome::Models::ContractCreateParams::Override::Tier }]

        # @!attribute type
        #   Overwrites are prioritized over multipliers and tiered overrides.
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::Override::Type]
        optional :type, enum: -> { Metronome::Models::ContractCreateParams::Override::Type }

        # @!parse
        #   # @param starting_at [String] RFC 3339 timestamp indicating when the override will start applying (inclusive)
        #   #
        #   # @param applicable_product_tags [Array<String>, nil] tags identifying products whose rates are being overridden. Cannot be used in
        #   #   conjunction with override_specifiers.
        #   #
        #   # @param ending_before [String, nil] RFC 3339 timestamp indicating when the override will stop applying (exclusive)
        #   #
        #   # @param entitled [Boolean, nil]
        #   #
        #   # @param is_commit_specific [Boolean, nil] Indicates whether the override should only apply to commits. Defaults to
        #   #   `false`. If `true`, you can specify relevant commits in `override_specifiers` by
        #   #   passing `commit_ids`. if you do not specify `commit_ids`, then the override will
        #   #   apply when consuming any prepaid or postpaid commit.
        #   #
        #   # @param multiplier [Float, nil] Required for MULTIPLIER type. Must be >=0.
        #   #
        #   # @param override_specifiers [Array<Metronome::Models::ContractCreateParams::Override::OverrideSpecifier>, nil] Cannot be used in conjunction with product_id or applicable_product_tags. If
        #   #   provided, the override will apply to all products with the specified specifiers.
        #   #
        #   # @param overwrite_rate [Metronome::Models::ContractCreateParams::Override::OverwriteRate, nil] Required for OVERWRITE type.
        #   #
        #   # @param priority [Float, nil] Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
        #   #   Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered
        #   #   and multiplier overrides are prioritized by their priority value (lowest first).
        #   #   Must be > 0.
        #   #
        #   # @param product_id [String, nil] ID of the product whose rate is being overridden. Cannot be used in conjunction
        #   #   with override_specifiers.
        #   #
        #   # @param target [String, nil] Indicates whether the override applies to commit rates or list rates. Can only
        #   #   be used for overrides that have `is_commit_specific` set to `true`. Defaults to
        #   #   `"LIST_RATE"`.
        #   #
        #   # @param tiers [Array<Metronome::Models::ContractCreateParams::Override::Tier>, nil] Required for TIERED type. Must have at least one tier.
        #   #
        #   # @param type [String, nil] Overwrites are prioritized over multipliers and tiered overrides.
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
        #     type: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class OverrideSpecifier < Metronome::BaseModel
          # @!attribute commit_ids
          #   Can only be used for commit specific overrides. Must be used in conjunction with one of product_id, product_tags, pricing_group_values, or presentation_group_values. If provided, the override will only apply to the specified commits. If not provided, the override will apply to all commits.
          #
          #   @return [Array<String>]
          optional :commit_ids, Metronome::ArrayOf[String]

          # @!attribute presentation_group_values
          #   A map of group names to values. The override will only apply to line items with the specified presentation group values. Can only be used for multiplier overrides.
          #
          #   @return [Hash{Symbol => String}]
          optional :presentation_group_values, Metronome::HashOf[String]

          # @!attribute pricing_group_values
          #   A map of pricing group names to values. The override will only apply to products with the specified pricing group values.
          #
          #   @return [Hash{Symbol => String}]
          optional :pricing_group_values, Metronome::HashOf[String]

          # @!attribute product_id
          #   If provided, the override will only apply to the product with the specified ID.
          #
          #   @return [String]
          optional :product_id, String

          # @!attribute product_tags
          #   If provided, the override will only apply to products with all the specified tags.
          #
          #   @return [Array<String>]
          optional :product_tags, Metronome::ArrayOf[String]

          # @!parse
          #   # @param commit_ids [Array<String>, nil] Can only be used for commit specific overrides. Must be used in conjunction with
          #   #   one of product_id, product_tags, pricing_group_values, or
          #   #   presentation_group_values. If provided, the override will only apply to the
          #   #   specified commits. If not provided, the override will apply to all commits.
          #   #
          #   # @param presentation_group_values [Hash{Symbol => String}, nil] A map of group names to values. The override will only apply to line items with
          #   #   the specified presentation group values. Can only be used for multiplier
          #   #   overrides.
          #   #
          #   # @param pricing_group_values [Hash{Symbol => String}, nil] A map of pricing group names to values. The override will only apply to products
          #   #   with the specified pricing group values.
          #   #
          #   # @param product_id [String, nil] If provided, the override will only apply to the product with the specified ID.
          #   #
          #   # @param product_tags [Array<String>, nil] If provided, the override will only apply to products with all the specified
          #   #   tags.
          #   #
          #   def initialize(
          #     commit_ids: nil,
          #     presentation_group_values: nil,
          #     pricing_group_values: nil,
          #     product_id: nil,
          #     product_tags: nil
          #   )
          #     super
          #   end

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        class OverwriteRate < Metronome::BaseModel
          # @!attribute rate_type
          #
          #   @return [Symbol, Metronome::Models::ContractCreateParams::Override::OverwriteRate::RateType]
          required :rate_type,
                   enum: -> { Metronome::Models::ContractCreateParams::Override::OverwriteRate::RateType }

          # @!attribute credit_type_id
          #
          #   @return [String]
          optional :credit_type_id, String

          # @!attribute custom_rate
          #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
          #
          #   @return [Hash{Symbol => Object}]
          optional :custom_rate, Metronome::HashOf[Metronome::Unknown]

          # @!attribute is_prorated
          #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true.
          #
          #   @return [Boolean]
          optional :is_prorated, Metronome::BooleanModel

          # @!attribute price
          #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
          #
          #   @return [Float]
          optional :price, Float

          # @!attribute quantity
          #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
          #
          #   @return [Float]
          optional :quantity, Float

          # @!attribute tiers
          #   Only set for TIERED rate_type.
          #
          #   @return [Array<Metronome::Models::Tier>]
          optional :tiers, Metronome::ArrayOf[-> { Metronome::Models::Tier }]

          # @!parse
          #   # Required for OVERWRITE type.
          #   #
          #   # @param rate_type [String]
          #   #
          #   # @param credit_type_id [String, nil]
          #   #
          #   # @param custom_rate [Hash{Symbol => Object}, nil] Only set for CUSTOM rate_type. This field is interpreted by custom rate
          #   #   processors.
          #   #
          #   # @param is_prorated [Boolean, nil] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
          #   #   set to true.
          #   #
          #   # @param price [Float, nil] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
          #   #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
          #   #
          #   # @param quantity [Float, nil] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
          #   #
          #   # @param tiers [Array<Metronome::Models::Tier>, nil] Only set for TIERED rate_type.
          #   #
          #   def initialize(rate_type:, credit_type_id: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
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
          end
        end

        # Indicates whether the override applies to commit rates or list rates. Can only be used for overrides that have `is_commit_specific` set to `true`. Defaults to `"LIST_RATE"`.
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :COMMIT_RATE
        #   # ...
        # in :commit_rate
        #   # ...
        # in :LIST_RATE
        #   # ...
        # in :list_rate
        #   # ...
        # end
        # ```
        class Target < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          COMMIT_RATE = :commit_rate
          LIST_RATE = :LIST_RATE
          LIST_RATE = :list_rate
        end

        class Tier < Metronome::BaseModel
          # @!attribute multiplier
          #
          #   @return [Float]
          required :multiplier, Float

          # @!attribute size
          #
          #   @return [Float]
          optional :size, Float

          # @!parse
          #   # @param multiplier [Float]
          #   # @param size [Float, nil]
          #   #
          #   def initialize(multiplier:, size: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        # Overwrites are prioritized over multipliers and tiered overrides.
        #
        # @example
        #
        # ```ruby
        # case enum
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
        end
      end

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
        #   Quantity for the charge. Will be multiplied by unit_price to determine the amount.
        #
        #   @return [Float]
        required :quantity, Float

        # @!attribute unit_price
        #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified.
        #
        #   @return [Float]
        required :unit_price, Float

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol => String}]
        optional :custom_fields, Metronome::HashOf[String]

        # @!attribute description
        #
        #   @return [String]
        optional :description, String

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!parse
        #   # @param max_amount [Float] Maximum amount for the term.
        #   #
        #   # @param product_id [String]
        #   #
        #   # @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the
        #   #   amount.
        #   #
        #   # @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the
        #   #   amount and must be specified.
        #   #
        #   # @param custom_fields [Hash{Symbol => String}, nil]
        #   #
        #   # @param description [String, nil]
        #   #
        #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   def initialize(
        #     max_amount:,
        #     product_id:,
        #     quantity:,
        #     unit_price:,
        #     custom_fields: nil,
        #     description: nil,
        #     netsuite_sales_order_id: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

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

        # @!attribute applicable_product_ids
        #   Must provide at least one of applicable_product_ids or applicable_product_tags.
        #
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!attribute applicable_product_tags
        #   Must provide at least one of applicable_product_ids or applicable_product_tags.
        #
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!attribute aws_options
        #
        #   @return [Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions]
        optional :aws_options, -> { Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions }

        # @!attribute ending_before
        #
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute gcp_options
        #
        #   @return [Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions]
        optional :gcp_options, -> { Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions }

        # @!attribute reseller_contract_value
        #
        #   @return [Float]
        optional :reseller_contract_value, Float

        # @!parse
        #   # @param fraction [Float]
        #   #
        #   # @param netsuite_reseller_id [String]
        #   #
        #   # @param reseller_type [String]
        #   #
        #   # @param starting_at [String]
        #   #
        #   # @param applicable_product_ids [Array<String>, nil] Must provide at least one of applicable_product_ids or applicable_product_tags.
        #   #
        #   # @param applicable_product_tags [Array<String>, nil] Must provide at least one of applicable_product_ids or applicable_product_tags.
        #   #
        #   # @param aws_options [Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions, nil]
        #   #
        #   # @param ending_before [String, nil]
        #   #
        #   # @param gcp_options [Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions, nil]
        #   #
        #   # @param reseller_contract_value [Float, nil]
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
        #     reseller_contract_value: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
        end

        class AwsOptions < Metronome::BaseModel
          # @!attribute aws_account_number
          #
          #   @return [String]
          optional :aws_account_number, String

          # @!attribute aws_offer_id
          #
          #   @return [String]
          optional :aws_offer_id, String

          # @!attribute aws_payer_reference_id
          #
          #   @return [String]
          optional :aws_payer_reference_id, String

          # @!parse
          #   # @param aws_account_number [String, nil]
          #   # @param aws_offer_id [String, nil]
          #   # @param aws_payer_reference_id [String, nil]
          #   #
          #   def initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end

        class GcpOptions < Metronome::BaseModel
          # @!attribute gcp_account_id
          #
          #   @return [String]
          optional :gcp_account_id, String

          # @!attribute gcp_offer_id
          #
          #   @return [String]
          optional :gcp_offer_id, String

          # @!parse
          #   # @param gcp_account_id [String, nil]
          #   # @param gcp_offer_id [String, nil]
          #   #
          #   def initialize(gcp_account_id: nil, gcp_offer_id: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end

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

        # @!attribute name
        #   displayed on invoices
        #
        #   @return [String]
        optional :name, String

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!parse
        #   # @param product_id [String]
        #   #
        #   # @param schedule [Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule] Must provide either schedule_items or recurring_schedule.
        #   #
        #   # @param name [String, nil] displayed on invoices
        #   #
        #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   def initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class Schedule < Metronome::BaseModel
          # @!attribute credit_type_id
          #   Defaults to USD (cents) if not passed.
          #
          #   @return [String]
          optional :credit_type_id, String

          # @!attribute recurring_schedule
          #   Enter the unit price and quantity for the charge or instead only send the amount. If amount is sent, the unit price is assumed to be the amount and quantity is inferred to be 1.
          #
          #   @return [Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule]
          optional :recurring_schedule,
                   -> { Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule }

          # @!attribute schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #
          #   @return [Array<Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem>]
          optional :schedule_items,
                   Metronome::ArrayOf[-> {
                     Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem
                   }]

          # @!parse
          #   # Must provide either schedule_items or recurring_schedule.
          #   #
          #   # @param credit_type_id [String, nil] Defaults to USD (cents) if not passed.
          #   #
          #   # @param recurring_schedule [Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule, nil] Enter the unit price and quantity for the charge or instead only send the
          #   #   amount. If amount is sent, the unit price is assumed to be the amount and
          #   #   quantity is inferred to be 1.
          #   #
          #   # @param schedule_items [Array<Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem>, nil] Either provide amount or provide both unit_price and quantity.
          #   #
          #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class RecurringSchedule < Metronome::BaseModel
            # @!attribute amount_distribution
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> {
                       Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution
                     }

            # @!attribute ending_before
            #   RFC 3339 timestamp (exclusive).
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute frequency
            #
            #   @return [Symbol, Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> {
                       Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency
                     }

            # @!attribute starting_at
            #   RFC 3339 timestamp (inclusive).
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #
            #   @return [Float]
            optional :amount, Float

            # @!attribute quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :quantity, Float

            # @!attribute unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :unit_price, Float

            # @!parse
            #   # Enter the unit price and quantity for the charge or instead only send the
            #   #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   #   quantity is inferred to be 1.
            #   #
            #   # @param amount_distribution [String]
            #   #
            #   # @param ending_before [String] RFC 3339 timestamp (exclusive).
            #   #
            #   # @param frequency [String]
            #   #
            #   # @param starting_at [String] RFC 3339 timestamp (inclusive).
            #   #
            #   # @param amount [Float, nil] Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #   amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #   inferred to be 1.
            #   #
            #   # @param quantity [Float, nil] Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #   amount and must be specified with unit_price. If specified amount cannot be
            #   #   provided.
            #   #
            #   # @param unit_price [Float, nil] Unit price for the charge. Will be multiplied by quantity to determine the
            #   #   amount and must be specified with quantity. If specified amount cannot be
            #   #   provided.
            #   #
            #   def initialize(
            #     amount_distribution:,
            #     ending_before:,
            #     frequency:,
            #     starting_at:,
            #     amount: nil,
            #     quantity: nil,
            #     unit_price: nil
            #   )
            #     super
            #   end

            # def initialize: (Hash | Metronome::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
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
            end

            # @example
            #
            # ```ruby
            # case enum
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
            end
          end

          class ScheduleItem < Metronome::BaseModel
            # @!attribute timestamp
            #   timestamp of the scheduled event
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #
            #   @return [Float]
            optional :amount, Float

            # @!attribute quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :quantity, Float

            # @!attribute unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #
            #   @return [Float]
            optional :unit_price, Float

            # @!parse
            #   # @param timestamp [String] timestamp of the scheduled event
            #   #
            #   # @param amount [Float, nil] Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #   amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #   inferred to be 1.
            #   #
            #   # @param quantity [Float, nil] Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #   amount and must be specified with unit_price. If specified amount cannot be
            #   #   provided.
            #   #
            #   # @param unit_price [Float, nil] Unit price for the charge. Will be multiplied by quantity to determine the
            #   #   amount and must be specified with quantity. If specified amount cannot be
            #   #   provided.
            #   #
            #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end
      end

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

        # @!attribute future_invoice_behavior
        #
        #   @return [Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior]
        optional :future_invoice_behavior,
                 -> { Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior }

        # @!parse
        #   # @param from_contract_id [String]
        #   #
        #   # @param type [String] This field's available values may vary based on your client's configuration.
        #   #
        #   # @param future_invoice_behavior [Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior, nil]
        #   #
        #   def initialize(from_contract_id:, type:, future_invoice_behavior: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # This field's available values may vary based on your client's configuration.
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :SUPERSEDE
        #   # ...
        # in :RENEWAL
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL
        end

        class FutureInvoiceBehavior < Metronome::BaseModel
          # @!attribute trueup
          #   Controls whether future trueup invoices are billed or removed. Default behavior is AS_IS if not specified.
          #
          #   @return [Symbol, Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup]
          optional :trueup,
                   enum: -> {
                     Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior::Trueup
                   }

          # @!parse
          #   # @param trueup [String, nil] Controls whether future trueup invoices are billed or removed. Default behavior
          #   #   is AS_IS if not specified.
          #   #
          #   def initialize(trueup: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # Controls whether future trueup invoices are billed or removed. Default behavior is AS_IS if not specified.
          #
          # @example
          #
          # ```ruby
          # case enum
          # in :REMOVE
          #   # ...
          # in :AS_IS
          #   # ...
          # end
          # ```
          class Trueup < Metronome::Enum
            REMOVE = :REMOVE
            AS_IS = :AS_IS
          end
        end
      end

      class UsageStatementSchedule < Metronome::BaseModel
        # @!attribute frequency
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::UsageStatementSchedule::Frequency]
        required :frequency,
                 enum: -> { Metronome::Models::ContractCreateParams::UsageStatementSchedule::Frequency }

        # @!attribute billing_anchor_date
        #   Required when using CUSTOM_DATE. This option lets you set a historical billing anchor date, aligning future billing cycles with a chosen cadence. For example, if a contract starts on 2024-09-15 and you set the anchor date to 2024-09-10 with a MONTHLY frequency, the first usage statement will cover 09-15 to 10-10. Subsequent statements will follow the 10th of each month.
        #
        #   @return [Time]
        optional :billing_anchor_date, Time

        # @!attribute day
        #   If not provided, defaults to the first day of the month.
        #
        #   @return [Symbol, Metronome::Models::ContractCreateParams::UsageStatementSchedule::Day]
        optional :day, enum: -> { Metronome::Models::ContractCreateParams::UsageStatementSchedule::Day }

        # @!attribute invoice_generation_starting_at
        #   The date Metronome should start generating usage invoices. If unspecified, contract start date will be used. This is useful to set if you want to import historical invoices via our 'Create Historical Invoices' API rather than having Metronome automatically generate them.
        #
        #   @return [Time]
        optional :invoice_generation_starting_at, Time

        # @!parse
        #   # @param frequency [String]
        #   #
        #   # @param billing_anchor_date [String, nil] Required when using CUSTOM_DATE. This option lets you set a historical billing
        #   #   anchor date, aligning future billing cycles with a chosen cadence. For example,
        #   #   if a contract starts on 2024-09-15 and you set the anchor date to 2024-09-10
        #   #   with a MONTHLY frequency, the first usage statement will cover 09-15 to 10-10.
        #   #   Subsequent statements will follow the 10th of each month.
        #   #
        #   # @param day [String, nil] If not provided, defaults to the first day of the month.
        #   #
        #   # @param invoice_generation_starting_at [String, nil] The date Metronome should start generating usage invoices. If unspecified,
        #   #   contract start date will be used. This is useful to set if you want to import
        #   #   historical invoices via our 'Create Historical Invoices' API rather than having
        #   #   Metronome automatically generate them.
        #   #
        #   def initialize(frequency:, billing_anchor_date: nil, day: nil, invoice_generation_starting_at: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
        end

        # If not provided, defaults to the first day of the month.
        #
        # @example
        #
        # ```ruby
        # case enum
        # in :FIRST_OF_MONTH
        #   # ...
        # in :CONTRACT_START
        #   # ...
        # in :CUSTOM_DATE
        #   # ...
        # in :custom_date
        #   # ...
        # end
        # ```
        class Day < Metronome::Enum
          FIRST_OF_MONTH = :FIRST_OF_MONTH
          CONTRACT_START = :CONTRACT_START
          CUSTOM_DATE = :CUSTOM_DATE
          CUSTOM_DATE = :custom_date
        end
      end
    end
  end
end
