# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#amend
      class ContractAmendParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

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

        # @!attribute commits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit>, nil]
        optional :commits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::Commit] }

        # @!attribute credits
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit>, nil]
        optional :credits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::Credit] }

        # @!attribute custom_fields
        #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute discounts
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount>, nil]
        optional :discounts,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::Discount] }

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :netsuite_sales_order_id, String

        # @!attribute overrides
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override>, nil]
        optional :overrides,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::Override] }

        # @!attribute professional_services
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ProfessionalService>, nil]
        optional :professional_services,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::ProfessionalService] }

        # @!attribute reseller_royalties
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty>, nil]
        optional :reseller_royalties,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty] }

        # @!attribute salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :salesforce_opportunity_id, String

        # @!attribute scheduled_charges
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge>, nil]
        optional :scheduled_charges,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::ScheduledCharge] }

        # @!attribute total_contract_value
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Float, nil]
        optional :total_contract_value, Float

        # @!method initialize(contract_id:, customer_id:, starting_at:, commits: nil, credits: nil, custom_fields: nil, discounts: nil, netsuite_sales_order_id: nil, overrides: nil, professional_services: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges: nil, total_contract_value: nil, request_options: {})
        #   @param contract_id [String] ID of the contract to amend
        #
        #   @param customer_id [String] ID of the customer whose contract is to be amended
        #
        #   @param starting_at [Time] inclusive start time for the amendment
        #
        #   @param commits [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit>]
        #
        #   @param credits [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit>]
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @param discounts [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount>] This field's availability is dependent on your client's configuration.
        #
        #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
        #
        #   @param overrides [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override>]
        #
        #   @param professional_services [Array<MetronomeSDK::Models::V1::ContractAmendParams::ProfessionalService>] This field's availability is dependent on your client's configuration.
        #
        #   @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
        #
        #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
        #
        #   @param scheduled_charges [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge>]
        #
        #   @param total_contract_value [Float] This field's availability is dependent on your client's configuration.
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class Commit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::Type]
          required :type, enum: -> { MetronomeSDK::V1::ContractAmendParams::Commit::Type }

          # @!attribute access_schedule
          #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          #   commits only one schedule item is allowed and amount must match invoice_schedule
          #   total.
          #
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule }

          # @!attribute amount
          #   (DEPRECATED) Use access_schedule and invoice_schedule instead.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute applicable_product_ids
          #   Which products the commit applies to. If applicable_product_ids,
          #   applicable_product_tags or specifiers are not provided, the commit applies to
          #   all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #   Which tags the commit applies to. If applicable_product_ids,
          #   applicable_product_tags or specifiers are not provided, the commit applies to
          #   all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute hierarchy_configuration
          #   Optional configuration for commit hierarchy access control
          #
          #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
          optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

          # @!attribute invoice_schedule
          #   Required for "POSTPAID" commits: the true up invoice will be generated at this
          #   time and only one schedule item is allowed; the total must match access_schedule
          #   amount. Optional for "PREPAID" commits: if not provided, this will be a
          #   "complimentary" commit with no invoice.
          #
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule, nil]
          optional :invoice_schedule, -> { MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule }

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
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig, nil]
          optional :payment_gate_config, -> { MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig }

          # @!attribute priority
          #   If multiple commits are applicable, the one with the lower priority will apply
          #   first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V1::ContractAmendParams::Commit::RateType }

          # @!attribute rollover_fraction
          #   Fraction of unused segments that will be rolled over. Must be between 0 and 1.
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float

          # @!attribute specifiers
          #   List of filters that determine what kind of customer usage draws down a commit
          #   or credit. A customer's usage needs to meet the condition of at least one of the
          #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
          #   be used together with `applicable_product_ids` or `applicable_product_tags`.
          #
          #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
          optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] }

          # @!attribute temporary_id
          #   A temporary ID for the commit that can be used to reference the commit for
          #   commit specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!method initialize(product_id:, type:, access_schedule: nil, amount: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, hierarchy_configuration: nil, invoice_schedule: nil, name: nil, netsuite_sales_order_id: nil, payment_gate_config: nil, priority: nil, rate_type: nil, rollover_fraction: nil, specifiers: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractAmendParams::Commit} for more details.
          #
          #   @param product_id [String]
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::Type]
          #
          #   @param access_schedule [MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule] Required: Schedule for distributing the commit to the customer. For "POSTPAID" c
          #
          #   @param amount [Float] (DEPRECATED) Use access_schedule and invoice_schedule instead.
          #
          #   @param applicable_product_ids [Array<String>] Which products the commit applies to. If applicable_product_ids, applicable_prod
          #
          #   @param applicable_product_tags [Array<String>] Which tags the commit applies to. If applicable*product_ids, applicable_product*
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for commit hierarchy access control
          #
          #   @param invoice_schedule [MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule] Required for "POSTPAID" commits: the true up invoice will be generated at this t
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig] optionally payment gate this commit
          #
          #   @param priority [Float] If multiple commits are applicable, the one with the lower priority will apply f
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::RateType]
          #
          #   @param rollover_fraction [Float] Fraction of unused segments that will be rolled over. Must be between 0 and 1.
          #
          #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param temporary_id [String] A temporary ID for the commit that can be used to reference the commit for commi

          # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID = :PREPAID
            POSTPAID = :POSTPAID

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::Commit::AccessSchedule::ScheduleItem] }

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
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit::AccessSchedule::ScheduleItem>]
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

          # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit#invoice_schedule
          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute do_not_invoice
            #   This field is only applicable to commit invoice schedules. If true, this
            #   schedule will not generate an invoice.
            #
            #   @return [Boolean, nil]
            optional :do_not_invoice, MetronomeSDK::Internal::Type::Boolean

            # @!attribute recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule }

            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem] }

            # @!method initialize(credit_type_id: nil, do_not_invoice: nil, recurring_schedule: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule} for
            #   more details.
            #
            #   Required for "POSTPAID" commits: the true up invoice will be generated at this
            #   time and only one schedule item is allowed; the total must match access_schedule
            #   amount. Optional for "PREPAID" commits: if not provided, this will be a
            #   "complimentary" commit with no invoice.
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed.
            #
            #   @param do_not_invoice [Boolean] This field is only applicable to commit invoice schedules. If true, this schedul
            #
            #   @param recurring_schedule [MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

            # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule#recurring_schedule
            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency }

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
              #   {MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule}
              #   for more details.
              #
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

              # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule#amount_distribution
              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule#frequency
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
              #   {MetronomeSDK::Models::V1::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem}
              #   for more details.
              #
              #   @param timestamp [Time] timestamp of the scheduled event
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
            end
          end

          # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit#payment_gate_config
          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType }

            # @!attribute precalculated_tax_config
            #   Only applicable if using PRECALCULATED as your tax type.
            #
            #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig, nil]
            optional :precalculated_tax_config,
                     -> { MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig }

            # @!attribute stripe_config
            #   Only applicable if using STRIPE as your payment gate type.
            #
            #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig }

            # @!attribute tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType, nil]
            optional :tax_type, enum: -> { MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType }

            # @!method initialize(payment_gate_type:, precalculated_tax_config: nil, stripe_config: nil, tax_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig} for
            #   more details.
            #
            #   optionally payment gate this commit
            #
            #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
            #
            #   @param precalculated_tax_config [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig] Only applicable if using PRECALCULATED as your tax type.
            #
            #   @param stripe_config [MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig] Only applicable if using STRIPE as your payment gate type.
            #
            #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            #
            # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig#payment_gate_type
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig#precalculated_tax_config
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
              #   {MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig}
              #   for more details.
              #
              #   Only applicable if using PRECALCULATED as your tax type.
              #
              #   @param tax_amount [Float] Amount of tax to be applied. This should be in the same currency and denominatio
              #
              #   @param tax_name [String] Name of the tax to be applied. This may be used in an invoice line item descript
            end

            # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig#stripe_config
            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType }

              # @!attribute invoice_metadata
              #   Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
              #   your payment type.
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :invoice_metadata, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute on_session_payment
              #   If true, the payment will be made assuming the customer is present (i.e. on
              #   session).
              #
              #   If false, the payment will be made assuming the customer is not present (i.e.
              #   off session). For cardholders from a country with an e-mandate requirement (e.g.
              #   India), the payment may be declined.
              #
              #   If left blank, will default to false.
              #
              #   @return [Boolean, nil]
              optional :on_session_payment, MetronomeSDK::Internal::Type::Boolean

              # @!method initialize(payment_type:, invoice_metadata: nil, on_session_payment: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig}
              #   for more details.
              #
              #   Only applicable if using STRIPE as your payment gate type.
              #
              #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE
              #
              #   @param invoice_metadata [Hash{Symbol=>String}] Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
              #
              #   @param on_session_payment [Boolean] If true, the payment will be made assuming the customer is present (i.e. on sess

              # If left blank, will default to INVOICE
              #
              # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig::StripeConfig#payment_type
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
            # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit::PaymentGateConfig#tax_type
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE
              ANROK = :ANROK
              AVALARA = :AVALARA
              PRECALCULATED = :PRECALCULATED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::ContractAmendParams::Commit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Credit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute access_schedule
          #   Schedule for distributing the credit to the customer.
          #
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Credit::AccessSchedule]
          required :access_schedule, -> { MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule }

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
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute hierarchy_configuration
          #   Optional configuration for credit hierarchy access control
          #
          #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
          optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

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
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Credit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V1::ContractAmendParams::Credit::RateType }

          # @!attribute specifiers
          #   List of filters that determine what kind of customer usage draws down a commit
          #   or credit. A customer's usage needs to meet the condition of at least one of the
          #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
          #   be used together with `applicable_product_ids` or `applicable_product_tags`.
          #
          #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
          optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] }

          # @!method initialize(access_schedule:, product_id:, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, hierarchy_configuration: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, specifiers: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractAmendParams::Credit} for more details.
          #
          #   @param access_schedule [MetronomeSDK::Models::V1::ContractAmendParams::Credit::AccessSchedule] Schedule for distributing the credit to the customer.
          #
          #   @param product_id [String]
          #
          #   @param applicable_product_ids [Array<String>] Which products the credit applies to. If both applicable_product_ids and applica
          #
          #   @param applicable_product_tags [Array<String>] Which tags the credit applies to. If both applicable*product_ids and applicable*
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for credit hierarchy access control
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param priority [Float] If multiple credits are applicable, the one with the lower priority will apply f
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Credit::RateType]
          #
          #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o

          # @see MetronomeSDK::Models::V1::ContractAmendParams::Credit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::Credit::AccessSchedule::ScheduleItem] }

            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!method initialize(schedule_items:, credit_type_id: nil)
            #   Schedule for distributing the credit to the customer.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractAmendParams::Credit::AccessSchedule::ScheduleItem>]
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

          # @see MetronomeSDK::Models::V1::ContractAmendParams::Credit#rate_type
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
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule]
          required :schedule, -> { MetronomeSDK::V1::ContractAmendParams::Discount::Schedule }

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
          #   @param schedule [MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule] Must provide either schedule_items or recurring_schedule.
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

          # @see MetronomeSDK::Models::V1::ContractAmendParams::Discount#schedule
          class Schedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute do_not_invoice
            #   This field is only applicable to commit invoice schedules. If true, this
            #   schedule will not generate an invoice.
            #
            #   @return [Boolean, nil]
            optional :do_not_invoice, MetronomeSDK::Internal::Type::Boolean

            # @!attribute recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule }

            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::ScheduleItem] }

            # @!method initialize(credit_type_id: nil, do_not_invoice: nil, recurring_schedule: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule} for more
            #   details.
            #
            #   Must provide either schedule_items or recurring_schedule.
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed.
            #
            #   @param do_not_invoice [Boolean] This field is only applicable to commit invoice schedules. If true, this schedul
            #
            #   @param recurring_schedule [MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

            # @see MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule#recurring_schedule
            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency }

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
              #   {MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule}
              #   for more details.
              #
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency]
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

              # @see MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule#amount_distribution
              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::RecurringSchedule#frequency
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
              #   {MetronomeSDK::Models::V1::ContractAmendParams::Discount::Schedule::ScheduleItem}
              #   for more details.
              #
              #   @param timestamp [Time] timestamp of the scheduled event
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
            end
          end
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
          #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override::OverrideSpecifier>, nil]
          optional :override_specifiers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::Override::OverrideSpecifier] }

          # @!attribute overwrite_rate
          #   Required for OVERWRITE type.
          #
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate, nil]
          optional :overwrite_rate, -> { MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate }

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
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::Target, nil]
          optional :target, enum: -> { MetronomeSDK::V1::ContractAmendParams::Override::Target }

          # @!attribute tiers
          #   Required for TIERED type. Must have at least one tier.
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override::Tier>, nil]
          optional :tiers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::Override::Tier] }

          # @!attribute type
          #   Overwrites are prioritized over multipliers and tiered overrides.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::Type, nil]
          optional :type, enum: -> { MetronomeSDK::V1::ContractAmendParams::Override::Type }

          # @!method initialize(starting_at:, applicable_product_tags: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, override_specifiers: nil, overwrite_rate: nil, priority: nil, product_id: nil, target: nil, tiers: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractAmendParams::Override} for more details.
          #
          #   @param starting_at [Time] RFC 3339 timestamp indicating when the override will start applying (inclusive)
          #
          #   @param applicable_product_tags [Array<String>] tags identifying products whose rates are being overridden. Cannot be used in co
          #
          #   @param ending_before [Time] RFC 3339 timestamp indicating when the override will stop applying (exclusive)
          #
          #   @param entitled [Boolean]
          #
          #   @param is_commit_specific [Boolean] Indicates whether the override should only apply to commits. Defaults to `false`
          #
          #   @param multiplier [Float] Required for MULTIPLIER type. Must be >=0.
          #
          #   @param override_specifiers [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override::OverrideSpecifier>] Cannot be used in conjunction with product_id or applicable_product_tags. If pro
          #
          #   @param overwrite_rate [MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate] Required for OVERWRITE type.
          #
          #   @param priority [Float] Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
          #
          #   @param product_id [String] ID of the product whose rate is being overridden. Cannot be used in conjunction
          #
          #   @param target [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::Target] Indicates whether the override applies to commit rates or list rates. Can only b
          #
          #   @param tiers [Array<MetronomeSDK::Models::V1::ContractAmendParams::Override::Tier>] Required for TIERED type. Must have at least one tier.
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::Type] Overwrites are prioritized over multipliers and tiered overrides.

          class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_frequency
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::OverrideSpecifier::BillingFrequency, nil]
            optional :billing_frequency,
                     enum: -> { MetronomeSDK::V1::ContractAmendParams::Override::OverrideSpecifier::BillingFrequency }

            # @!attribute commit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #   one of `product_id`, `product_tags`, `pricing_group_values`, or
            #   `presentation_group_values`. If provided, the override will only apply to the
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
            #   one of `product_id`, `product_tags`, `pricing_group_values`, or
            #   `presentation_group_values`. If provided, the override will only apply to
            #   commits created by the specified recurring commit ids.
            #
            #   @return [Array<String>, nil]
            optional :recurring_commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute recurring_credit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #   one of `product_id`, `product_tags`, `pricing_group_values`, or
            #   `presentation_group_values`. If provided, the override will only apply to
            #   credits created by the specified recurring credit ids.
            #
            #   @return [Array<String>, nil]
            optional :recurring_credit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(billing_frequency: nil, commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil, recurring_credit_ids: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractAmendParams::Override::OverrideSpecifier} for
            #   more details.
            #
            #   @param billing_frequency [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::OverrideSpecifier::BillingFrequency]
            #
            #   @param commit_ids [Array<String>] Can only be used for commit specific overrides. Must be used in conjunction with
            #
            #   @param presentation_group_values [Hash{Symbol=>String}] A map of group names to values. The override will only apply to line items with
            #
            #   @param pricing_group_values [Hash{Symbol=>String}] A map of pricing group names to values. The override will only apply to products
            #
            #   @param product_id [String] If provided, the override will only apply to the product with the specified ID.
            #
            #   @param product_tags [Array<String>] If provided, the override will only apply to products with all the specified tag
            #
            #   @param recurring_commit_ids [Array<String>] Can only be used for commit specific overrides. Must be used in conjunction with
            #
            #   @param recurring_credit_ids [Array<String>] Can only be used for commit specific overrides. Must be used in conjunction with

            # @see MetronomeSDK::Models::V1::ContractAmendParams::Override::OverrideSpecifier#billing_frequency
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

          # @see MetronomeSDK::Models::V1::ContractAmendParams::Override#overwrite_rate
          class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate::RateType]
            required :rate_type, enum: -> { MetronomeSDK::V1::ContractAmendParams::Override::OverwriteRate::RateType }

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
            optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

            # @!method initialize(rate_type:, credit_type_id: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate} for
            #   more details.
            #
            #   Required for OVERWRITE type.
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate::RateType]
            #
            #   @param credit_type_id [String]
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

            # @see MetronomeSDK::Models::V1::ContractAmendParams::Override::OverwriteRate#rate_type
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
          # @see MetronomeSDK::Models::V1::ContractAmendParams::Override#target
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
          # @see MetronomeSDK::Models::V1::ContractAmendParams::Override#type
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
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
          #   {MetronomeSDK::Models::V1::ContractAmendParams::ProfessionalService} for more
          #   details.
          #
          #   @param max_amount [Float] Maximum amount for the term.
          #
          #   @param product_id [String]
          #
          #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
          #
          #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String]
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
        end

        class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute reseller_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::ResellerType]
          required :reseller_type, enum: -> { MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::ResellerType }

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
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::AwsOptions, nil]
          optional :aws_options, -> { MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::AwsOptions }

          # @!attribute ending_before
          #   Use null to indicate that the existing end timestamp should be removed.
          #
          #   @return [Time, nil]
          optional :ending_before, Time, nil?: true

          # @!attribute fraction
          #
          #   @return [Float, nil]
          optional :fraction, Float

          # @!attribute gcp_options
          #
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::GcpOptions, nil]
          optional :gcp_options, -> { MetronomeSDK::V1::ContractAmendParams::ResellerRoyalty::GcpOptions }

          # @!attribute netsuite_reseller_id
          #
          #   @return [String, nil]
          optional :netsuite_reseller_id, String

          # @!attribute reseller_contract_value
          #
          #   @return [Float, nil]
          optional :reseller_contract_value, Float

          # @!attribute starting_at
          #
          #   @return [Time, nil]
          optional :starting_at, Time

          # @!method initialize(reseller_type:, applicable_product_ids: nil, applicable_product_tags: nil, aws_options: nil, ending_before: nil, fraction: nil, gcp_options: nil, netsuite_reseller_id: nil, reseller_contract_value: nil, starting_at: nil)
          #   @param reseller_type [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::ResellerType]
          #
          #   @param applicable_product_ids [Array<String>] Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @param applicable_product_tags [Array<String>] Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @param aws_options [MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::AwsOptions]
          #
          #   @param ending_before [Time, nil] Use null to indicate that the existing end timestamp should be removed.
          #
          #   @param fraction [Float]
          #
          #   @param gcp_options [MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty::GcpOptions]
          #
          #   @param netsuite_reseller_id [String]
          #
          #   @param reseller_contract_value [Float]
          #
          #   @param starting_at [Time]

          # @see MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty#reseller_type
          module ResellerType
            extend MetronomeSDK::Internal::Type::Enum

            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty#aws_options
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

          # @see MetronomeSDK::Models::V1::ContractAmendParams::ResellerRoyalty#gcp_options
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
          #   @return [MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule]
          required :schedule, -> { MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule }

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
          #   @param schedule [MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule] Must provide either schedule_items or recurring_schedule.
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

          # @see MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge#schedule
          class Schedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute do_not_invoice
            #   This field is only applicable to commit invoice schedules. If true, this
            #   schedule will not generate an invoice.
            #
            #   @return [Boolean, nil]
            optional :do_not_invoice, MetronomeSDK::Internal::Type::Boolean

            # @!attribute recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule }

            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem] }

            # @!method initialize(credit_type_id: nil, do_not_invoice: nil, recurring_schedule: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule} for
            #   more details.
            #
            #   Must provide either schedule_items or recurring_schedule.
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed.
            #
            #   @param do_not_invoice [Boolean] This field is only applicable to commit invoice schedules. If true, this schedul
            #
            #   @param recurring_schedule [MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

            # @see MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule#recurring_schedule
            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency }

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
              #   {MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule}
              #   for more details.
              #
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @param amount_distribution [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

              # @see MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule#amount_distribution
              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule#frequency
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
              #   {MetronomeSDK::Models::V1::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem}
              #   for more details.
              #
              #   @param timestamp [Time] timestamp of the scheduled event
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
            end
          end
        end
      end
    end
  end
end
