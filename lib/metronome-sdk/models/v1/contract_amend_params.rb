# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractAmendParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute contract_id
        #   ID of the contract to amend
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute customer_id
        #   ID of the customer whose contract is to be amended
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute starting_at
        #   inclusive start time for the amendment
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [r] commits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit>, nil]
        optional :commits, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::Commit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit>]
        #   attr_writer :commits

        # @!attribute [r] credits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit>, nil]
        optional :credits, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::Credit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit>]
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
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount>, nil]
        optional :discounts, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::Discount] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount>]
        #   attr_writer :discounts

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
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override>, nil]
        optional :overrides, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::Override] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override>]
        #   attr_writer :overrides

        # @!attribute [r] professional_services
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ProfessionalService>, nil]
        optional :professional_services,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::ProfessionalService] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ProfessionalService>]
        #   attr_writer :professional_services

        # @!attribute [r] reseller_royalties
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty>, nil]
        optional :reseller_royalties,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty>]
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
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge>, nil]
        optional :scheduled_charges,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge>]
        #   attr_writer :scheduled_charges

        # @!attribute [r] total_contract_value
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Float, nil]
        optional :total_contract_value, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :total_contract_value

        # @!parse
        #   # @param contract_id [String]
        #   # @param customer_id [String]
        #   # @param starting_at [Time]
        #   # @param commits [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit>]
        #   # @param credits [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit>]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param discounts [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount>]
        #   # @param netsuite_sales_order_id [String]
        #   # @param overrides [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override>]
        #   # @param professional_services [Array<MetronomeSDK::Models::V1::ContractAmendParams::ProfessionalService>]
        #   # @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty>]
        #   # @param salesforce_opportunity_id [String]
        #   # @param scheduled_charges [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge>]
        #   # @param total_contract_value [Float]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     contract_id:,
        #     customer_id:,
        #     starting_at:,
        #     commits: nil,
        #     credits: nil,
        #     custom_fields: nil,
        #     discounts: nil,
        #     netsuite_sales_order_id: nil,
        #     overrides: nil,
        #     professional_services: nil,
        #     reseller_royalties: nil,
        #     salesforce_opportunity_id: nil,
        #     scheduled_charges: nil,
        #     total_contract_value: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Commit < MetronomeSDK::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::Type]
          required :type, enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::Type }

          # @!attribute [r] access_schedule
          #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          #     commits only one schedule item is allowed and amount must match invoice_schedule
          #     total.
          #
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule]
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
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule, nil]
          optional :invoice_schedule, -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule]
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
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig, nil]
          optional :payment_gate_config,
                   -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig]
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
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::RateType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::RateType]
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
          #   # @param type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::Type]
          #   # @param access_schedule [MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule]
          #   # @param amount [Float]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param description [String]
          #   # @param invoice_schedule [MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   # @param payment_gate_config [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig]
          #   # @param priority [Float]
          #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::RateType]
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
            #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule::ScheduleItem] }

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
            #   # @param schedule_items [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule::ScheduleItem>]
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
            #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule]
            #   attr_writer :recurring_schedule

            # @!attribute [r] schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem>]
            #   attr_writer :schedule_items

            # @!parse
            #   # Required for "POSTPAID" commits: the true up invoice will be generated at this
            #   #   time and only one schedule item is allowed; the total must match access_schedule
            #   #   amount. Optional for "PREPAID" commits: if not provided, this will be a
            #   #   "complimentary" commit with no invoice.
            #   #
            #   # @param credit_type_id [String]
            #   # @param recurring_schedule [MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule]
            #   # @param schedule_items [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem>]
            #   #
            #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class RecurringSchedule < MetronomeSDK::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency }

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
              #   # @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              #   # @param ending_before [Time]
              #   # @param frequency [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
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
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType }

            # @!attribute [r] stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig]
            #   attr_writer :stripe_config

            # @!attribute [r] tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #     not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #     will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType]
            #   attr_writer :tax_type

            # @!parse
            #   # optionally payment gate this commit
            #   #
            #   # @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType]
            #   # @param stripe_config [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig]
            #   # @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType]
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
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType }

              # @!parse
              #   # Only applicable if using Stripe as your payment gateway through Metronome.
              #   #
              #   # @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType]
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

        class Credit < MetronomeSDK::BaseModel
          # @!attribute access_schedule
          #   Schedule for distributing the credit to the customer.
          #
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Credit::AccessSchedule]
          required :access_schedule, -> { MetronomeSDK::Models::V1::ContractAmendParams::Credit::AccessSchedule }

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
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Credit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Credit::RateType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Credit::RateType]
          #   attr_writer :rate_type

          # @!parse
          #   # @param access_schedule [MetronomeSDK::Models::V1::ContractAmendParams::Credit::AccessSchedule]
          #   # @param product_id [String]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param description [String]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   # @param priority [Float]
          #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Credit::RateType]
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
            #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::Credit::AccessSchedule::ScheduleItem] }

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
            #   # @param schedule_items [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit::AccessSchedule::ScheduleItem>]
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
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule]
          required :schedule, -> { MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule }

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
          #   # @param schedule [MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule]
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
            #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule]
            #   attr_writer :recurring_schedule

            # @!attribute [r] schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::ScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::ScheduleItem>]
            #   attr_writer :schedule_items

            # @!parse
            #   # Must provide either schedule_items or recurring_schedule.
            #   #
            #   # @param credit_type_id [String]
            #   # @param recurring_schedule [MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule]
            #   # @param schedule_items [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::ScheduleItem>]
            #   #
            #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class RecurringSchedule < MetronomeSDK::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency }

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
              #   # @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
              #   # @param ending_before [Time]
              #   # @param frequency [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency]
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
          #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override::OverrideSpecifier>, nil]
          optional :override_specifiers,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::Override::OverrideSpecifier] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override::OverrideSpecifier>]
          #   attr_writer :override_specifiers

          # @!attribute [r] overwrite_rate
          #   Required for OVERWRITE type.
          #
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate, nil]
          optional :overwrite_rate, -> { MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate]
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
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::Target, nil]
          optional :target, enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Override::Target }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::Target]
          #   attr_writer :target

          # @!attribute [r] tiers
          #   Required for TIERED type. Must have at least one tier.
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override::Tier>, nil]
          optional :tiers,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::Override::Tier] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override::Tier>]
          #   attr_writer :tiers

          # @!attribute [r] type
          #   Overwrites are prioritized over multipliers and tiered overrides.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::Type, nil]
          optional :type, enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Override::Type }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::Type]
          #   attr_writer :type

          # @!parse
          #   # @param starting_at [Time]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param ending_before [Time]
          #   # @param entitled [Boolean]
          #   # @param is_commit_specific [Boolean]
          #   # @param multiplier [Float]
          #   # @param override_specifiers [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override::OverrideSpecifier>]
          #   # @param overwrite_rate [MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate]
          #   # @param priority [Float]
          #   # @param product_id [String]
          #   # @param target [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::Target]
          #   # @param tiers [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override::Tier>]
          #   # @param type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::Type]
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
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate::RateType }

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
            #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate::RateType]
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

        class ResellerRoyalty < MetronomeSDK::BaseModel
          # @!attribute reseller_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::ResellerType]
          required :reseller_type,
                   enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::ResellerType }

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
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::AwsOptions, nil]
          optional :aws_options, -> { MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::AwsOptions }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::AwsOptions]
          #   attr_writer :aws_options

          # @!attribute ending_before
          #   Use null to indicate that the existing end timestamp should be removed.
          #
          #   @return [Time, nil]
          optional :ending_before, Time, nil?: true

          # @!attribute [r] fraction
          #
          #   @return [Float, nil]
          optional :fraction, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :fraction

          # @!attribute [r] gcp_options
          #
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::GcpOptions, nil]
          optional :gcp_options, -> { MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::GcpOptions }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::GcpOptions]
          #   attr_writer :gcp_options

          # @!attribute [r] netsuite_reseller_id
          #
          #   @return [String, nil]
          optional :netsuite_reseller_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_reseller_id

          # @!attribute [r] reseller_contract_value
          #
          #   @return [Float, nil]
          optional :reseller_contract_value, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :reseller_contract_value

          # @!attribute [r] starting_at
          #
          #   @return [Time, nil]
          optional :starting_at, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :starting_at

          # @!parse
          #   # @param reseller_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::ResellerType]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param aws_options [MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::AwsOptions]
          #   # @param ending_before [Time, nil]
          #   # @param fraction [Float]
          #   # @param gcp_options [MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::GcpOptions]
          #   # @param netsuite_reseller_id [String]
          #   # @param reseller_contract_value [Float]
          #   # @param starting_at [Time]
          #   #
          #   def initialize(
          #     reseller_type:,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     aws_options: nil,
          #     ending_before: nil,
          #     fraction: nil,
          #     gcp_options: nil,
          #     netsuite_reseller_id: nil,
          #     reseller_contract_value: nil,
          #     starting_at: nil,
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
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule]
          required :schedule, -> { MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule }

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
          #   # @param schedule [MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule]
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
            #   @return [MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule]
            #   attr_writer :recurring_schedule

            # @!attribute [r] schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem>]
            #   attr_writer :schedule_items

            # @!parse
            #   # Must provide either schedule_items or recurring_schedule.
            #   #
            #   # @param credit_type_id [String]
            #   # @param recurring_schedule [MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule]
            #   # @param schedule_items [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem>]
            #   #
            #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class RecurringSchedule < MetronomeSDK::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency }

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
              #   # @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              #   # @param ending_before [Time]
              #   # @param frequency [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
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
      end
    end
  end
end
