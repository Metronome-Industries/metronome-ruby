# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Packages#list
      class PackageListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute commits
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::Commit>]
        required :commits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Commit] }

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
        #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::Override>]
        required :overrides,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Override] }

        # @!attribute scheduled_charges
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge>]
        required :scheduled_charges,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge] }

        # @!attribute usage_statement_schedule
        #
        #   @return [MetronomeSDK::Models::V1::PackageListResponse::UsageStatementSchedule]
        required :usage_statement_schedule,
                 -> { MetronomeSDK::Models::V1::PackageListResponse::UsageStatementSchedule }

        # @!attribute aliases
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::Alias>, nil]
        optional :aliases,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Alias] }

        # @!attribute archived_at
        #
        #   @return [Time, nil]
        optional :archived_at, Time

        # @!attribute billing_provider
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::BillingProvider, nil]
        optional :billing_provider, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::BillingProvider }

        # @!attribute credits
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::Credit>, nil]
        optional :credits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Credit] }

        # @!attribute delivery_method
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::DeliveryMethod, nil]
        optional :delivery_method, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::DeliveryMethod }

        # @!attribute duration
        #
        #   @return [MetronomeSDK::Models::V1::PackageListResponse::Duration, nil]
        optional :duration, -> { MetronomeSDK::Models::V1::PackageListResponse::Duration }

        # @!attribute multiplier_override_prioritization
        #   Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list
        #   prices automatically. EXPLICIT prioritization requires specifying priorities for
        #   each multiplier; the one with the lowest priority value will be prioritized
        #   first.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::MultiplierOverridePrioritization, nil]
        optional :multiplier_override_prioritization,
                 enum: -> { MetronomeSDK::Models::V1::PackageListResponse::MultiplierOverridePrioritization }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute net_payment_terms_days
        #
        #   @return [Float, nil]
        optional :net_payment_terms_days, Float

        # @!attribute prepaid_balance_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration, nil]
        optional :prepaid_balance_threshold_configuration,
                 -> { MetronomeSDK::PrepaidBalanceThresholdConfiguration }

        # @!attribute rate_card_id
        #
        #   @return [String, nil]
        optional :rate_card_id, String

        # @!attribute recurring_commits
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit>, nil]
        optional :recurring_commits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit] }

        # @!attribute recurring_credits
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit>, nil]
        optional :recurring_credits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit] }

        # @!attribute scheduled_charges_on_usage_invoices
        #   Determines which scheduled and commit charges to consolidate onto the Contract's
        #   usage invoice. The charge's `timestamp` must match the usage invoice's
        #   `ending_before` date for consolidation to occur. This field cannot be modified
        #   after a Contract has been created. If this field is omitted, charges will appear
        #   on a separate invoice from usage charges.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::ScheduledChargesOnUsageInvoices, nil]
        optional :scheduled_charges_on_usage_invoices,
                 enum: -> { MetronomeSDK::Models::V1::PackageListResponse::ScheduledChargesOnUsageInvoices }

        # @!attribute spend_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::SpendThresholdConfiguration, nil]
        optional :spend_threshold_configuration, -> { MetronomeSDK::SpendThresholdConfiguration }

        # @!attribute subscriptions
        #
        #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::Subscription>, nil]
        optional :subscriptions,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Subscription] }

        # @!attribute uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made
        #   with a previously used uniqueness key, a new record will not be created and the
        #   request will fail with a 409 error.
        #
        #   @return [String, nil]
        optional :uniqueness_key, String

        # @!method initialize(id:, commits:, created_at:, created_by:, overrides:, scheduled_charges:, usage_statement_schedule:, aliases: nil, archived_at: nil, billing_provider: nil, credits: nil, delivery_method: nil, duration: nil, multiplier_override_prioritization: nil, name: nil, net_payment_terms_days: nil, prepaid_balance_threshold_configuration: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, subscriptions: nil, uniqueness_key: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::PackageListResponse} for more details.
        #
        #   @param id [String]
        #
        #   @param commits [Array<MetronomeSDK::Models::V1::PackageListResponse::Commit>]
        #
        #   @param created_at [Time]
        #
        #   @param created_by [String]
        #
        #   @param overrides [Array<MetronomeSDK::Models::V1::PackageListResponse::Override>]
        #
        #   @param scheduled_charges [Array<MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge>]
        #
        #   @param usage_statement_schedule [MetronomeSDK::Models::V1::PackageListResponse::UsageStatementSchedule]
        #
        #   @param aliases [Array<MetronomeSDK::Models::V1::PackageListResponse::Alias>]
        #
        #   @param archived_at [Time]
        #
        #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::PackageListResponse::BillingProvider]
        #
        #   @param credits [Array<MetronomeSDK::Models::V1::PackageListResponse::Credit>]
        #
        #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::PackageListResponse::DeliveryMethod]
        #
        #   @param duration [MetronomeSDK::Models::V1::PackageListResponse::Duration]
        #
        #   @param multiplier_override_prioritization [Symbol, MetronomeSDK::Models::V1::PackageListResponse::MultiplierOverridePrioritization] Defaults to LOWEST_MULTIPLIER, which applies the greatest discount to list price
        #
        #   @param name [String]
        #
        #   @param net_payment_terms_days [Float]
        #
        #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration]
        #
        #   @param rate_card_id [String]
        #
        #   @param recurring_commits [Array<MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit>]
        #
        #   @param recurring_credits [Array<MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit>]
        #
        #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::PackageListResponse::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
        #
        #   @param spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfiguration]
        #
        #   @param subscriptions [Array<MetronomeSDK::Models::V1::PackageListResponse::Subscription>]
        #
        #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit

        class Commit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute product
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Commit::Product]
          required :product, -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::Product }

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Commit::Type]
          required :type, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::Type }

          # @!attribute access_schedule
          #   The schedule that the customer will gain access to the credits purposed with
          #   this commit.
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule }

          # @!attribute applicable_product_ids
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute invoice_schedule
          #   The schedule that the customer will be invoiced for this commit.
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule, nil]
          optional :invoice_schedule, -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule }

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute priority
          #   If multiple credits or commits are applicable, the one with the lower priority
          #   will apply first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Commit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::RateType }

          # @!attribute rollover_fraction
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float

          # @!attribute specifiers
          #   List of filters that determine what kind of customer usage draws down a commit
          #   or credit. A customer's usage needs to meet the condition of at least one of the
          #   specifiers to contribute to a commit's or credit's drawdown.
          #
          #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
          optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

          # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, invoice_schedule: nil, name: nil, priority: nil, rate_type: nil, rollover_fraction: nil, specifiers: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageListResponse::Commit} for more details.
          #
          #   @param id [String]
          #
          #   @param product [MetronomeSDK::Models::V1::PackageListResponse::Commit::Product]
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Commit::Type]
          #
          #   @param access_schedule [MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule] The schedule that the customer will gain access to the credits purposed with thi
          #
          #   @param applicable_product_ids [Array<String>]
          #
          #   @param applicable_product_tags [Array<String>]
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String]
          #
          #   @param invoice_schedule [MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule] The schedule that the customer will be invoiced for this commit.
          #
          #   @param name [String]
          #
          #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Commit::RateType]
          #
          #   @param rollover_fraction [Float]
          #
          #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o

          # @see MetronomeSDK::Models::V1::PackageListResponse::Commit#product
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::Commit#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID = :PREPAID
            POSTPAID = :POSTPAID

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::Commit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::CreditTypeData]
            required :credit_type, -> { MetronomeSDK::CreditTypeData }

            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem] }

            # @!method initialize(credit_type:, schedule_items:)
            #   The schedule that the customer will gain access to the credits purposed with
            #   this commit.
            #
            #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem>]

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute duration
              #
              #   @return [MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::Duration]
              required :duration,
                       -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::Duration }

              # @!attribute starting_at_offset
              #
              #   @return [MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::StartingAtOffset]
              required :starting_at_offset,
                       -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::StartingAtOffset }

              # @!method initialize(id:, amount:, duration:, starting_at_offset:)
              #   @param id [String]
              #   @param amount [Float]
              #   @param duration [MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::Duration]
              #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::StartingAtOffset]

              # @see MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem#duration
              class Duration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::Duration::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::Duration::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::Duration::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::Duration#unit
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

              # @see MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem#starting_at_offset
              class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageListResponse::Commit::AccessSchedule::ScheduleItem::StartingAtOffset#unit
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::Commit#invoice_schedule
          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::CreditTypeData]
            required :credit_type, -> { MetronomeSDK::CreditTypeData }

            # @!attribute do_not_invoice
            #   If true, this schedule will not generate an invoice.
            #
            #   @return [Boolean]
            required :do_not_invoice, MetronomeSDK::Internal::Type::Boolean

            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem] }

            # @!method initialize(credit_type:, do_not_invoice:, schedule_items:)
            #   The schedule that the customer will be invoiced for this commit.
            #
            #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
            #
            #   @param do_not_invoice [Boolean] If true, this schedule will not generate an invoice.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem>]

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute date_offset
              #
              #   @return [MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem::DateOffset]
              required :date_offset,
                       -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem::DateOffset }

              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float

              # @!method initialize(id:, date_offset:, quantity:, unit_price:)
              #   @param id [String]
              #   @param date_offset [MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem::DateOffset]
              #   @param quantity [Float]
              #   @param unit_price [Float]

              # @see MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem#date_offset
              class DateOffset < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem::DateOffset::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageListResponse::Commit::InvoiceSchedule::ScheduleItem::DateOffset#unit
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::Commit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Override < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute override_specifiers
          #
          #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::Override::OverrideSpecifier>]
          required :override_specifiers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Override::OverrideSpecifier] }

          # @!attribute starting_at_offset
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Override::StartingAtOffset]
          required :starting_at_offset,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::Override::StartingAtOffset }

          # @!attribute applicable_product_tags
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute duration
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Override::Duration, nil]
          optional :duration, -> { MetronomeSDK::Models::V1::PackageListResponse::Override::Duration }

          # @!attribute entitled
          #
          #   @return [Boolean, nil]
          optional :entitled, MetronomeSDK::Internal::Type::Boolean

          # @!attribute is_commit_specific
          #
          #   @return [Boolean, nil]
          optional :is_commit_specific, MetronomeSDK::Internal::Type::Boolean

          # @!attribute multiplier
          #
          #   @return [Float, nil]
          optional :multiplier, Float

          # @!attribute override_tiers
          #
          #   @return [Array<MetronomeSDK::Models::OverrideTier>, nil]
          optional :override_tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::OverrideTier] }

          # @!attribute overwrite_rate
          #
          #   @return [MetronomeSDK::Models::OverwriteRate, nil]
          optional :overwrite_rate, -> { MetronomeSDK::OverwriteRate }

          # @!attribute priority
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute product
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Override::Product, nil]
          optional :product, -> { MetronomeSDK::Models::V1::PackageListResponse::Override::Product }

          # @!attribute target
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Override::Target, nil]
          optional :target, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Override::Target }

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Override::Type, nil]
          optional :type, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Override::Type }

          # @!method initialize(id:, override_specifiers:, starting_at_offset:, applicable_product_tags: nil, duration: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, override_tiers: nil, overwrite_rate: nil, priority: nil, product: nil, target: nil, type: nil)
          #   @param id [String]
          #   @param override_specifiers [Array<MetronomeSDK::Models::V1::PackageListResponse::Override::OverrideSpecifier>]
          #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageListResponse::Override::StartingAtOffset]
          #   @param applicable_product_tags [Array<String>]
          #   @param duration [MetronomeSDK::Models::V1::PackageListResponse::Override::Duration]
          #   @param entitled [Boolean]
          #   @param is_commit_specific [Boolean]
          #   @param multiplier [Float]
          #   @param override_tiers [Array<MetronomeSDK::Models::OverrideTier>]
          #   @param overwrite_rate [MetronomeSDK::Models::OverwriteRate]
          #   @param priority [Float]
          #   @param product [MetronomeSDK::Models::V1::PackageListResponse::Override::Product]
          #   @param target [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Override::Target]
          #   @param type [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Override::Type]

          class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_frequency
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Override::OverrideSpecifier::BillingFrequency, nil]
            optional :billing_frequency,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Override::OverrideSpecifier::BillingFrequency }

            # @!attribute commit_template_ids
            #
            #   @return [Array<String>, nil]
            optional :commit_template_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute presentation_group_values
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String, nil?: true]

            # @!attribute pricing_group_values
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute product_id
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!attribute product_tags
            #
            #   @return [Array<String>, nil]
            optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute recurring_commit_template_ids
            #
            #   @return [Array<String>, nil]
            optional :recurring_commit_template_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute recurring_credit_template_ids
            #
            #   @return [Array<String>, nil]
            optional :recurring_credit_template_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(billing_frequency: nil, commit_template_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_template_ids: nil, recurring_credit_template_ids: nil)
            #   @param billing_frequency [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Override::OverrideSpecifier::BillingFrequency]
            #   @param commit_template_ids [Array<String>]
            #   @param presentation_group_values [Hash{Symbol=>String, nil}]
            #   @param pricing_group_values [Hash{Symbol=>String}]
            #   @param product_id [String]
            #   @param product_tags [Array<String>]
            #   @param recurring_commit_template_ids [Array<String>]
            #   @param recurring_credit_template_ids [Array<String>]

            # @see MetronomeSDK::Models::V1::PackageListResponse::Override::OverrideSpecifier#billing_frequency
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::Override#starting_at_offset
          class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Override::StartingAtOffset::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Override::StartingAtOffset::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Override::StartingAtOffset::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageListResponse::Override::StartingAtOffset#unit
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::Override#duration
          class Duration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Override::Duration::Unit]
            required :unit, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Override::Duration::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Override::Duration::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageListResponse::Override::Duration#unit
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::Override#product
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::Override#target
          module Target
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::Override#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            OVERWRITE = :OVERWRITE
            MULTIPLIER = :MULTIPLIER
            TIERED = :TIERED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute product
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Product]
          required :product, -> { MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Product }

          # @!attribute schedule
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule]
          required :schedule, -> { MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule }

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id:, product:, schedule:, custom_fields: nil, description: nil, name: nil)
          #   @param id [String]
          #
          #   @param product [MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Product]
          #
          #   @param schedule [MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule]
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String]
          #
          #   @param name [String]

          # @see MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge#product
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge#schedule
          class Schedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::CreditTypeData]
            required :credit_type, -> { MetronomeSDK::CreditTypeData }

            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem] }

            # @!method initialize(credit_type:, schedule_items:)
            #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem>]

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute date_offset
              #
              #   @return [MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem::DateOffset]
              required :date_offset,
                       -> { MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem::DateOffset }

              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float

              # @!method initialize(id:, date_offset:, quantity:, unit_price:)
              #   @param id [String]
              #   @param date_offset [MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem::DateOffset]
              #   @param quantity [Float]
              #   @param unit_price [Float]

              # @see MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem#date_offset
              class DateOffset < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem::DateOffset::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageListResponse::ScheduledCharge::Schedule::ScheduleItem::DateOffset#unit
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

        # @see MetronomeSDK::Models::V1::PackageListResponse#usage_statement_schedule
        class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute frequency
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::UsageStatementSchedule::Frequency]
          required :frequency,
                   enum: -> { MetronomeSDK::Models::V1::PackageListResponse::UsageStatementSchedule::Frequency }

          # @!method initialize(frequency:)
          #   @param frequency [Symbol, MetronomeSDK::Models::V1::PackageListResponse::UsageStatementSchedule::Frequency]

          # @see MetronomeSDK::Models::V1::PackageListResponse::UsageStatementSchedule#frequency
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

        # @see MetronomeSDK::Models::V1::PackageListResponse#billing_provider
        module BillingProvider
          extend MetronomeSDK::Internal::Type::Enum

          AWS_MARKETPLACE = :aws_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite
          CUSTOM = :custom
          AZURE_MARKETPLACE = :azure_marketplace
          QUICKBOOKS_ONLINE = :quickbooks_online
          WORKDAY = :workday
          GCP_MARKETPLACE = :gcp_marketplace
          METRONOME = :metronome

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Credit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute product
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Credit::Product]
          required :product, -> { MetronomeSDK::Models::V1::PackageListResponse::Credit::Product }

          # @!attribute access_schedule
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule }

          # @!attribute applicable_product_ids
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute priority
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Credit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Credit::RateType }

          # @!attribute specifiers
          #   List of filters that determine what kind of customer usage draws down a commit
          #   or credit. A customer's usage needs to meet the condition of at least one of the
          #   specifiers to contribute to a commit's or credit's drawdown.
          #
          #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
          optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

          # @!method initialize(id:, product:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, name: nil, priority: nil, rate_type: nil, specifiers: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageListResponse::Credit} for more details.
          #
          #   @param id [String]
          #
          #   @param product [MetronomeSDK::Models::V1::PackageListResponse::Credit::Product]
          #
          #   @param access_schedule [MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule]
          #
          #   @param applicable_product_ids [Array<String>]
          #
          #   @param applicable_product_tags [Array<String>]
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String]
          #
          #   @param name [String]
          #
          #   @param priority [Float]
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Credit::RateType]
          #
          #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o

          # @see MetronomeSDK::Models::V1::PackageListResponse::Credit#product
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::Credit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::CreditTypeData]
            required :credit_type, -> { MetronomeSDK::CreditTypeData }

            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem] }

            # @!method initialize(credit_type:, schedule_items:)
            #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem>]

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute duration
              #
              #   @return [MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::Duration]
              required :duration,
                       -> { MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::Duration }

              # @!attribute starting_at_offset
              #
              #   @return [MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::StartingAtOffset]
              required :starting_at_offset,
                       -> { MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::StartingAtOffset }

              # @!method initialize(id:, amount:, duration:, starting_at_offset:)
              #   @param id [String]
              #   @param amount [Float]
              #   @param duration [MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::Duration]
              #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::StartingAtOffset]

              # @see MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem#duration
              class Duration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::Duration::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::Duration::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::Duration::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::Duration#unit
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

              # @see MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem#starting_at_offset
              class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
                required :unit,
                         enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit }

                # @!attribute value
                #
                #   @return [Integer]
                required :value, Integer

                # @!method initialize(unit:, value:)
                #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::StartingAtOffset::Unit]
                #   @param value [Integer]

                # @see MetronomeSDK::Models::V1::PackageListResponse::Credit::AccessSchedule::ScheduleItem::StartingAtOffset#unit
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::Credit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see MetronomeSDK::Models::V1::PackageListResponse#delivery_method
        module DeliveryMethod
          extend MetronomeSDK::Internal::Type::Enum

          DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
          AWS_SQS = :aws_sqs
          TACKLE = :tackle
          AWS_SNS = :aws_sns

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::V1::PackageListResponse#duration
        class Duration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute unit
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Duration::Unit]
          required :unit, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Duration::Unit }

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(unit:, value:)
          #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Duration::Unit]
          #   @param value [Integer]

          # @see MetronomeSDK::Models::V1::PackageListResponse::Duration#unit
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
        # first.
        #
        # @see MetronomeSDK::Models::V1::PackageListResponse#multiplier_override_prioritization
        module MultiplierOverridePrioritization
          extend MetronomeSDK::Internal::Type::Enum

          LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
          EXPLICIT = :EXPLICIT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute access_amount
          #   The amount of commit to grant.
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::AccessAmount]
          required :access_amount,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::AccessAmount }

          # @!attribute commit_duration
          #   The amount of time each of the created commits will be valid for
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::CommitDuration]
          required :commit_duration,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::CommitDuration }

          # @!attribute priority
          #
          #   @return [Float]
          required :priority, Float

          # @!attribute product
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Product]
          required :product, -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Product }

          # @!attribute rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::RateType]
          required :rate_type, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::RateType }

          # @!attribute starting_at_offset
          #   Offset relative to the contract start date that determines the start time for
          #   the first commit
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::StartingAtOffset]
          required :starting_at_offset,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::StartingAtOffset }

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
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute duration
          #   Offset relative to the recurring credit start that determines when the contract
          #   will stop creating recurring commits. optional
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Duration, nil]
          optional :duration, -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Duration }

          # @!attribute invoice_amount
          #   The amount the customer should be billed for the commit.
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::InvoiceAmount, nil]
          optional :invoice_amount,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::InvoiceAmount }

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute proration
          #   Determines whether the first and last commit will be prorated. If not provided,
          #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Proration, nil]
          optional :proration,
                   enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Proration }

          # @!attribute recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #   The commits will be created on the usage invoice frequency. If provided: - The
          #   period defined in the duration will correspond to this frequency. - Commits will
          #   be created aligned with the recurring commit's starting_at rather than the usage
          #   invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::RecurrenceFrequency }

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
          #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
          optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

          # @!attribute subscription_config
          #   Attach a subscription to the recurring commit/credit.
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig, nil]
          optional :subscription_config,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig }

          # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at_offset:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, duration: nil, invoice_amount: nil, name: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit} for more
          #   details.
          #
          #   @param id [String]
          #
          #   @param access_amount [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::AccessAmount] The amount of commit to grant.
          #
          #   @param commit_duration [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::CommitDuration] The amount of time each of the created commits will be valid for
          #
          #   @param priority [Float]
          #
          #   @param product [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Product]
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
          #
          #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::StartingAtOffset] Offset relative to the contract start date that determines the start time for th
          #
          #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
          #
          #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
          #
          #   @param description [String]
          #
          #   @param duration [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Duration] Offset relative to the recurring credit start that determines when the contract
          #
          #   @param invoice_amount [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit.
          #
          #   @param name [String]
          #
          #   @param proration [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
          #
          #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
          #
          #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
          #
          #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param subscription_config [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig] Attach a subscription to the recurring commit/credit.

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit#access_amount
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit#commit_duration
          class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::CommitDuration::Unit, nil]
            optional :unit,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::CommitDuration::Unit }

            # @!method initialize(value:, unit: nil)
            #   The amount of time each of the created commits will be valid for
            #
            #   @param value [Float]
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::CommitDuration::Unit]

            # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::CommitDuration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              PERIODS = :PERIODS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit#product
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
          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit#starting_at_offset
          class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::StartingAtOffset::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::StartingAtOffset::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Offset relative to the contract start date that determines the start time for
            #   the first commit
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::StartingAtOffset::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::StartingAtOffset#unit
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit#duration
          class Duration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Duration::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Duration::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Offset relative to the recurring credit start that determines when the contract
            #   will stop creating recurring commits. optional
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Duration::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::Duration#unit
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit#invoice_amount
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
            #   The amount the customer should be billed for the commit.
            #
            #   @param credit_type_id [String]
            #   @param quantity [Float]
            #   @param unit_price [Float]
          end

          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit#proration
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
          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit#recurrence_frequency
          module RecurrenceFrequency
            extend MetronomeSDK::Internal::Type::Enum

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit#subscription_config
          class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute allocation
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig::Allocation]
            required :allocation,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig::Allocation }

            # @!attribute apply_seat_increase_config
            #
            #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig]
            required :apply_seat_increase_config,
                     -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig }

            # @!attribute subscription_template_id
            #
            #   @return [String]
            required :subscription_template_id, String

            # @!method initialize(allocation:, apply_seat_increase_config:, subscription_template_id:)
            #   Attach a subscription to the recurring commit/credit.
            #
            #   @param allocation [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig::Allocation]
            #   @param apply_seat_increase_config [MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig::ApplySeatIncreaseConfig]
            #   @param subscription_template_id [String]

            # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig#allocation
            module Allocation
              extend MetronomeSDK::Internal::Type::Enum

              INDIVIDUAL = :INDIVIDUAL
              POOLED = :POOLED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCommit::SubscriptionConfig#apply_seat_increase_config
            class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute is_prorated
              #   Indicates whether a mid-period seat increase should be prorated.
              #
              #   @return [Boolean]
              required :is_prorated, MetronomeSDK::Internal::Type::Boolean

              # @!method initialize(is_prorated:)
              #   @param is_prorated [Boolean] Indicates whether a mid-period seat increase should be prorated.
            end
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
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::AccessAmount]
          required :access_amount,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::AccessAmount }

          # @!attribute commit_duration
          #   The amount of time each of the created commits will be valid for
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::CommitDuration]
          required :commit_duration,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::CommitDuration }

          # @!attribute priority
          #
          #   @return [Float]
          required :priority, Float

          # @!attribute product
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Product]
          required :product, -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Product }

          # @!attribute rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::RateType]
          required :rate_type, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::RateType }

          # @!attribute starting_at_offset
          #   Offset relative to the contract start date that determines the start time for
          #   the first commit
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::StartingAtOffset]
          required :starting_at_offset,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::StartingAtOffset }

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
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute duration
          #   Offset relative to the recurring credit start that determines when the contract
          #   will stop creating recurring commits. optional
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Duration, nil]
          optional :duration, -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Duration }

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute proration
          #   Determines whether the first and last commit will be prorated. If not provided,
          #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Proration, nil]
          optional :proration,
                   enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Proration }

          # @!attribute recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #   The commits will be created on the usage invoice frequency. If provided: - The
          #   period defined in the duration will correspond to this frequency. - Commits will
          #   be created aligned with the recurring commit's starting_at rather than the usage
          #   invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::RecurrenceFrequency }

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
          #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
          optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

          # @!attribute subscription_config
          #   Attach a subscription to the recurring commit/credit.
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig, nil]
          optional :subscription_config,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig }

          # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at_offset:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, duration: nil, name: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit} for more
          #   details.
          #
          #   @param id [String]
          #
          #   @param access_amount [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::AccessAmount] The amount of commit to grant.
          #
          #   @param commit_duration [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::CommitDuration] The amount of time each of the created commits will be valid for
          #
          #   @param priority [Float]
          #
          #   @param product [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Product]
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
          #
          #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::StartingAtOffset] Offset relative to the contract start date that determines the start time for th
          #
          #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
          #
          #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
          #
          #   @param description [String]
          #
          #   @param duration [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Duration] Offset relative to the recurring credit start that determines when the contract
          #
          #   @param name [String]
          #
          #   @param proration [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
          #
          #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
          #
          #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
          #
          #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param subscription_config [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig] Attach a subscription to the recurring commit/credit.

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit#access_amount
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit#commit_duration
          class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::CommitDuration::Unit, nil]
            optional :unit,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::CommitDuration::Unit }

            # @!method initialize(value:, unit: nil)
            #   The amount of time each of the created commits will be valid for
            #
            #   @param value [Float]
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::CommitDuration::Unit]

            # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::CommitDuration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              PERIODS = :PERIODS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit#product
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
          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit#starting_at_offset
          class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::StartingAtOffset::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::StartingAtOffset::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Offset relative to the contract start date that determines the start time for
            #   the first commit
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::StartingAtOffset::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::StartingAtOffset#unit
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

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit#duration
          class Duration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Duration::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Duration::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   Offset relative to the recurring credit start that determines when the contract
            #   will stop creating recurring commits. optional
            #
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Duration::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::Duration#unit
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
          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit#proration
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
          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit#recurrence_frequency
          module RecurrenceFrequency
            extend MetronomeSDK::Internal::Type::Enum

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit#subscription_config
          class SubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute allocation
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig::Allocation]
            required :allocation,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig::Allocation }

            # @!attribute apply_seat_increase_config
            #
            #   @return [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig]
            required :apply_seat_increase_config,
                     -> { MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig }

            # @!attribute subscription_template_id
            #
            #   @return [String]
            required :subscription_template_id, String

            # @!method initialize(allocation:, apply_seat_increase_config:, subscription_template_id:)
            #   Attach a subscription to the recurring commit/credit.
            #
            #   @param allocation [Symbol, MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig::Allocation]
            #   @param apply_seat_increase_config [MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig::ApplySeatIncreaseConfig]
            #   @param subscription_template_id [String]

            # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig#allocation
            module Allocation
              extend MetronomeSDK::Internal::Type::Enum

              INDIVIDUAL = :INDIVIDUAL
              POOLED = :POOLED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::PackageListResponse::RecurringCredit::SubscriptionConfig#apply_seat_increase_config
            class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute is_prorated
              #   Indicates whether a mid-period seat increase should be prorated.
              #
              #   @return [Boolean]
              required :is_prorated, MetronomeSDK::Internal::Type::Boolean

              # @!method initialize(is_prorated:)
              #   @param is_prorated [Boolean] Indicates whether a mid-period seat increase should be prorated.
            end
          end
        end

        # Determines which scheduled and commit charges to consolidate onto the Contract's
        # usage invoice. The charge's `timestamp` must match the usage invoice's
        # `ending_before` date for consolidation to occur. This field cannot be modified
        # after a Contract has been created. If this field is omitted, charges will appear
        # on a separate invoice from usage charges.
        #
        # @see MetronomeSDK::Models::V1::PackageListResponse#scheduled_charges_on_usage_invoices
        module ScheduledChargesOnUsageInvoices
          extend MetronomeSDK::Internal::Type::Enum

          ALL = :ALL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Subscription < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute collection_schedule
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::CollectionSchedule]
          required :collection_schedule,
                   enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::CollectionSchedule }

          # @!attribute proration
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Subscription::Proration]
          required :proration, -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::Proration }

          # @!attribute subscription_rate
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate]
          required :subscription_rate,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate }

          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

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
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Subscription::Duration, nil]
          optional :duration, -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::Duration }

          # @!attribute fiat_credit_type_id
          #
          #   @return [String, nil]
          optional :fiat_credit_type_id, String

          # @!attribute initial_quantity
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
          #   directly providing the quantity. You must use a SEAT_BASED subscription to use a
          #   linked recurring credit with an allocation per seat. `seat_config` must be
          #   provided with this option.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::QuantityManagementMode, nil]
          optional :quantity_management_mode,
                   enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::QuantityManagementMode }

          # @!attribute seat_config
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Subscription::SeatConfig, nil]
          optional :seat_config, -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::SeatConfig }

          # @!attribute starting_at_offset
          #
          #   @return [MetronomeSDK::Models::V1::PackageListResponse::Subscription::StartingAtOffset, nil]
          optional :starting_at_offset,
                   -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::StartingAtOffset }

          # @!method initialize(collection_schedule:, proration:, subscription_rate:, id: nil, custom_fields: nil, description: nil, duration: nil, fiat_credit_type_id: nil, initial_quantity: nil, name: nil, quantity_management_mode: nil, seat_config: nil, starting_at_offset: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PackageListResponse::Subscription} for more details.
          #
          #   @param collection_schedule [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::CollectionSchedule]
          #
          #   @param proration [MetronomeSDK::Models::V1::PackageListResponse::Subscription::Proration]
          #
          #   @param subscription_rate [MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate]
          #
          #   @param id [String]
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String]
          #
          #   @param duration [MetronomeSDK::Models::V1::PackageListResponse::Subscription::Duration]
          #
          #   @param fiat_credit_type_id [String]
          #
          #   @param initial_quantity [Float]
          #
          #   @param name [String]
          #
          #   @param quantity_management_mode [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::QuantityManagementMode] Determines how the subscription's quantity is controlled. Defaults to QUANTITY_O
          #
          #   @param seat_config [MetronomeSDK::Models::V1::PackageListResponse::Subscription::SeatConfig]
          #
          #   @param starting_at_offset [MetronomeSDK::Models::V1::PackageListResponse::Subscription::StartingAtOffset]

          # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription#collection_schedule
          module CollectionSchedule
            extend MetronomeSDK::Internal::Type::Enum

            ADVANCE = :ADVANCE
            ARREARS = :ARREARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription#proration
          class Proration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute invoice_behavior
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::Proration::InvoiceBehavior]
            required :invoice_behavior,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::Proration::InvoiceBehavior }

            # @!attribute is_prorated
            #
            #   @return [Boolean]
            required :is_prorated, MetronomeSDK::Internal::Type::Boolean

            # @!method initialize(invoice_behavior:, is_prorated:)
            #   @param invoice_behavior [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::Proration::InvoiceBehavior]
            #   @param is_prorated [Boolean]

            # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription::Proration#invoice_behavior
            module InvoiceBehavior
              extend MetronomeSDK::Internal::Type::Enum

              BILL_IMMEDIATELY = :BILL_IMMEDIATELY
              BILL_ON_NEXT_COLLECTION_DATE = :BILL_ON_NEXT_COLLECTION_DATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription#subscription_rate
          class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_frequency
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate::BillingFrequency]
            required :billing_frequency,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate::BillingFrequency }

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate::Product]
            required :product,
                     -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate::Product }

            # @!method initialize(billing_frequency:, product:)
            #   @param billing_frequency [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate::BillingFrequency]
            #   @param product [MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate::Product]

            # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate#billing_frequency
            module BillingFrequency
              extend MetronomeSDK::Internal::Type::Enum

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription::SubscriptionRate#product
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
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription#duration
          class Duration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::Duration::Unit]
            required :unit, enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::Duration::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::Duration::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription::Duration#unit
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
          # directly providing the quantity. You must use a SEAT_BASED subscription to use a
          # linked recurring credit with an allocation per seat. `seat_config` must be
          # provided with this option.
          #
          # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription#quantity_management_mode
          module QuantityManagementMode
            extend MetronomeSDK::Internal::Type::Enum

            SEAT_BASED = :SEAT_BASED
            QUANTITY_ONLY = :QUANTITY_ONLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription#seat_config
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

            # @!method initialize(seat_group_key:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::PackageListResponse::Subscription::SeatConfig} for
            #   more details.
            #
            #   @param seat_group_key [String] The property name, sent on usage events, that identifies the seat ID associated
          end

          # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription#starting_at_offset
          class StartingAtOffset < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::StartingAtOffset::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V1::PackageListResponse::Subscription::StartingAtOffset::Unit }

            # @!attribute value
            #
            #   @return [Integer]
            required :value, Integer

            # @!method initialize(unit:, value:)
            #   @param unit [Symbol, MetronomeSDK::Models::V1::PackageListResponse::Subscription::StartingAtOffset::Unit]
            #   @param value [Integer]

            # @see MetronomeSDK::Models::V1::PackageListResponse::Subscription::StartingAtOffset#unit
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
