# frozen_string_literal: true

module MetronomeSDK
  module Models
    # @see MetronomeSDK::Resources::Packages#create
    class PackageCreateParams < MetronomeSDK::Internal::Type::BaseModel
      extend MetronomeSDK::Internal::Type::RequestParameters::Converter
      include MetronomeSDK::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute billing_anchor_date
      #
      #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::BillingAnchorDate, nil]
      optional :billing_anchor_date, enum: -> { MetronomeSDK::PackageCreateParams::BillingAnchorDate }

      # @!attribute billing_provider
      #
      #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::BillingProvider, nil]
      optional :billing_provider, enum: -> { MetronomeSDK::PackageCreateParams::BillingProvider }

      # @!attribute commits
      #
      #   @return [Array<MetronomeSDK::Models::PackageCreateParams::Commit>, nil]
      optional :commits, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::Commit] }

      # @!attribute contract_name
      #
      #   @return [String, nil]
      optional :contract_name, String

      # @!attribute credits
      #
      #   @return [Array<MetronomeSDK::Models::PackageCreateParams::Credit>, nil]
      optional :credits, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::Credit] }

      # @!attribute custom_fields
      #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute delivery_method
      #
      #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::DeliveryMethod, nil]
      optional :delivery_method, enum: -> { MetronomeSDK::PackageCreateParams::DeliveryMethod }

      # @!attribute duration
      #
      #   @return [MetronomeSDK::Models::PackageCreateParams::Duration, nil]
      optional :duration, -> { MetronomeSDK::PackageCreateParams::Duration }

      # @!attribute multiplier_override_prioritization
      #   Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
      #   prices automatically. EXPLICIT prioritization requires specifying priorities for
      #   each multiplier; the one with the lowest priority value will be prioritized
      #   first. If tiered overrides are used, prioritization must be explicit.
      #
      #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::MultiplierOverridePrioritization, nil]
      optional :multiplier_override_prioritization,
               enum: -> { MetronomeSDK::PackageCreateParams::MultiplierOverridePrioritization }

      # @!attribute net_payment_terms_days
      #
      #   @return [Float, nil]
      optional :net_payment_terms_days, Float

      # @!attribute overrides
      #
      #   @return [Array<MetronomeSDK::Models::PackageCreateParams::Override>, nil]
      optional :overrides,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::Override] }

      # @!attribute prepaid_balance_threshold_configuration
      #
      #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration, nil]
      optional :prepaid_balance_threshold_configuration,
               -> { MetronomeSDK::PrepaidBalanceThresholdConfiguration }

      # @!attribute priority
      #   Priority of the generated contract.
      #
      #   @return [Float, nil]
      optional :priority, Float

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
      #   @return [Array<MetronomeSDK::Models::PackageCreateParams::RecurringCommit>, nil]
      optional :recurring_commits,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::RecurringCommit] }

      # @!attribute recurring_credits
      #
      #   @return [Array<MetronomeSDK::Models::PackageCreateParams::RecurringCredit>, nil]
      optional :recurring_credits,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::RecurringCredit] }

      # @!attribute scheduled_charges
      #
      #   @return [Array<MetronomeSDK::Models::PackageCreateParams::ScheduledCharge>, nil]
      optional :scheduled_charges,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::ScheduledCharge] }

      # @!attribute scheduled_charges_on_usage_invoices
      #   Determines which scheduled and commit charges to consolidate onto the Contract's
      #   usage invoice. The charge's `timestamp` must match the usage invoice's
      #   `ending_before` date for consolidation to occur. This field cannot be modified
      #   after a Contract has been created. If this field is omitted, charges will appear
      #   on a separate invoice from usage charges.
      #
      #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::ScheduledChargesOnUsageInvoices, nil]
      optional :scheduled_charges_on_usage_invoices,
               enum: -> { MetronomeSDK::PackageCreateParams::ScheduledChargesOnUsageInvoices }

      # @!attribute spend_threshold_configuration
      #
      #   @return [MetronomeSDK::Models::SpendThresholdConfiguration, nil]
      optional :spend_threshold_configuration, -> { MetronomeSDK::SpendThresholdConfiguration }

      # @!attribute subscriptions
      #
      #   @return [Array<MetronomeSDK::Models::PackageCreateParams::Subscription>, nil]
      optional :subscriptions,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::Subscription] }

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a record is made
      #   with a previously used uniqueness key, a new record will not be created and the
      #   request will fail with a 409 error.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String

      # @!attribute usage_statement_schedule
      #
      #   @return [MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule, nil]
      optional :usage_statement_schedule, -> { MetronomeSDK::PackageCreateParams::UsageStatementSchedule }

      # @!method initialize(name:, billing_anchor_date: nil, billing_provider: nil, commits: nil, contract_name: nil, credits: nil, custom_fields: nil, delivery_method: nil, duration: nil, multiplier_override_prioritization: nil, net_payment_terms_days: nil, overrides: nil, prepaid_balance_threshold_configuration: nil, priority: nil, rate_card_alias: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, scheduled_charges: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, uniqueness_key: nil, usage_statement_schedule: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::PackageCreateParams} for more details.
      #
      #   @param name [String]
      #
      #   @param billing_anchor_date [Symbol, MetronomeSDK::Models::PackageCreateParams::BillingAnchorDate]
      #
      #   @param billing_provider [Symbol, MetronomeSDK::Models::PackageCreateParams::BillingProvider]
      #
      #   @param commits [Array<MetronomeSDK::Models::PackageCreateParams::Commit>]
      #
      #   @param contract_name [String]
      #
      #   @param credits [Array<MetronomeSDK::Models::PackageCreateParams::Credit>]
      #
      #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      #
      #   @param delivery_method [Symbol, MetronomeSDK::Models::PackageCreateParams::DeliveryMethod]
      #
      #   @param duration [MetronomeSDK::Models::PackageCreateParams::Duration]
      #
      #   @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::PackageCreateParams::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
      #
      #   @param net_payment_terms_days [Float]
      #
      #   @param overrides [Array<MetronomeSDK::Models::PackageCreateParams::Override>]
      #
      #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration]
      #
      #   @param priority [Float] Priority of the generated contract.
      #
      #   @param rate_card_alias [String] Selects the rate card linked to the specified alias as of the contract's start d
      #
      #   @param rate_card_id [String]
      #
      #   @param recurring_commits [Array<MetronomeSDK::Models::PackageCreateParams::RecurringCommit>]
      #
      #   @param recurring_credits [Array<MetronomeSDK::Models::PackageCreateParams::RecurringCredit>]
      #
      #   @param scheduled_charges [Array<MetronomeSDK::Models::PackageCreateParams::ScheduledCharge>]
      #
      #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::PackageCreateParams::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
      #
      #   @param spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfiguration]
      #
      #   @param subscriptions [Array<MetronomeSDK::Models::PackageCreateParams::Subscription>]
      #
      #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
      #
      #   @param usage_statement_schedule [MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule]
      #
      #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

      module BillingAnchorDate
        extend MetronomeSDK::Internal::Type::Enum

        CONTRACT_START_DATE = :contract_start_date
        FIRST_BILLING_PERIOD = :first_billing_period

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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

      class Commit < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute type
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::Type]
        required :type, enum: -> { MetronomeSDK::PackageCreateParams::Commit::Type }

        # @!attribute access_schedule
        #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
        #   commits only one schedule item is allowed and amount must match invoice_schedule
        #   total.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule, nil]
        optional :access_schedule, -> { MetronomeSDK::PackageCreateParams::Commit::AccessSchedule }

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

        # @!attribute invoice_schedule
        #   Required for "POSTPAID" commits: the true up invoice will be generated at this
        #   time and only one schedule item is allowed; the total must match access_schedule
        #   amount. Optional for "PREPAID" commits: if not provided, this will be a
        #   "complimentary" commit with no invoice.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule, nil]
        optional :invoice_schedule, -> { MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule }

        # @!attribute name
        #   displayed on invoices
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute payment_gate_config
        #   optionally payment gate this commit
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig, nil]
        optional :payment_gate_config, -> { MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig }

        # @!attribute priority
        #   If multiple commits are applicable, the one with the lower priority will apply
        #   first.
        #
        #   @return [Float, nil]
        optional :priority, Float

        # @!attribute rate_type
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::RateType, nil]
        optional :rate_type, enum: -> { MetronomeSDK::PackageCreateParams::Commit::RateType }

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

        # @!method initialize(product_id:, type:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, invoice_schedule: nil, name: nil, payment_gate_config: nil, priority: nil, rate_type: nil, rollover_fraction: nil, specifiers: nil, temporary_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PackageCreateParams::Commit} for more details.
        #
        #   @param product_id [String]
        #
        #   @param type [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::Type]
        #
        #   @param access_schedule [MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule] Required: Schedule for distributing the commit to the customer. For "POSTPAID" c
        #
        #   @param applicable_product_ids [Array<String>] Which products the commit applies to. If applicable_product_ids, applicable_prod
        #
        #   @param applicable_product_tags [Array<String>] Which tags the commit applies to. If applicable*product_ids, applicable_product*
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @param description [String] Used only in UI/API. It is not exposed to end customers.
        #
        #   @param invoice_schedule [MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule] Required for "POSTPAID" commits: the true up invoice will be generated at this t
        #
        #   @param name [String] displayed on invoices
        #
        #   @param payment_gate_config [MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig] optionally payment gate this commit
        #
        #   @param priority [Float] If multiple commits are applicable, the one with the lower priority will apply f
        #
        #   @param rate_type [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::RateType]
        #
        #   @param rollover_fraction [Float] Fraction of unused segments that will be rolled over. Must be between 0 and 1.
        #
        #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o
        #
        #   @param temporary_id [String] A temporary ID for the commit that can be used to reference the commit for commi

        # @see MetronomeSDK::Models::PackageCreateParams::Commit#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          PREPAID = :PREPAID
          POSTPAID = :POSTPAID

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::PackageCreateParams::Commit#access_schedule
        class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute schedule_items
          #
          #   @return [Array<MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem] }

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
          #   @param schedule_items [Array<MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem>]
          #
          #   @param credit_type_id [String] Defaults to USD (cents) if not passed

          class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute duration
            #   Offset relative to the start of this segment indicating when it should end.
            #
            #   @return [MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration]
            required :duration,
                     -> { MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration }

            # @!attribute starting_at_offset
            #   Date relative to the contract start date indicating the start of this schedule
            #   segment.
            #
            #   @return [MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset]
            required :starting_at_offset,
                     -> { MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset }

            # @!method initialize(amount:, duration:, starting_at_offset:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem}
            #   for more details.
            #
            #   @param amount [Float]
            #
            #   @param duration [MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration] Offset relative to the start of this segment indicating when it should end.
            #
            #   @param starting_at_offset [MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset] Date relative to the contract start date indicating the start of this schedule s

            # @see MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem#duration
            class Duration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit]
              required :unit,
                       enum: -> { MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit }

              # @!attribute value
              #
              #   @return [Integer]
              required :value, Integer

              # @!method initialize(unit:, value:)
              #   Offset relative to the start of this segment indicating when it should end.
              #
              #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit]
              #   @param value [Integer]

              # @see MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                DAYS = :DAYS
                WEEKS = :WEEKS
                MONTHS = :MONTHS
                QUARTERS = :QUARTERS
                YEARS = :YEARS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem#starting_at_offset
            class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
              required :unit,
                       enum: -> { MetronomeSDK::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit }

              # @!attribute value
              #
              #   @return [Integer]
              required :value, Integer

              # @!method initialize(unit:, value:)
              #   Date relative to the contract start date indicating the start of this schedule
              #   segment.
              #
              #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
              #   @param value [Integer]

              # @see MetronomeSDK::Models::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                DAYS = :DAYS
                WEEKS = :WEEKS
                MONTHS = :MONTHS
                QUARTERS = :QUARTERS
                YEARS = :YEARS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::Commit#invoice_schedule
        class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #
          #   @return [Array<MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem>]
          required :schedule_items,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem] }

          # @!attribute credit_type_id
          #   Defaults to USD (cents) if not passed.
          #
          #   @return [String, nil]
          optional :credit_type_id, String

          # @!method initialize(schedule_items:, credit_type_id: nil)
          #   Required for "POSTPAID" commits: the true up invoice will be generated at this
          #   time and only one schedule item is allowed; the total must match access_schedule
          #   amount. Optional for "PREPAID" commits: if not provided, this will be a
          #   "complimentary" commit with no invoice.
          #
          #   @param schedule_items [Array<MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.
          #
          #   @param credit_type_id [String] Defaults to USD (cents) if not passed.

          class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute date_offset
            #   Date relative to the contract start date.
            #
            #   @return [MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset]
            required :date_offset,
                     -> { MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset }

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

            # @!method initialize(date_offset:, amount: nil, quantity: nil, unit_price: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem}
            #   for more details.
            #
            #   @param date_offset [MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset] Date relative to the contract start date.
            #
            #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
            #
            #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
            #
            #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

            # @see MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem#date_offset
            class DateOffset < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit]
              required :unit,
                       enum: -> { MetronomeSDK::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit }

              # @!attribute value
              #
              #   @return [Integer]
              required :value, Integer

              # @!method initialize(unit:, value:)
              #   Date relative to the contract start date.
              #
              #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit]
              #   @param value [Integer]

              # @see MetronomeSDK::Models::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                DAYS = :DAYS
                WEEKS = :WEEKS
                MONTHS = :MONTHS
                QUARTERS = :QUARTERS
                YEARS = :YEARS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::Commit#payment_gate_config
        class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute payment_gate_type
          #   Gate access to the commit balance based on successful collection of payment.
          #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          #   facilitate payment using your own payment integration. Select NONE if you do not
          #   wish to payment gate the commit balance.
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType]
          required :payment_gate_type,
                   enum: -> { MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType }

          # @!attribute precalculated_tax_config
          #   Only applicable if using PRECALCULATED as your tax type.
          #
          #   @return [MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig, nil]
          optional :precalculated_tax_config,
                   -> { MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig }

          # @!attribute stripe_config
          #   Only applicable if using STRIPE as your payment gate type.
          #
          #   @return [MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig, nil]
          optional :stripe_config, -> { MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig }

          # @!attribute tax_type
          #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
          #   will default to NONE.
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::TaxType, nil]
          optional :tax_type, enum: -> { MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::TaxType }

          # @!method initialize(payment_gate_type:, precalculated_tax_config: nil, stripe_config: nil, tax_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig} for more
          #   details.
          #
          #   optionally payment gate this commit
          #
          #   @param payment_gate_type [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
          #
          #   @param precalculated_tax_config [MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig] Only applicable if using PRECALCULATED as your tax type.
          #
          #   @param stripe_config [MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig] Only applicable if using STRIPE as your payment gate type.
          #
          #   @param tax_type [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          #
          # @see MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig#payment_gate_type
          module PaymentGateType
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            STRIPE = :STRIPE
            EXTERNAL = :EXTERNAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig#precalculated_tax_config
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
            #   {MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::PrecalculatedTaxConfig}
            #   for more details.
            #
            #   Only applicable if using PRECALCULATED as your tax type.
            #
            #   @param tax_amount [Float] Amount of tax to be applied. This should be in the same currency and denominatio
            #
            #   @param tax_name [String] Name of the tax to be applied. This may be used in an invoice line item descript
          end

          # @see MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig#stripe_config
          class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_type
            #   If left blank, will default to INVOICE
            #
            #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType]
            required :payment_type,
                     enum: -> { MetronomeSDK::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType }

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
            #   {MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig}
            #   for more details.
            #
            #   Only applicable if using STRIPE as your payment gate type.
            #
            #   @param payment_type [Symbol, MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE
            #
            #   @param invoice_metadata [Hash{Symbol=>String}] Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as
            #
            #   @param on_session_payment [Boolean] If true, the payment will be made assuming the customer is present (i.e. on sess

            # If left blank, will default to INVOICE
            #
            # @see MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig::StripeConfig#payment_type
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
          # @see MetronomeSDK::Models::PackageCreateParams::Commit::PaymentGateConfig#tax_type
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

        # @see MetronomeSDK::Models::PackageCreateParams::Commit#rate_type
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
        #   @return [MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule]
        required :access_schedule, -> { MetronomeSDK::PackageCreateParams::Credit::AccessSchedule }

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

        # @!attribute name
        #   displayed on invoices
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute priority
        #   If multiple credits are applicable, the one with the lower priority will apply
        #   first.
        #
        #   @return [Float, nil]
        optional :priority, Float

        # @!attribute rate_type
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Credit::RateType, nil]
        optional :rate_type, enum: -> { MetronomeSDK::PackageCreateParams::Credit::RateType }

        # @!attribute specifiers
        #   List of filters that determine what kind of customer usage draws down a commit
        #   or credit. A customer's usage needs to meet the condition of at least one of the
        #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
        #   be used together with `applicable_product_ids` or `applicable_product_tags`.
        #
        #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
        optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] }

        # @!method initialize(access_schedule:, product_id:, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, name: nil, priority: nil, rate_type: nil, specifiers: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PackageCreateParams::Credit} for more details.
        #
        #   @param access_schedule [MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule] Schedule for distributing the credit to the customer.
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
        #   @param name [String] displayed on invoices
        #
        #   @param priority [Float] If multiple credits are applicable, the one with the lower priority will apply f
        #
        #   @param rate_type [Symbol, MetronomeSDK::Models::PackageCreateParams::Credit::RateType]
        #
        #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o

        # @see MetronomeSDK::Models::PackageCreateParams::Credit#access_schedule
        class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute schedule_items
          #
          #   @return [Array<MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem] }

          # @!attribute credit_type_id
          #   Defaults to USD (cents) if not passed
          #
          #   @return [String, nil]
          optional :credit_type_id, String

          # @!method initialize(schedule_items:, credit_type_id: nil)
          #   Schedule for distributing the credit to the customer.
          #
          #   @param schedule_items [Array<MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem>]
          #
          #   @param credit_type_id [String] Defaults to USD (cents) if not passed

          class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute duration
            #   Offset relative to the start of this segment indicating when it should end.
            #
            #   @return [MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration]
            required :duration,
                     -> { MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration }

            # @!attribute starting_at_offset
            #   Date relative to the contract start date indicating the start of this schedule
            #   segment.
            #
            #   @return [MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset]
            required :starting_at_offset,
                     -> { MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset }

            # @!method initialize(amount:, duration:, starting_at_offset:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem}
            #   for more details.
            #
            #   @param amount [Float]
            #
            #   @param duration [MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration] Offset relative to the start of this segment indicating when it should end.
            #
            #   @param starting_at_offset [MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset] Date relative to the contract start date indicating the start of this schedule s

            # @see MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem#duration
            class Duration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit]
              required :unit,
                       enum: -> { MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit }

              # @!attribute value
              #
              #   @return [Integer]
              required :value, Integer

              # @!method initialize(unit:, value:)
              #   Offset relative to the start of this segment indicating when it should end.
              #
              #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit]
              #   @param value [Integer]

              # @see MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                DAYS = :DAYS
                WEEKS = :WEEKS
                MONTHS = :MONTHS
                QUARTERS = :QUARTERS
                YEARS = :YEARS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem#starting_at_offset
            class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
              required :unit,
                       enum: -> { MetronomeSDK::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit }

              # @!attribute value
              #
              #   @return [Integer]
              required :value, Integer

              # @!method initialize(unit:, value:)
              #   Date relative to the contract start date indicating the start of this schedule
              #   segment.
              #
              #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
              #   @param value [Integer]

              # @see MetronomeSDK::Models::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                DAYS = :DAYS
                WEEKS = :WEEKS
                MONTHS = :MONTHS
                QUARTERS = :QUARTERS
                YEARS = :YEARS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::Credit#rate_type
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      module DeliveryMethod
        extend MetronomeSDK::Internal::Type::Enum

        DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
        AWS_SQS = :aws_sqs
        TACKLE = :tackle
        AWS_SNS = :aws_sns

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Duration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute unit
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Duration::Unit]
        required :unit, enum: -> { MetronomeSDK::PackageCreateParams::Duration::Unit }

        # @!attribute value
        #
        #   @return [Integer]
        required :value, Integer

        # @!method initialize(unit:, value:)
        #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::Duration::Unit]
        #   @param value [Integer]

        # @see MetronomeSDK::Models::PackageCreateParams::Duration#unit
        module Unit
          extend MetronomeSDK::Internal::Type::Enum

          DAYS = :DAYS
          WEEKS = :WEEKS
          MONTHS = :MONTHS
          QUARTERS = :QUARTERS
          YEARS = :YEARS

          # @!method self.values
          #   @return [Array<Symbol>]
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
        # @!attribute override_specifiers
        #   Specifies which products the override will apply to.
        #
        #   @return [Array<MetronomeSDK::Models::PackageCreateParams::Override::OverrideSpecifier>]
        required :override_specifiers,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier] }

        # @!attribute starting_offset
        #   Offset relative to contract start date indicating when the override will start
        #   applying (inclusive)
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::Override::StartingOffset]
        required :starting_offset, -> { MetronomeSDK::PackageCreateParams::Override::StartingOffset }

        # @!attribute duration
        #   Offset relative to override start indicating when the override will stop
        #   applying (exclusive)
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::Override::Duration, nil]
        optional :duration, -> { MetronomeSDK::PackageCreateParams::Override::Duration }

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

        # @!attribute overwrite_rate
        #   Required for OVERWRITE type.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::Override::OverwriteRate, nil]
        optional :overwrite_rate, -> { MetronomeSDK::PackageCreateParams::Override::OverwriteRate }

        # @!attribute priority
        #   Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
        #   Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered
        #   and multiplier overrides are prioritized by their priority value (lowest first).
        #   Must be > 0.
        #
        #   @return [Float, nil]
        optional :priority, Float

        # @!attribute target
        #   Indicates whether the override applies to commit rates or list rates. Can only
        #   be used for overrides that have `is_commit_specific` set to `true`. Defaults to
        #   `"LIST_RATE"`.
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::Target, nil]
        optional :target, enum: -> { MetronomeSDK::PackageCreateParams::Override::Target }

        # @!attribute tiers
        #   Required for TIERED type. Must have at least one tier.
        #
        #   @return [Array<MetronomeSDK::Models::PackageCreateParams::Override::Tier>, nil]
        optional :tiers,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::Override::Tier] }

        # @!attribute type
        #   Overwrites are prioritized over multipliers and tiered overrides.
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::Type, nil]
        optional :type, enum: -> { MetronomeSDK::PackageCreateParams::Override::Type }

        # @!method initialize(override_specifiers:, starting_offset:, duration: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, overwrite_rate: nil, priority: nil, target: nil, tiers: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PackageCreateParams::Override} for more details.
        #
        #   @param override_specifiers [Array<MetronomeSDK::Models::PackageCreateParams::Override::OverrideSpecifier>] Specifies which products the override will apply to.
        #
        #   @param starting_offset [MetronomeSDK::Models::PackageCreateParams::Override::StartingOffset] Offset relative to contract start date indicating when the override will start a
        #
        #   @param duration [MetronomeSDK::Models::PackageCreateParams::Override::Duration] Offset relative to override start indicating when the override will stop applyin
        #
        #   @param entitled [Boolean]
        #
        #   @param is_commit_specific [Boolean] Indicates whether the override should only apply to commits. Defaults to `false`
        #
        #   @param multiplier [Float] Required for MULTIPLIER type. Must be >=0.
        #
        #   @param overwrite_rate [MetronomeSDK::Models::PackageCreateParams::Override::OverwriteRate] Required for OVERWRITE type.
        #
        #   @param priority [Float] Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
        #
        #   @param target [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::Target] Indicates whether the override applies to commit rates or list rates. Can only b
        #
        #   @param tiers [Array<MetronomeSDK::Models::PackageCreateParams::Override::Tier>] Required for TIERED type. Must have at least one tier.
        #
        #   @param type [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::Type] Overwrites are prioritized over multipliers and tiered overrides.

        class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute billing_frequency
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency, nil]
          optional :billing_frequency,
                   enum: -> { MetronomeSDK::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency }

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
          #   {MetronomeSDK::Models::PackageCreateParams::Override::OverrideSpecifier} for
          #   more details.
          #
          #   @param billing_frequency [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency]
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

          # @see MetronomeSDK::Models::PackageCreateParams::Override::OverrideSpecifier#billing_frequency
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

        # @see MetronomeSDK::Models::PackageCreateParams::Override#starting_offset
        class StartingOffset < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::StartingOffset::Unit]
          required :unit, enum: -> { MetronomeSDK::PackageCreateParams::Override::StartingOffset::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   Offset relative to contract start date indicating when the override will start
          #   applying (inclusive)
          #
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::StartingOffset::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::PackageCreateParams::Override::StartingOffset#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            DAYS = :DAYS
            WEEKS = :WEEKS
            MONTHS = :MONTHS
            QUARTERS = :QUARTERS
            YEARS = :YEARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::Override#duration
        class Duration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::Duration::Unit]
          required :unit, enum: -> { MetronomeSDK::PackageCreateParams::Override::Duration::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   Offset relative to override start indicating when the override will stop
          #   applying (exclusive)
          #
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::Duration::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::PackageCreateParams::Override::Duration#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            DAYS = :DAYS
            WEEKS = :WEEKS
            MONTHS = :MONTHS
            QUARTERS = :QUARTERS
            YEARS = :YEARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::Override#overwrite_rate
        class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::OverwriteRate::RateType]
          required :rate_type, enum: -> { MetronomeSDK::PackageCreateParams::Override::OverwriteRate::RateType }

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
          #   {MetronomeSDK::Models::PackageCreateParams::Override::OverwriteRate} for more
          #   details.
          #
          #   Required for OVERWRITE type.
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::PackageCreateParams::Override::OverwriteRate::RateType]
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

          # @see MetronomeSDK::Models::PackageCreateParams::Override::OverwriteRate#rate_type
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
        # @see MetronomeSDK::Models::PackageCreateParams::Override#target
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
        # @see MetronomeSDK::Models::PackageCreateParams::Override#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          OVERWRITE = :OVERWRITE
          MULTIPLIER = :MULTIPLIER
          TIERED = :TIERED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute access_amount
        #   The amount of commit to grant.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::AccessAmount]
        required :access_amount, -> { MetronomeSDK::PackageCreateParams::RecurringCommit::AccessAmount }

        # @!attribute commit_duration
        #   Defines the length of the access schedule for each created commit/credit. The
        #   value represents the number of units. Unit defaults to "PERIODS", where the
        #   length of a period is determined by the recurrence_frequency.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::CommitDuration]
        required :commit_duration, -> { MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration }

        # @!attribute priority
        #   Will be passed down to the individual commits
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute starting_offset
        #   Determines the start time for the first commit
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::StartingOffset]
        required :starting_offset, -> { MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset }

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

        # @!attribute ending_offset
        #   Determines when the contract will stop creating recurring commits. optional
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::EndingOffset, nil]
        optional :ending_offset, -> { MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset }

        # @!attribute invoice_amount
        #   The amount the customer should be billed for the commit. Not required.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::InvoiceAmount, nil]
        optional :invoice_amount, -> { MetronomeSDK::PackageCreateParams::RecurringCommit::InvoiceAmount }

        # @!attribute name
        #   displayed on invoices. will be passed through to the individual commits
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute proration
        #   Determines whether the first and last commit will be prorated. If not provided,
        #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::Proration, nil]
        optional :proration, enum: -> { MetronomeSDK::PackageCreateParams::RecurringCommit::Proration }

        # @!attribute rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::RateType, nil]
        optional :rate_type, enum: -> { MetronomeSDK::PackageCreateParams::RecurringCommit::RateType }

        # @!attribute recurrence_frequency
        #   The frequency at which the recurring commits will be created. If not provided: -
        #   The commits will be created on the usage invoice frequency. If provided: - The
        #   period defined in the duration will correspond to this frequency. - Commits will
        #   be created aligned with the recurring commit's starting_at rather than the usage
        #   invoice dates.
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::RecurrenceFrequency, nil]
        optional :recurrence_frequency,
                 enum: -> { MetronomeSDK::PackageCreateParams::RecurringCommit::RecurrenceFrequency }

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
        #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
        #   be used together with `applicable_product_ids` or `applicable_product_tags`.
        #
        #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
        optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] }

        # @!attribute subscription_config
        #   Attach a subscription to the recurring commit/credit.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::SubscriptionConfig, nil]
        optional :subscription_config,
                 -> { MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig }

        # @!attribute temporary_id
        #   A temporary ID that can be used to reference the recurring commit for commit
        #   specific overrides.
        #
        #   @return [String, nil]
        optional :temporary_id, String

        # @!method initialize(access_amount:, commit_duration:, priority:, product_id:, starting_offset:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, ending_offset: nil, invoice_amount: nil, name: nil, proration: nil, rate_type: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil, temporary_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PackageCreateParams::RecurringCommit} for more details.
        #
        #   @param access_amount [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::AccessAmount] The amount of commit to grant.
        #
        #   @param commit_duration [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::CommitDuration] Defines the length of the access schedule for each created commit/credit. The va
        #
        #   @param priority [Float] Will be passed down to the individual commits
        #
        #   @param product_id [String]
        #
        #   @param starting_offset [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::StartingOffset] Determines the start time for the first commit
        #
        #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
        #
        #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
        #
        #   @param description [String] Will be passed down to the individual commits
        #
        #   @param ending_offset [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::EndingOffset] Determines when the contract will stop creating recurring commits. optional
        #
        #   @param invoice_amount [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
        #
        #   @param name [String] displayed on invoices. will be passed through to the individual commits
        #
        #   @param proration [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
        #
        #   @param rate_type [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
        #
        #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
        #
        #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
        #
        #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o
        #
        #   @param subscription_config [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::SubscriptionConfig] Attach a subscription to the recurring commit/credit.
        #
        #   @param temporary_id [String] A temporary ID that can be used to reference the recurring commit for commit spe

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit#access_amount
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
          #   This field is required unless a subscription is attached via
          #   `subscription_config`.
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!method initialize(credit_type_id:, unit_price:, quantity: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::PackageCreateParams::RecurringCommit::AccessAmount} for
          #   more details.
          #
          #   The amount of commit to grant.
          #
          #   @param credit_type_id [String]
          #
          #   @param unit_price [Float]
          #
          #   @param quantity [Float] This field is required unless a subscription is attached via `subscription_confi
        end

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit#commit_duration
        class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::CommitDuration::Unit, nil]
          optional :unit, enum: -> { MetronomeSDK::PackageCreateParams::RecurringCommit::CommitDuration::Unit }

          # @!method initialize(value:, unit: nil)
          #   Defines the length of the access schedule for each created commit/credit. The
          #   value represents the number of units. Unit defaults to "PERIODS", where the
          #   length of a period is determined by the recurrence_frequency.
          #
          #   @param value [Float]
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::CommitDuration::Unit]

          # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit::CommitDuration#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            PERIODS = :PERIODS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit#starting_offset
        class StartingOffset < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::StartingOffset::Unit]
          required :unit, enum: -> { MetronomeSDK::PackageCreateParams::RecurringCommit::StartingOffset::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   Determines the start time for the first commit
          #
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::StartingOffset::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit::StartingOffset#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            DAYS = :DAYS
            WEEKS = :WEEKS
            MONTHS = :MONTHS
            QUARTERS = :QUARTERS
            YEARS = :YEARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit#ending_offset
        class EndingOffset < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::EndingOffset::Unit]
          required :unit, enum: -> { MetronomeSDK::PackageCreateParams::RecurringCommit::EndingOffset::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   Determines when the contract will stop creating recurring commits. optional
          #
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::EndingOffset::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit::EndingOffset#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            DAYS = :DAYS
            WEEKS = :WEEKS
            MONTHS = :MONTHS
            QUARTERS = :QUARTERS
            YEARS = :YEARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit#invoice_amount
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
        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit#proration
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
        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit#rate_type
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
        # be created aligned with the recurring commit's starting_at rather than the usage
        # invoice dates.
        #
        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit#recurrence_frequency
        module RecurrenceFrequency
          extend MetronomeSDK::Internal::Type::Enum

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
          WEEKLY = :WEEKLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit#subscription_config
        class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute apply_seat_increase_config
          #
          #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig]
          required :apply_seat_increase_config,
                   -> { MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig }

          # @!attribute subscription_id
          #   ID of the subscription to configure on the recurring commit/credit.
          #
          #   @return [String]
          required :subscription_id, String

          # @!attribute allocation
          #   If set to POOLED, allocation added per seat is pooled across the account.
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation, nil]
          optional :allocation,
                   enum: -> { MetronomeSDK::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation }

          # @!method initialize(apply_seat_increase_config:, subscription_id:, allocation: nil)
          #   Attach a subscription to the recurring commit/credit.
          #
          #   @param apply_seat_increase_config [MetronomeSDK::Models::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig]
          #
          #   @param subscription_id [String] ID of the subscription to configure on the recurring commit/credit.
          #
          #   @param allocation [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation] If set to POOLED, allocation added per seat is pooled across the account.

          # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit::SubscriptionConfig#apply_seat_increase_config
          class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute is_prorated
            #   Indicates whether a mid-period seat increase should be prorated.
            #
            #   @return [Boolean]
            required :is_prorated, MetronomeSDK::Internal::Type::Boolean

            # @!method initialize(is_prorated:)
            #   @param is_prorated [Boolean] Indicates whether a mid-period seat increase should be prorated.
          end

          # If set to POOLED, allocation added per seat is pooled across the account.
          #
          # @see MetronomeSDK::Models::PackageCreateParams::RecurringCommit::SubscriptionConfig#allocation
          module Allocation
            extend MetronomeSDK::Internal::Type::Enum

            INDIVIDUAL = :INDIVIDUAL
            POOLED = :POOLED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute access_amount
        #   The amount of commit to grant.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::AccessAmount]
        required :access_amount, -> { MetronomeSDK::PackageCreateParams::RecurringCredit::AccessAmount }

        # @!attribute commit_duration
        #   Defines the length of the access schedule for each created commit/credit. The
        #   value represents the number of units. Unit defaults to "PERIODS", where the
        #   length of a period is determined by the recurrence_frequency.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::CommitDuration]
        required :commit_duration, -> { MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration }

        # @!attribute priority
        #   Will be passed down to the individual commits
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute starting_offset
        #   Determines the start time for the first commit
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::StartingOffset]
        required :starting_offset, -> { MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset }

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

        # @!attribute ending_offset
        #   Determines when the contract will stop creating recurring commits. optional
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::EndingOffset, nil]
        optional :ending_offset, -> { MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset }

        # @!attribute name
        #   displayed on invoices. will be passed through to the individual commits
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute proration
        #   Determines whether the first and last commit will be prorated. If not provided,
        #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::Proration, nil]
        optional :proration, enum: -> { MetronomeSDK::PackageCreateParams::RecurringCredit::Proration }

        # @!attribute rate_type
        #   Whether the created commits will use the commit rate or list rate
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::RateType, nil]
        optional :rate_type, enum: -> { MetronomeSDK::PackageCreateParams::RecurringCredit::RateType }

        # @!attribute recurrence_frequency
        #   The frequency at which the recurring commits will be created. If not provided: -
        #   The commits will be created on the usage invoice frequency. If provided: - The
        #   period defined in the duration will correspond to this frequency. - Commits will
        #   be created aligned with the recurring commit's starting_at rather than the usage
        #   invoice dates.
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::RecurrenceFrequency, nil]
        optional :recurrence_frequency,
                 enum: -> { MetronomeSDK::PackageCreateParams::RecurringCredit::RecurrenceFrequency }

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
        #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
        #   be used together with `applicable_product_ids` or `applicable_product_tags`.
        #
        #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
        optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] }

        # @!attribute subscription_config
        #   Attach a subscription to the recurring commit/credit.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::SubscriptionConfig, nil]
        optional :subscription_config,
                 -> { MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig }

        # @!attribute temporary_id
        #   A temporary ID that can be used to reference the recurring commit for commit
        #   specific overrides.
        #
        #   @return [String, nil]
        optional :temporary_id, String

        # @!method initialize(access_amount:, commit_duration:, priority:, product_id:, starting_offset:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, ending_offset: nil, name: nil, proration: nil, rate_type: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil, temporary_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PackageCreateParams::RecurringCredit} for more details.
        #
        #   @param access_amount [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::AccessAmount] The amount of commit to grant.
        #
        #   @param commit_duration [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::CommitDuration] Defines the length of the access schedule for each created commit/credit. The va
        #
        #   @param priority [Float] Will be passed down to the individual commits
        #
        #   @param product_id [String]
        #
        #   @param starting_offset [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::StartingOffset] Determines the start time for the first commit
        #
        #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
        #
        #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
        #
        #   @param description [String] Will be passed down to the individual commits
        #
        #   @param ending_offset [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::EndingOffset] Determines when the contract will stop creating recurring commits. optional
        #
        #   @param name [String] displayed on invoices. will be passed through to the individual commits
        #
        #   @param proration [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
        #
        #   @param rate_type [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
        #
        #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
        #
        #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
        #
        #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o
        #
        #   @param subscription_config [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::SubscriptionConfig] Attach a subscription to the recurring commit/credit.
        #
        #   @param temporary_id [String] A temporary ID that can be used to reference the recurring commit for commit spe

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit#access_amount
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
          #   This field is required unless a subscription is attached via
          #   `subscription_config`.
          #
          #   @return [Float, nil]
          optional :quantity, Float

          # @!method initialize(credit_type_id:, unit_price:, quantity: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::PackageCreateParams::RecurringCredit::AccessAmount} for
          #   more details.
          #
          #   The amount of commit to grant.
          #
          #   @param credit_type_id [String]
          #
          #   @param unit_price [Float]
          #
          #   @param quantity [Float] This field is required unless a subscription is attached via `subscription_confi
        end

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit#commit_duration
        class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute value
          #
          #   @return [Float]
          required :value, Float

          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::CommitDuration::Unit, nil]
          optional :unit, enum: -> { MetronomeSDK::PackageCreateParams::RecurringCredit::CommitDuration::Unit }

          # @!method initialize(value:, unit: nil)
          #   Defines the length of the access schedule for each created commit/credit. The
          #   value represents the number of units. Unit defaults to "PERIODS", where the
          #   length of a period is determined by the recurrence_frequency.
          #
          #   @param value [Float]
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::CommitDuration::Unit]

          # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit::CommitDuration#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            PERIODS = :PERIODS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit#starting_offset
        class StartingOffset < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::StartingOffset::Unit]
          required :unit, enum: -> { MetronomeSDK::PackageCreateParams::RecurringCredit::StartingOffset::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   Determines the start time for the first commit
          #
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::StartingOffset::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit::StartingOffset#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            DAYS = :DAYS
            WEEKS = :WEEKS
            MONTHS = :MONTHS
            QUARTERS = :QUARTERS
            YEARS = :YEARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit#ending_offset
        class EndingOffset < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::EndingOffset::Unit]
          required :unit, enum: -> { MetronomeSDK::PackageCreateParams::RecurringCredit::EndingOffset::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   Determines when the contract will stop creating recurring commits. optional
          #
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::EndingOffset::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit::EndingOffset#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            DAYS = :DAYS
            WEEKS = :WEEKS
            MONTHS = :MONTHS
            QUARTERS = :QUARTERS
            YEARS = :YEARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Determines whether the first and last commit will be prorated. If not provided,
        # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        #
        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit#proration
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
        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit#rate_type
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
        # be created aligned with the recurring commit's starting_at rather than the usage
        # invoice dates.
        #
        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit#recurrence_frequency
        module RecurrenceFrequency
          extend MetronomeSDK::Internal::Type::Enum

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
          WEEKLY = :WEEKLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit#subscription_config
        class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute apply_seat_increase_config
          #
          #   @return [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig]
          required :apply_seat_increase_config,
                   -> { MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig }

          # @!attribute subscription_id
          #   ID of the subscription to configure on the recurring commit/credit.
          #
          #   @return [String]
          required :subscription_id, String

          # @!attribute allocation
          #   If set to POOLED, allocation added per seat is pooled across the account.
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation, nil]
          optional :allocation,
                   enum: -> { MetronomeSDK::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation }

          # @!method initialize(apply_seat_increase_config:, subscription_id:, allocation: nil)
          #   Attach a subscription to the recurring commit/credit.
          #
          #   @param apply_seat_increase_config [MetronomeSDK::Models::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig]
          #
          #   @param subscription_id [String] ID of the subscription to configure on the recurring commit/credit.
          #
          #   @param allocation [Symbol, MetronomeSDK::Models::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation] If set to POOLED, allocation added per seat is pooled across the account.

          # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit::SubscriptionConfig#apply_seat_increase_config
          class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute is_prorated
            #   Indicates whether a mid-period seat increase should be prorated.
            #
            #   @return [Boolean]
            required :is_prorated, MetronomeSDK::Internal::Type::Boolean

            # @!method initialize(is_prorated:)
            #   @param is_prorated [Boolean] Indicates whether a mid-period seat increase should be prorated.
          end

          # If set to POOLED, allocation added per seat is pooled across the account.
          #
          # @see MetronomeSDK::Models::PackageCreateParams::RecurringCredit::SubscriptionConfig#allocation
          module Allocation
            extend MetronomeSDK::Internal::Type::Enum

            INDIVIDUAL = :INDIVIDUAL
            POOLED = :POOLED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute schedule
        #   Must provide schedule_items.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule]
        required :schedule, -> { MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule }

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

        # @!method initialize(product_id:, schedule:, custom_fields: nil, name: nil)
        #   @param product_id [String]
        #
        #   @param schedule [MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule] Must provide schedule_items.
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @param name [String] displayed on invoices

        # @see MetronomeSDK::Models::PackageCreateParams::ScheduledCharge#schedule
        class Schedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #
          #   @return [Array<MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem>]
          required :schedule_items,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem] }

          # @!attribute credit_type_id
          #   Defaults to USD (cents) if not passed.
          #
          #   @return [String, nil]
          optional :credit_type_id, String

          # @!method initialize(schedule_items:, credit_type_id: nil)
          #   Must provide schedule_items.
          #
          #   @param schedule_items [Array<MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.
          #
          #   @param credit_type_id [String] Defaults to USD (cents) if not passed.

          class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute date_offset
            #   Date relative to the contract start date.
            #
            #   @return [MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset]
            required :date_offset,
                     -> { MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset }

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

            # @!method initialize(date_offset:, amount: nil, quantity: nil, unit_price: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem}
            #   for more details.
            #
            #   @param date_offset [MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset] Date relative to the contract start date.
            #
            #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
            #
            #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
            #
            #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

            # @see MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem#date_offset
            class DateOffset < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit]
              required :unit,
                       enum: -> { MetronomeSDK::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit }

              # @!attribute value
              #
              #   @return [Integer]
              required :value, Integer

              # @!method initialize(unit:, value:)
              #   Date relative to the contract start date.
              #
              #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit]
              #   @param value [Integer]

              # @see MetronomeSDK::Models::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                DAYS = :DAYS
                WEEKS = :WEEKS
                MONTHS = :MONTHS
                QUARTERS = :QUARTERS
                YEARS = :YEARS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
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

      class Subscription < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute collection_schedule
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Subscription::CollectionSchedule]
        required :collection_schedule,
                 enum: -> { MetronomeSDK::PackageCreateParams::Subscription::CollectionSchedule }

        # @!attribute initial_quantity
        #   The initial quantity for the subscription. It must be non-negative value.
        #
        #   @return [Float]
        required :initial_quantity, Float

        # @!attribute proration
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::Subscription::Proration]
        required :proration, -> { MetronomeSDK::PackageCreateParams::Subscription::Proration }

        # @!attribute subscription_rate
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::Subscription::SubscriptionRate]
        required :subscription_rate, -> { MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate }

        # @!attribute custom_fields
        #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute duration
        #   Lifetime of the subscription from its start. If not provided, subscription
        #   inherits contract end date.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::Subscription::Duration, nil]
        optional :duration, -> { MetronomeSDK::PackageCreateParams::Subscription::Duration }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute starting_offset
        #   Relative date from contract start date corresponding to the inclusive start time
        #   for the subscription. If not provided, defaults to contract start date
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::Subscription::StartingOffset, nil]
        optional :starting_offset, -> { MetronomeSDK::PackageCreateParams::Subscription::StartingOffset }

        # @!attribute temporary_id
        #   A temporary ID used to reference the subscription in recurring commit/credit
        #   subscription configs created within the same payload.
        #
        #   @return [String, nil]
        optional :temporary_id, String

        # @!method initialize(collection_schedule:, initial_quantity:, proration:, subscription_rate:, custom_fields: nil, description: nil, duration: nil, name: nil, starting_offset: nil, temporary_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PackageCreateParams::Subscription} for more details.
        #
        #   @param collection_schedule [Symbol, MetronomeSDK::Models::PackageCreateParams::Subscription::CollectionSchedule]
        #
        #   @param initial_quantity [Float] The initial quantity for the subscription. It must be non-negative value.
        #
        #   @param proration [MetronomeSDK::Models::PackageCreateParams::Subscription::Proration]
        #
        #   @param subscription_rate [MetronomeSDK::Models::PackageCreateParams::Subscription::SubscriptionRate]
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @param description [String]
        #
        #   @param duration [MetronomeSDK::Models::PackageCreateParams::Subscription::Duration] Lifetime of the subscription from its start. If not provided, subscription inher
        #
        #   @param name [String]
        #
        #   @param starting_offset [MetronomeSDK::Models::PackageCreateParams::Subscription::StartingOffset] Relative date from contract start date corresponding to the inclusive start time
        #
        #   @param temporary_id [String] A temporary ID used to reference the subscription in recurring commit/credit sub

        # @see MetronomeSDK::Models::PackageCreateParams::Subscription#collection_schedule
        module CollectionSchedule
          extend MetronomeSDK::Internal::Type::Enum

          ADVANCE = :ADVANCE
          ARREARS = :ARREARS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::PackageCreateParams::Subscription#proration
        class Proration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute invoice_behavior
          #   Indicates how mid-period quantity adjustments are invoiced.
          #   **BILL_IMMEDIATELY**: Only available when collection schedule is `ADVANCE`. The
          #   quantity increase will be billed immediately on the scheduled date.
          #   **BILL_ON_NEXT_COLLECTION_DATE**: The quantity increase will be billed for
          #   in-arrears at the end of the period.
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Subscription::Proration::InvoiceBehavior, nil]
          optional :invoice_behavior,
                   enum: -> { MetronomeSDK::PackageCreateParams::Subscription::Proration::InvoiceBehavior }

          # @!attribute is_prorated
          #   Indicates if the partial period will be prorated or charged a full amount.
          #
          #   @return [Boolean, nil]
          optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

          # @!method initialize(invoice_behavior: nil, is_prorated: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::PackageCreateParams::Subscription::Proration} for more
          #   details.
          #
          #   @param invoice_behavior [Symbol, MetronomeSDK::Models::PackageCreateParams::Subscription::Proration::InvoiceBehavior] Indicates how mid-period quantity adjustments are invoiced.
          #
          #   @param is_prorated [Boolean] Indicates if the partial period will be prorated or charged a full amount.

          # Indicates how mid-period quantity adjustments are invoiced.
          # **BILL_IMMEDIATELY**: Only available when collection schedule is `ADVANCE`. The
          # quantity increase will be billed immediately on the scheduled date.
          # **BILL_ON_NEXT_COLLECTION_DATE**: The quantity increase will be billed for
          # in-arrears at the end of the period.
          #
          # @see MetronomeSDK::Models::PackageCreateParams::Subscription::Proration#invoice_behavior
          module InvoiceBehavior
            extend MetronomeSDK::Internal::Type::Enum

            BILL_IMMEDIATELY = :BILL_IMMEDIATELY
            BILL_ON_NEXT_COLLECTION_DATE = :BILL_ON_NEXT_COLLECTION_DATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::Subscription#subscription_rate
        class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute billing_frequency
          #   Frequency to bill subscription with. Together with product_id, must match
          #   existing rate on the rate card.
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency]
          required :billing_frequency,
                   enum: -> { MetronomeSDK::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency }

          # @!attribute product_id
          #   Must be subscription type product
          #
          #   @return [String]
          required :product_id, String

          # @!method initialize(billing_frequency:, product_id:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::PackageCreateParams::Subscription::SubscriptionRate} for
          #   more details.
          #
          #   @param billing_frequency [Symbol, MetronomeSDK::Models::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency] Frequency to bill subscription with. Together with product_id, must match existi
          #
          #   @param product_id [String] Must be subscription type product

          # Frequency to bill subscription with. Together with product_id, must match
          # existing rate on the rate card.
          #
          # @see MetronomeSDK::Models::PackageCreateParams::Subscription::SubscriptionRate#billing_frequency
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

        # @see MetronomeSDK::Models::PackageCreateParams::Subscription#duration
        class Duration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Subscription::Duration::Unit]
          required :unit, enum: -> { MetronomeSDK::PackageCreateParams::Subscription::Duration::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   Lifetime of the subscription from its start. If not provided, subscription
          #   inherits contract end date.
          #
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::Subscription::Duration::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::PackageCreateParams::Subscription::Duration#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            DAYS = :DAYS
            WEEKS = :WEEKS
            MONTHS = :MONTHS
            QUARTERS = :QUARTERS
            YEARS = :YEARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::PackageCreateParams::Subscription#starting_offset
        class StartingOffset < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::Subscription::StartingOffset::Unit]
          required :unit, enum: -> { MetronomeSDK::PackageCreateParams::Subscription::StartingOffset::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   Relative date from contract start date corresponding to the inclusive start time
          #   for the subscription. If not provided, defaults to contract start date
          #
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::Subscription::StartingOffset::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::PackageCreateParams::Subscription::StartingOffset#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            DAYS = :DAYS
            WEEKS = :WEEKS
            MONTHS = :MONTHS
            QUARTERS = :QUARTERS
            YEARS = :YEARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute frequency
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule::Frequency]
        required :frequency, enum: -> { MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Frequency }

        # @!attribute day
        #   If not provided, defaults to the first day of the month.
        #
        #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule::Day, nil]
        optional :day, enum: -> { MetronomeSDK::PackageCreateParams::UsageStatementSchedule::Day }

        # @!attribute invoice_generation_starting_at_offset
        #   The offset at which Metronome should start generating usage invoices, relative
        #   to the contract start date. If unspecified, contract start date will be used.
        #   This is useful to set if you want to import historical invoices via our 'Create
        #   Historical Invoices' API rather than having Metronome automatically generate
        #   them.
        #
        #   @return [MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset, nil]
        optional :invoice_generation_starting_at_offset,
                 -> { MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset }

        # @!method initialize(frequency:, day: nil, invoice_generation_starting_at_offset: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule} for more
        #   details.
        #
        #   @param frequency [Symbol, MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule::Frequency]
        #
        #   @param day [Symbol, MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule::Day] If not provided, defaults to the first day of the month.
        #
        #   @param invoice_generation_starting_at_offset [MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset] The offset at which Metronome should start generating usage invoices, relative t

        # @see MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule#frequency
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
        # @see MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule#day
        module Day
          extend MetronomeSDK::Internal::Type::Enum

          FIRST_OF_MONTH = :FIRST_OF_MONTH
          CONTRACT_START = :CONTRACT_START

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule#invoice_generation_starting_at_offset
        class InvoiceGenerationStartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit]
          required :unit,
                   enum: -> { MetronomeSDK::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   The offset at which Metronome should start generating usage invoices, relative
          #   to the contract start date. If unspecified, contract start date will be used.
          #   This is useful to set if you want to import historical invoices via our 'Create
          #   Historical Invoices' API rather than having Metronome automatically generate
          #   them.
          #
          #   @param unit [Symbol, MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            DAYS = :DAYS
            WEEKS = :WEEKS
            MONTHS = :MONTHS
            QUARTERS = :QUARTERS
            YEARS = :YEARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
