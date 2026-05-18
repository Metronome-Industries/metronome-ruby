# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Packages#create
      class PackageCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute aliases
        #   Reference this alias when creating a contract. If the same alias is assigned to
        #   multiple packages, it will reference the package to which it was most recently
        #   assigned. It is not exposed to end customers.
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::Alias>, nil]
        optional :aliases,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::Alias] }

        # @!attribute billing_provider
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::BillingProvider, nil]
        optional :billing_provider, enum: -> { MetronomeSDK::V1::PackageCreateParams::BillingProvider }

        # @!attribute commits
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::Commit>, nil]
        optional :commits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::Commit] }

        # @!attribute contract_name
        #
        #   @return [String, nil]
        optional :contract_name, String

        # @!attribute credits
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::Credit>, nil]
        optional :credits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::Credit] }

        # @!attribute delivery_method
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::DeliveryMethod, nil]
        optional :delivery_method, enum: -> { MetronomeSDK::V1::PackageCreateParams::DeliveryMethod }

        # @!attribute duration
        #
        #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Duration, nil]
        optional :duration, -> { MetronomeSDK::V1::PackageCreateParams::Duration }

        # @!attribute multiplier_override_prioritization
        #   Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
        #   prices automatically. EXPLICIT prioritization requires specifying priorities for
        #   each multiplier; the one with the lowest priority value will be prioritized
        #   first. If tiered overrides are used, prioritization must be explicit.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::MultiplierOverridePrioritization, nil]
        optional :multiplier_override_prioritization,
                 enum: -> { MetronomeSDK::V1::PackageCreateParams::MultiplierOverridePrioritization }

        # @!attribute net_payment_terms_days
        #
        #   @return [Float, nil]
        optional :net_payment_terms_days, Float

        # @!attribute overrides
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::Override>, nil]
        optional :overrides,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::Override] }

        # @!attribute prepaid_balance_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration, nil]
        optional :prepaid_balance_threshold_configuration,
                 -> { MetronomeSDK::PrepaidBalanceThresholdConfiguration }

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
        #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit>, nil]
        optional :recurring_commits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::RecurringCommit] }

        # @!attribute recurring_credits
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit>, nil]
        optional :recurring_credits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::RecurringCredit] }

        # @!attribute scheduled_charges
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge>, nil]
        optional :scheduled_charges,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::ScheduledCharge] }

        # @!attribute scheduled_charges_on_usage_invoices
        #   Determines which scheduled and commit charges to consolidate onto the Contract's
        #   usage invoice. The charge's `timestamp` must match the usage invoice's
        #   `ending_before` date for consolidation to occur. This field cannot be modified
        #   after a Contract has been created. If this field is omitted, charges will appear
        #   on a separate invoice from usage charges.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::ScheduledChargesOnUsageInvoices, nil]
        optional :scheduled_charges_on_usage_invoices,
                 enum: -> { MetronomeSDK::V1::PackageCreateParams::ScheduledChargesOnUsageInvoices }

        # @!attribute spend_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::SpendThresholdConfiguration, nil]
        optional :spend_threshold_configuration, -> { MetronomeSDK::SpendThresholdConfiguration }

        # @!attribute subscriptions
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::Subscription>, nil]
        optional :subscriptions,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::Subscription] }

        # @!attribute uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made
        #   with a previously used uniqueness key, a new record will not be created and the
        #   request will fail with a 409 error.
        #
        #   @return [String, nil]
        optional :uniqueness_key, String

        # @!attribute usage_statement_schedule
        #
        #   @return [MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule, nil]
        optional :usage_statement_schedule, -> { MetronomeSDK::V1::PackageCreateParams::UsageStatementSchedule }

        # @!method initialize(name:, aliases: nil, billing_provider: nil, commits: nil, contract_name: nil, credits: nil, delivery_method: nil, duration: nil, multiplier_override_prioritization: nil, net_payment_terms_days: nil, overrides: nil, prepaid_balance_threshold_configuration: nil, rate_card_alias: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, scheduled_charges: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, uniqueness_key: nil, usage_statement_schedule: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::PackageCreateParams} for more details.
        #
        #   @param name [String]
        #
        #   @param aliases [Array<MetronomeSDK::Models::V1::PackageCreateParams::Alias>] Reference this alias when creating a contract. If the same alias is assigned to
        #
        #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::BillingProvider]
        #
        #   @param commits [Array<MetronomeSDK::Models::V1::PackageCreateParams::Commit>]
        #
        #   @param contract_name [String]
        #
        #   @param credits [Array<MetronomeSDK::Models::V1::PackageCreateParams::Credit>]
        #
        #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::DeliveryMethod]
        #
        #   @param duration [MetronomeSDK::Models::V1::PackageCreateParams::Duration]
        #
        #   @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
        #
        #   @param net_payment_terms_days [Float]
        #
        #   @param overrides [Array<MetronomeSDK::Models::V1::PackageCreateParams::Override>]
        #
        #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration]
        #
        #   @param rate_card_alias [String] Selects the rate card linked to the specified alias as of the contract's start d
        #
        #   @param rate_card_id [String]
        #
        #   @param recurring_commits [Array<MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit>]
        #
        #   @param recurring_credits [Array<MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit>]
        #
        #   @param scheduled_charges [Array<MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge>]
        #
        #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
        #
        #   @param spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfiguration]
        #
        #   @param subscriptions [Array<MetronomeSDK::Models::V1::PackageCreateParams::Subscription>]
        #
        #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
        #
        #   @param usage_statement_schedule [MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule]
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class Alias < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute starting_at
          #
          #   @return [Time, nil]
          optional :starting_at, Time

          # @!method initialize(name:, ending_before: nil, starting_at: nil)
          #   @param name [String]
          #   @param ending_before [Time]
          #   @param starting_at [Time]
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
          # @!attribute access_schedule
          #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          #   commits only one schedule item is allowed and amount must match invoice_schedule
          #   total.
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule]
          required :access_schedule, -> { MetronomeSDK::V1::PackageCreateParams::Commit::AccessSchedule }

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Commit::Type]
          required :type, enum: -> { MetronomeSDK::V1::PackageCreateParams::Commit::Type }

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
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule, nil]
          optional :invoice_schedule, -> { MetronomeSDK::V1::PackageCreateParams::Commit::InvoiceSchedule }

          # @!attribute name
          #   displayed on invoices
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute priority
          #   If multiple commits are applicable, the one with the lower priority will apply
          #   first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Commit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V1::PackageCreateParams::Commit::RateType }

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

          # @!method initialize(access_schedule:, product_id:, type:, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, invoice_schedule: nil, name: nil, priority: nil, rate_type: nil, rollover_fraction: nil, specifiers: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageCreateParams::Commit} for more details.
          #
          #   @param access_schedule [MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule] Required: Schedule for distributing the commit to the customer. For "POSTPAID" c
          #
          #   @param product_id [String]
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Commit::Type]
          #
          #   @param applicable_product_ids [Array<String>] Which products the commit applies to. If applicable_product_ids, applicable_prod
          #
          #   @param applicable_product_tags [Array<String>] Which tags the commit applies to. If applicable*product_ids, applicable_product*
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          #   @param invoice_schedule [MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule] Required for "POSTPAID" commits: the true up invoice will be generated at this t
          #
          #   @param name [String] displayed on invoices
          #
          #   @param priority [Float] If multiple commits are applicable, the one with the lower priority will apply f
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Commit::RateType]
          #
          #   @param rollover_fraction [Float] Fraction of unused segments that will be rolled over. Must be between 0 and 1.
          #
          #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param temporary_id [String] A temporary ID for the commit that can be used to reference the commit for commi

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Commit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem] }

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
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem>]
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
              #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration]
              required :duration,
                       -> { MetronomeSDK::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration }

              # @!attribute starting_at_offset
              #   Date relative to the contract start date indicating the start of this schedule
              #   segment.
              #
              #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset]
              required :starting_at_offset,
                       -> { MetronomeSDK::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset }

              # @!method initialize(amount:, duration:, starting_at_offset:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem}
              #   for more details.
              #
              #   @param amount [Float]
              #
              #   @param duration [MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration] Offset relative to the start of this segment indicating when it should end.
              #
              #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset] Date relative to the contract start date indicating the start of this schedule s

              # @see MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem#duration
              class Duration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   Offset relative to the start of this segment indicating when it should end.
                #
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::Duration#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  DAYS = :DAYS
                  WEEKS = :WEEKS
                  MONTHS = :MONTHS
                  YEARS = :YEARS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem#starting_at_offset
              class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   Date relative to the contract start date indicating the start of this schedule
                #   segment.
                #
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageCreateParams::Commit::AccessSchedule::ScheduleItem::StartingAtOffset#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  DAYS = :DAYS
                  WEEKS = :WEEKS
                  MONTHS = :MONTHS
                  YEARS = :YEARS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Commit#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID = :PREPAID
            POSTPAID = :POSTPAID

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Commit#invoice_schedule
          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem] }

            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute do_not_invoice
            #   If true, this schedule will not generate an invoice.
            #
            #   @return [Boolean, nil]
            optional :do_not_invoice, MetronomeSDK::Internal::Type::Boolean

            # @!method initialize(schedule_items:, credit_type_id: nil, do_not_invoice: nil)
            #   Required for "POSTPAID" commits: the true up invoice will be generated at this
            #   time and only one schedule item is allowed; the total must match access_schedule
            #   amount. Optional for "PREPAID" commits: if not provided, this will be a
            #   "complimentary" commit with no invoice.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed.
            #
            #   @param do_not_invoice [Boolean] If true, this schedule will not generate an invoice.

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute date_offset
              #   Date relative to the contract start date.
              #
              #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset]
              required :date_offset,
                       -> { MetronomeSDK::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset }

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount.
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount.
              #
              #   @return [Float]
              required :unit_price, Float

              # @!method initialize(date_offset:, quantity:, unit_price:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem}
              #   for more details.
              #
              #   @param date_offset [MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset] Date relative to the contract start date.
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

              # @see MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem#date_offset
              class DateOffset < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   Date relative to the contract start date.
                #
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageCreateParams::Commit::InvoiceSchedule::ScheduleItem::DateOffset#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  DAYS = :DAYS
                  WEEKS = :WEEKS
                  MONTHS = :MONTHS
                  YEARS = :YEARS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Commit#rate_type
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
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule]
          required :access_schedule, -> { MetronomeSDK::V1::PackageCreateParams::Credit::AccessSchedule }

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
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Credit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V1::PackageCreateParams::Credit::RateType }

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
          #   {MetronomeSDK::Models::V1::PackageCreateParams::Credit} for more details.
          #
          #   @param access_schedule [MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule] Schedule for distributing the credit to the customer.
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
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Credit::RateType]
          #
          #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Credit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem] }

            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!method initialize(schedule_items:, credit_type_id: nil)
            #   Schedule for distributing the credit to the customer.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem>]
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
              #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration]
              required :duration,
                       -> { MetronomeSDK::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration }

              # @!attribute starting_at_offset
              #   Date relative to the contract start date indicating the start of this schedule
              #   segment.
              #
              #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset]
              required :starting_at_offset,
                       -> { MetronomeSDK::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset }

              # @!method initialize(amount:, duration:, starting_at_offset:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem}
              #   for more details.
              #
              #   @param amount [Float]
              #
              #   @param duration [MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration] Offset relative to the start of this segment indicating when it should end.
              #
              #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset] Date relative to the contract start date indicating the start of this schedule s

              # @see MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem#duration
              class Duration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   Offset relative to the start of this segment indicating when it should end.
                #
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::Duration#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  DAYS = :DAYS
                  WEEKS = :WEEKS
                  MONTHS = :MONTHS
                  YEARS = :YEARS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem#starting_at_offset
              class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   Date relative to the contract start date indicating the start of this schedule
                #   segment.
                #
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageCreateParams::Credit::AccessSchedule::ScheduleItem::StartingAtOffset#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  DAYS = :DAYS
                  WEEKS = :WEEKS
                  MONTHS = :MONTHS
                  YEARS = :YEARS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Credit#rate_type
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
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Duration::Unit]
          required :unit, enum: -> { MetronomeSDK::V1::PackageCreateParams::Duration::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Duration::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Duration#unit
          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            DAYS = :DAYS
            WEEKS = :WEEKS
            MONTHS = :MONTHS
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
          #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::Override::OverrideSpecifier>]
          required :override_specifiers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::Override::OverrideSpecifier] }

          # @!attribute starting_at_offset
          #   Offset relative to contract start date indicating when the override will start
          #   applying (inclusive)
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Override::StartingAtOffset]
          required :starting_at_offset, -> { MetronomeSDK::V1::PackageCreateParams::Override::StartingAtOffset }

          # @!attribute duration
          #   Offset relative to override start indicating when the override will stop
          #   applying (exclusive)
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Override::Duration, nil]
          optional :duration, -> { MetronomeSDK::V1::PackageCreateParams::Override::Duration }

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
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Override::OverwriteRate, nil]
          optional :overwrite_rate, -> { MetronomeSDK::V1::PackageCreateParams::Override::OverwriteRate }

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
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::Target, nil]
          optional :target, enum: -> { MetronomeSDK::V1::PackageCreateParams::Override::Target }

          # @!attribute tiers
          #   Required for TIERED type. Must have at least one tier.
          #
          #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::Override::Tier>, nil]
          optional :tiers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::Override::Tier] }

          # @!attribute type
          #   Overwrites are prioritized over multipliers and tiered overrides.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::Type, nil]
          optional :type, enum: -> { MetronomeSDK::V1::PackageCreateParams::Override::Type }

          # @!method initialize(override_specifiers:, starting_at_offset:, duration: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, overwrite_rate: nil, priority: nil, target: nil, tiers: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageCreateParams::Override} for more details.
          #
          #   @param override_specifiers [Array<MetronomeSDK::Models::V1::PackageCreateParams::Override::OverrideSpecifier>] Specifies which products the override will apply to.
          #
          #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageCreateParams::Override::StartingAtOffset] Offset relative to contract start date indicating when the override will start a
          #
          #   @param duration [MetronomeSDK::Models::V1::PackageCreateParams::Override::Duration] Offset relative to override start indicating when the override will stop applyin
          #
          #   @param entitled [Boolean]
          #
          #   @param is_commit_specific [Boolean] Indicates whether the override should only apply to commits. Defaults to `false`
          #
          #   @param multiplier [Float] Required for MULTIPLIER type. Must be >=0.
          #
          #   @param overwrite_rate [MetronomeSDK::Models::V1::PackageCreateParams::Override::OverwriteRate] Required for OVERWRITE type.
          #
          #   @param priority [Float] Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
          #
          #   @param target [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::Target] Indicates whether the override applies to commit rates or list rates. Can only b
          #
          #   @param tiers [Array<MetronomeSDK::Models::V1::PackageCreateParams::Override::Tier>] Required for TIERED type. Must have at least one tier.
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::Type] Overwrites are prioritized over multipliers and tiered overrides.

          class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_frequency
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency, nil]
            optional :billing_frequency,
                     enum: -> { MetronomeSDK::V1::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency }

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

            # @!method initialize(billing_frequency: nil, commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::PackageCreateParams::Override::OverrideSpecifier} for
            #   more details.
            #
            #   @param billing_frequency [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::OverrideSpecifier::BillingFrequency]
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

            # @see MetronomeSDK::Models::V1::PackageCreateParams::Override::OverrideSpecifier#billing_frequency
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

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Override#starting_at_offset
          class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::StartingAtOffset::Unit]
            required :unit, enum: -> { MetronomeSDK::V1::PackageCreateParams::Override::StartingAtOffset::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Offset relative to contract start date indicating when the override will start
            #   applying (inclusive)
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::StartingAtOffset::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::Override::StartingAtOffset#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              DAYS = :DAYS
              WEEKS = :WEEKS
              MONTHS = :MONTHS
              YEARS = :YEARS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Override#duration
          class Duration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::Duration::Unit]
            required :unit, enum: -> { MetronomeSDK::V1::PackageCreateParams::Override::Duration::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Offset relative to override start indicating when the override will stop
            #   applying (exclusive)
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::Duration::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::Override::Duration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              DAYS = :DAYS
              WEEKS = :WEEKS
              MONTHS = :MONTHS
              YEARS = :YEARS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Override#overwrite_rate
          class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::OverwriteRate::RateType]
            required :rate_type, enum: -> { MetronomeSDK::V1::PackageCreateParams::Override::OverwriteRate::RateType }

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
            #   {MetronomeSDK::Models::V1::PackageCreateParams::Override::OverwriteRate} for
            #   more details.
            #
            #   Required for OVERWRITE type.
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Override::OverwriteRate::RateType]
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

            # @see MetronomeSDK::Models::V1::PackageCreateParams::Override::OverwriteRate#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              FLAT = :FLAT
              PERCENTAGE = :PERCENTAGE
              SUBSCRIPTION = :SUBSCRIPTION
              TIERED = :TIERED
              TIERED_PERCENTAGE = :TIERED_PERCENTAGE
              CUSTOM = :CUSTOM

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Indicates whether the override applies to commit rates or list rates. Can only
          # be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          # `"LIST_RATE"`.
          #
          # @see MetronomeSDK::Models::V1::PackageCreateParams::Override#target
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
          # @see MetronomeSDK::Models::V1::PackageCreateParams::Override#type
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
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::AccessAmount]
          required :access_amount, -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::AccessAmount }

          # @!attribute commit_duration
          #   Defines the length of the access schedule for each created commit/credit. The
          #   value represents the number of units. Unit defaults to "PERIODS", where the
          #   length of a period is determined by the recurrence_frequency.
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::CommitDuration]
          required :commit_duration, -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::CommitDuration }

          # @!attribute priority
          #   Will be passed down to the individual commits
          #
          #   @return [Float]
          required :priority, Float

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute starting_at_offset
          #   Offset relative to the contract start date that determines the start time for
          #   the first commit
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::StartingAtOffset]
          required :starting_at_offset,
                   -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::StartingAtOffset }

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

          # @!attribute duration
          #   Offset relative to the recurring credit start that determines when the contract
          #   will stop creating recurring commits. optional
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::Duration, nil]
          optional :duration, -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::Duration }

          # @!attribute invoice_amount
          #   The amount the customer should be billed for the commit. Not required.
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::InvoiceAmount, nil]
          optional :invoice_amount, -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::InvoiceAmount }

          # @!attribute name
          #   displayed on invoices. will be passed through to the individual commits
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute proration
          #   Determines whether the first and last commit will be prorated. If not provided,
          #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::Proration, nil]
          optional :proration, enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::Proration }

          # @!attribute rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::RateType }

          # @!attribute recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #   The commits will be created on the usage invoice frequency. If provided: - The
          #   period defined in the duration will correspond to this frequency. - Commits will
          #   be created aligned with the recurring commit's starting_at rather than the usage
          #   invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::RecurrenceFrequency }

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
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig, nil]
          optional :subscription_config,
                   -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig }

          # @!attribute temporary_id
          #   A temporary ID that can be used to reference the recurring commit for commit
          #   specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!method initialize(access_amount:, commit_duration:, priority:, product_id:, starting_at_offset:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, duration: nil, invoice_amount: nil, name: nil, proration: nil, rate_type: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit} for more
          #   details.
          #
          #   @param access_amount [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::AccessAmount] The amount of commit to grant.
          #
          #   @param commit_duration [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::CommitDuration] Defines the length of the access schedule for each created commit/credit. The va
          #
          #   @param priority [Float] Will be passed down to the individual commits
          #
          #   @param product_id [String]
          #
          #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::StartingAtOffset] Offset relative to the contract start date that determines the start time for th
          #
          #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
          #
          #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
          #
          #   @param description [String] Will be passed down to the individual commits
          #
          #   @param duration [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::Duration] Offset relative to the recurring credit start that determines when the contract
          #
          #   @param invoice_amount [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
          #
          #   @param name [String] displayed on invoices. will be passed through to the individual commits
          #
          #   @param proration [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
          #
          #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
          #
          #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
          #
          #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param subscription_config [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig] Attach a subscription to the recurring commit/credit.
          #
          #   @param temporary_id [String] A temporary ID that can be used to reference the recurring commit for commit spe

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit#access_amount
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
            #   {MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::AccessAmount}
            #   for more details.
            #
            #   The amount of commit to grant.
            #
            #   @param credit_type_id [String]
            #
            #   @param unit_price [Float]
            #
            #   @param quantity [Float] This field is required unless a subscription is attached via `subscription_confi
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit#commit_duration
          class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::CommitDuration::Unit, nil]
            optional :unit, enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::CommitDuration::Unit }

            # @!method initialize(value:, unit: nil)
            #   Defines the length of the access schedule for each created commit/credit. The
            #   value represents the number of units. Unit defaults to "PERIODS", where the
            #   length of a period is determined by the recurrence_frequency.
            #
            #   @param value [Float]
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::CommitDuration::Unit]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::CommitDuration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              PERIODS = :PERIODS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit#starting_at_offset
          class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::StartingAtOffset::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::StartingAtOffset::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Offset relative to the contract start date that determines the start time for
            #   the first commit
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::StartingAtOffset::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::StartingAtOffset#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              DAYS = :DAYS
              WEEKS = :WEEKS
              MONTHS = :MONTHS
              YEARS = :YEARS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit#duration
          class Duration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::Duration::Unit]
            required :unit, enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::Duration::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Offset relative to the recurring credit start that determines when the contract
            #   will stop creating recurring commits. optional
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::Duration::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::Duration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              DAYS = :DAYS
              WEEKS = :WEEKS
              MONTHS = :MONTHS
              YEARS = :YEARS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit#invoice_amount
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
          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit#proration
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
          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit#rate_type
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
          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit#recurrence_frequency
          module RecurrenceFrequency
            extend MetronomeSDK::Internal::Type::Enum

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit#subscription_config
          class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute apply_seat_increase_config
            #
            #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig]
            required :apply_seat_increase_config,
                     -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig }

            # @!attribute subscription_id
            #   ID of the subscription to configure on the recurring commit/credit.
            #
            #   @return [String]
            required :subscription_id, String

            # @!attribute allocation
            #   If set to POOLED, allocation added per seat is pooled across the account. If set
            #   to INDIVIDUAL, each seat in the subscription will have its own allocation.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation, nil]
            optional :allocation,
                     enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation }

            # @!method initialize(apply_seat_increase_config:, subscription_id:, allocation: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig}
            #   for more details.
            #
            #   Attach a subscription to the recurring commit/credit.
            #
            #   @param apply_seat_increase_config [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig]
            #
            #   @param subscription_id [String] ID of the subscription to configure on the recurring commit/credit.
            #
            #   @param allocation [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig::Allocation] If set to POOLED, allocation added per seat is pooled across the account. If set

            # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig#apply_seat_increase_config
            class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute is_prorated
              #   Indicates whether a mid-period seat increase should be prorated.
              #
              #   @return [Boolean]
              required :is_prorated, MetronomeSDK::Internal::Type::Boolean

              # @!method initialize(is_prorated:)
              #   @param is_prorated [Boolean] Indicates whether a mid-period seat increase should be prorated.
            end

            # If set to POOLED, allocation added per seat is pooled across the account. If set
            # to INDIVIDUAL, each seat in the subscription will have its own allocation.
            #
            # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCommit::SubscriptionConfig#allocation
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
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::AccessAmount]
          required :access_amount, -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::AccessAmount }

          # @!attribute commit_duration
          #   Defines the length of the access schedule for each created commit/credit. The
          #   value represents the number of units. Unit defaults to "PERIODS", where the
          #   length of a period is determined by the recurrence_frequency.
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::CommitDuration]
          required :commit_duration, -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::CommitDuration }

          # @!attribute priority
          #   Will be passed down to the individual commits
          #
          #   @return [Float]
          required :priority, Float

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute starting_at_offset
          #   Offset relative to the contract start date that determines the start time for
          #   the first commit
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::StartingAtOffset]
          required :starting_at_offset,
                   -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::StartingAtOffset }

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

          # @!attribute duration
          #   Offset relative to the recurring credit start that determines when the contract
          #   will stop creating recurring commits. optional
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::Duration, nil]
          optional :duration, -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::Duration }

          # @!attribute name
          #   displayed on invoices. will be passed through to the individual commits
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute proration
          #   Determines whether the first and last commit will be prorated. If not provided,
          #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::Proration, nil]
          optional :proration, enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::Proration }

          # @!attribute rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::RateType }

          # @!attribute recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #   The commits will be created on the usage invoice frequency. If provided: - The
          #   period defined in the duration will correspond to this frequency. - Commits will
          #   be created aligned with the recurring commit's starting_at rather than the usage
          #   invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::RecurrenceFrequency }

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
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig, nil]
          optional :subscription_config,
                   -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig }

          # @!attribute temporary_id
          #   A temporary ID that can be used to reference the recurring commit for commit
          #   specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!method initialize(access_amount:, commit_duration:, priority:, product_id:, starting_at_offset:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, duration: nil, name: nil, proration: nil, rate_type: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit} for more
          #   details.
          #
          #   @param access_amount [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::AccessAmount] The amount of commit to grant.
          #
          #   @param commit_duration [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::CommitDuration] Defines the length of the access schedule for each created commit/credit. The va
          #
          #   @param priority [Float] Will be passed down to the individual commits
          #
          #   @param product_id [String]
          #
          #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::StartingAtOffset] Offset relative to the contract start date that determines the start time for th
          #
          #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
          #
          #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
          #
          #   @param description [String] Will be passed down to the individual commits
          #
          #   @param duration [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::Duration] Offset relative to the recurring credit start that determines when the contract
          #
          #   @param name [String] displayed on invoices. will be passed through to the individual commits
          #
          #   @param proration [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
          #
          #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
          #
          #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
          #
          #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param subscription_config [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig] Attach a subscription to the recurring commit/credit.
          #
          #   @param temporary_id [String] A temporary ID that can be used to reference the recurring commit for commit spe

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit#access_amount
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
            #   {MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::AccessAmount}
            #   for more details.
            #
            #   The amount of commit to grant.
            #
            #   @param credit_type_id [String]
            #
            #   @param unit_price [Float]
            #
            #   @param quantity [Float] This field is required unless a subscription is attached via `subscription_confi
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit#commit_duration
          class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::CommitDuration::Unit, nil]
            optional :unit, enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::CommitDuration::Unit }

            # @!method initialize(value:, unit: nil)
            #   Defines the length of the access schedule for each created commit/credit. The
            #   value represents the number of units. Unit defaults to "PERIODS", where the
            #   length of a period is determined by the recurrence_frequency.
            #
            #   @param value [Float]
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::CommitDuration::Unit]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::CommitDuration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              PERIODS = :PERIODS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit#starting_at_offset
          class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::StartingAtOffset::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::StartingAtOffset::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Offset relative to the contract start date that determines the start time for
            #   the first commit
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::StartingAtOffset::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::StartingAtOffset#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              DAYS = :DAYS
              WEEKS = :WEEKS
              MONTHS = :MONTHS
              YEARS = :YEARS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit#duration
          class Duration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::Duration::Unit]
            required :unit, enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::Duration::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Offset relative to the recurring credit start that determines when the contract
            #   will stop creating recurring commits. optional
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::Duration::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::Duration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              DAYS = :DAYS
              WEEKS = :WEEKS
              MONTHS = :MONTHS
              YEARS = :YEARS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit#proration
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
          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit#rate_type
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
          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit#recurrence_frequency
          module RecurrenceFrequency
            extend MetronomeSDK::Internal::Type::Enum

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit#subscription_config
          class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute apply_seat_increase_config
            #
            #   @return [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig]
            required :apply_seat_increase_config,
                     -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig }

            # @!attribute subscription_id
            #   ID of the subscription to configure on the recurring commit/credit.
            #
            #   @return [String]
            required :subscription_id, String

            # @!attribute allocation
            #   If set to POOLED, allocation added per seat is pooled across the account. If set
            #   to INDIVIDUAL, each seat in the subscription will have its own allocation.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation, nil]
            optional :allocation,
                     enum: -> { MetronomeSDK::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation }

            # @!method initialize(apply_seat_increase_config:, subscription_id:, allocation: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig}
            #   for more details.
            #
            #   Attach a subscription to the recurring commit/credit.
            #
            #   @param apply_seat_increase_config [MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig]
            #
            #   @param subscription_id [String] ID of the subscription to configure on the recurring commit/credit.
            #
            #   @param allocation [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig::Allocation] If set to POOLED, allocation added per seat is pooled across the account. If set

            # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig#apply_seat_increase_config
            class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute is_prorated
              #   Indicates whether a mid-period seat increase should be prorated.
              #
              #   @return [Boolean]
              required :is_prorated, MetronomeSDK::Internal::Type::Boolean

              # @!method initialize(is_prorated:)
              #   @param is_prorated [Boolean] Indicates whether a mid-period seat increase should be prorated.
            end

            # If set to POOLED, allocation added per seat is pooled across the account. If set
            # to INDIVIDUAL, each seat in the subscription will have its own allocation.
            #
            # @see MetronomeSDK::Models::V1::PackageCreateParams::RecurringCredit::SubscriptionConfig#allocation
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
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule]
          required :schedule, -> { MetronomeSDK::V1::PackageCreateParams::ScheduledCharge::Schedule }

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
          #   @param schedule [MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule] Must provide schedule_items.
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param name [String] displayed on invoices

          # @see MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge#schedule
          class Schedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem] }

            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!method initialize(schedule_items:, credit_type_id: nil)
            #   Must provide schedule_items.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed.

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute date_offset
              #   Date relative to the contract start date.
              #
              #   @return [MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset]
              required :date_offset,
                       -> { MetronomeSDK::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset }

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount.
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount.
              #
              #   @return [Float]
              required :unit_price, Float

              # @!method initialize(date_offset:, quantity:, unit_price:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem}
              #   for more details.
              #
              #   @param date_offset [MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset] Date relative to the contract start date.
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

              # @see MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem#date_offset
              class DateOffset < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   Date relative to the contract start date.
                #
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageCreateParams::ScheduledCharge::Schedule::ScheduleItem::DateOffset#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  DAYS = :DAYS
                  WEEKS = :WEEKS
                  MONTHS = :MONTHS
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
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::CollectionSchedule]
          required :collection_schedule,
                   enum: -> { MetronomeSDK::V1::PackageCreateParams::Subscription::CollectionSchedule }

          # @!attribute proration
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Proration]
          required :proration, -> { MetronomeSDK::V1::PackageCreateParams::Subscription::Proration }

          # @!attribute subscription_rate
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Subscription::SubscriptionRate]
          required :subscription_rate, -> { MetronomeSDK::V1::PackageCreateParams::Subscription::SubscriptionRate }

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
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Duration, nil]
          optional :duration, -> { MetronomeSDK::V1::PackageCreateParams::Subscription::Duration }

          # @!attribute initial_quantity
          #   The initial quantity for the subscription. It must be non-negative value.
          #   Required if quantity_management_mode is QUANTITY_ONLY.
          #
          #   @return [Float, nil]
          optional :initial_quantity, Float

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute quantity_management_mode
          #   Determines how the subscription's quantity is controlled. Defaults to
          #   QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
          #   directly on the subscription. `initial_quantity` must be provided with this
          #   option. Compatible with recurring commits/credits that use POOLED allocation.
          #   **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add
          #   user_123) to increment and decrement a subscription quantity, rather than
          #   directly providing the quantity. You must use a **SEAT_BASED** subscription to
          #   use a linked recurring credit with an allocation per seat. `seat_config` must be
          #   provided with this option.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::QuantityManagementMode, nil]
          optional :quantity_management_mode,
                   enum: -> { MetronomeSDK::V1::PackageCreateParams::Subscription::QuantityManagementMode }

          # @!attribute seat_config
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Subscription::SeatConfig, nil]
          optional :seat_config, -> { MetronomeSDK::V1::PackageCreateParams::Subscription::SeatConfig }

          # @!attribute starting_at_offset
          #   Relative date from contract start date corresponding to the inclusive start time
          #   for the subscription. If not provided, defaults to contract start date
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::Subscription::StartingAtOffset, nil]
          optional :starting_at_offset, -> { MetronomeSDK::V1::PackageCreateParams::Subscription::StartingAtOffset }

          # @!attribute temporary_id
          #   A temporary ID used to reference the subscription in recurring commit/credit
          #   subscription configs created within the same payload.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!method initialize(collection_schedule:, proration:, subscription_rate:, custom_fields: nil, description: nil, duration: nil, initial_quantity: nil, name: nil, quantity_management_mode: nil, seat_config: nil, starting_at_offset: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageCreateParams::Subscription} for more details.
          #
          #   @param collection_schedule [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::CollectionSchedule]
          #
          #   @param proration [MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Proration]
          #
          #   @param subscription_rate [MetronomeSDK::Models::V1::PackageCreateParams::Subscription::SubscriptionRate]
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String]
          #
          #   @param duration [MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Duration] Lifetime of the subscription from its start. If not provided, subscription inher
          #
          #   @param initial_quantity [Float] The initial quantity for the subscription. It must be non-negative value. Requir
          #
          #   @param name [String]
          #
          #   @param quantity_management_mode [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::QuantityManagementMode] Determines how the subscription's quantity is controlled. Defaults to QUANTITY_O
          #
          #   @param seat_config [MetronomeSDK::Models::V1::PackageCreateParams::Subscription::SeatConfig]
          #
          #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageCreateParams::Subscription::StartingAtOffset] Relative date from contract start date corresponding to the inclusive start time
          #
          #   @param temporary_id [String] A temporary ID used to reference the subscription in recurring commit/credit sub

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription#collection_schedule
          module CollectionSchedule
            extend MetronomeSDK::Internal::Type::Enum

            ADVANCE = :ADVANCE
            ARREARS = :ARREARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription#proration
          class Proration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute invoice_behavior
            #   Indicates how mid-period quantity adjustments are invoiced.
            #   **BILL_IMMEDIATELY**: Only available when collection schedule is `ADVANCE`. The
            #   quantity increase will be billed immediately on the scheduled date.
            #   **BILL_ON_NEXT_COLLECTION_DATE**: The quantity increase will be billed for
            #   in-arrears at the end of the period.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Proration::InvoiceBehavior, nil]
            optional :invoice_behavior,
                     enum: -> { MetronomeSDK::V1::PackageCreateParams::Subscription::Proration::InvoiceBehavior }

            # @!attribute is_prorated
            #   Indicates if the partial period will be prorated or charged a full amount.
            #
            #   @return [Boolean, nil]
            optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

            # @!method initialize(invoice_behavior: nil, is_prorated: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Proration} for
            #   more details.
            #
            #   @param invoice_behavior [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Proration::InvoiceBehavior] Indicates how mid-period quantity adjustments are invoiced.
            #
            #   @param is_prorated [Boolean] Indicates if the partial period will be prorated or charged a full amount.

            # Indicates how mid-period quantity adjustments are invoiced.
            # **BILL_IMMEDIATELY**: Only available when collection schedule is `ADVANCE`. The
            # quantity increase will be billed immediately on the scheduled date.
            # **BILL_ON_NEXT_COLLECTION_DATE**: The quantity increase will be billed for
            # in-arrears at the end of the period.
            #
            # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Proration#invoice_behavior
            module InvoiceBehavior
              extend MetronomeSDK::Internal::Type::Enum

              BILL_IMMEDIATELY = :BILL_IMMEDIATELY
              BILL_ON_NEXT_COLLECTION_DATE = :BILL_ON_NEXT_COLLECTION_DATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription#subscription_rate
          class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_frequency
            #   Frequency to bill subscription with. Together with product_id, must match
            #   existing rate on the rate card.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency]
            required :billing_frequency,
                     enum: -> { MetronomeSDK::V1::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency }

            # @!attribute product_id
            #   Must be subscription type product
            #
            #   @return [String]
            required :product_id, String

            # @!method initialize(billing_frequency:, product_id:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::PackageCreateParams::Subscription::SubscriptionRate}
            #   for more details.
            #
            #   @param billing_frequency [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::SubscriptionRate::BillingFrequency] Frequency to bill subscription with. Together with product_id, must match existi
            #
            #   @param product_id [String] Must be subscription type product

            # Frequency to bill subscription with. Together with product_id, must match
            # existing rate on the rate card.
            #
            # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription::SubscriptionRate#billing_frequency
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

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription#duration
          class Duration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Duration::Unit]
            required :unit, enum: -> { MetronomeSDK::V1::PackageCreateParams::Subscription::Duration::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Lifetime of the subscription from its start. If not provided, subscription
            #   inherits contract end date.
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Duration::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription::Duration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              DAYS = :DAYS
              WEEKS = :WEEKS
              MONTHS = :MONTHS
              YEARS = :YEARS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Determines how the subscription's quantity is controlled. Defaults to
          # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
          # directly on the subscription. `initial_quantity` must be provided with this
          # option. Compatible with recurring commits/credits that use POOLED allocation.
          # **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add
          # user_123) to increment and decrement a subscription quantity, rather than
          # directly providing the quantity. You must use a **SEAT_BASED** subscription to
          # use a linked recurring credit with an allocation per seat. `seat_config` must be
          # provided with this option.
          #
          # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription#quantity_management_mode
          module QuantityManagementMode
            extend MetronomeSDK::Internal::Type::Enum

            SEAT_BASED = :SEAT_BASED
            QUANTITY_ONLY = :QUANTITY_ONLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription#seat_config
          class SeatConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute seat_group_key
            #   The property name, sent on usage events, that identifies the seat ID associated
            #   with the usage event. For example, the property name might be seat_id or
            #   user_id. The property must be set as a group key on billable metrics and a
            #   presentation/pricing group key on contract products. This allows linked
            #   recurring credits with an allocation per seat to be consumed by only one seat's
            #   usage.
            #
            #   @return [String]
            required :seat_group_key, String

            # @!attribute initial_unassigned_seats
            #   The initial amount of unassigned seats on this subscription.
            #
            #   @return [Float, nil]
            optional :initial_unassigned_seats, Float

            # @!method initialize(seat_group_key:, initial_unassigned_seats: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::PackageCreateParams::Subscription::SeatConfig} for
            #   more details.
            #
            #   @param seat_group_key [String] The property name, sent on usage events, that identifies the seat ID associated
            #
            #   @param initial_unassigned_seats [Float] The initial amount of unassigned seats on this subscription.
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription#starting_at_offset
          class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::StartingAtOffset::Unit]
            required :unit, enum: -> { MetronomeSDK::V1::PackageCreateParams::Subscription::StartingAtOffset::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Relative date from contract start date corresponding to the inclusive start time
            #   for the subscription. If not provided, defaults to contract start date
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::Subscription::StartingAtOffset::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::Subscription::StartingAtOffset#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              DAYS = :DAYS
              WEEKS = :WEEKS
              MONTHS = :MONTHS
              YEARS = :YEARS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute frequency
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule::Frequency]
          required :frequency, enum: -> { MetronomeSDK::V1::PackageCreateParams::UsageStatementSchedule::Frequency }

          # @!attribute day
          #   If not provided, defaults to the first day of the month.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule::Day, nil]
          optional :day, enum: -> { MetronomeSDK::V1::PackageCreateParams::UsageStatementSchedule::Day }

          # @!attribute invoice_generation_starting_at_offset
          #   The offset at which Metronome should start generating usage invoices, relative
          #   to the contract start date. If unspecified, contract start date will be used.
          #   This is useful to set if you want to import historical invoices via our 'Create
          #   Historical Invoices' API rather than having Metronome automatically generate
          #   them.
          #
          #   @return [MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset, nil]
          optional :invoice_generation_starting_at_offset,
                   -> { MetronomeSDK::V1::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset }

          # @!method initialize(frequency:, day: nil, invoice_generation_starting_at_offset: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule} for more
          #   details.
          #
          #   @param frequency [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule::Frequency]
          #
          #   @param day [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule::Day] If not provided, defaults to the first day of the month.
          #
          #   @param invoice_generation_starting_at_offset [MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset] The offset at which Metronome should start generating usage invoices, relative t

          # @see MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule#frequency
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
          # @see MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule#day
          module Day
            extend MetronomeSDK::Internal::Type::Enum

            FIRST_OF_MONTH = :FIRST_OF_MONTH
            CONTRACT_START = :CONTRACT_START

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule#invoice_generation_starting_at_offset
          class InvoiceGenerationStartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::V1::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit }

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
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageCreateParams::UsageStatementSchedule::InvoiceGenerationStartingAtOffset#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              DAYS = :DAYS
              WEEKS = :WEEKS
              MONTHS = :MONTHS
              YEARS = :YEARS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
