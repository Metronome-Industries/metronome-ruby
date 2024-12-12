# frozen_string_literal: true

module Metronome
  module Models
    class ContractAmendParams < Metronome::BaseModel
      # @!attribute [rw] contract_id
      #   ID of the contract to amend
      #   @return [String]
      required :contract_id, String

      # @!attribute [rw] customer_id
      #   ID of the customer whose contract is to be amended
      #   @return [String]
      required :customer_id, String

      # @!attribute [rw] starting_at
      #   inclusive start time for the amendment
      #   @return [Time]
      required :starting_at, Time

      # @!attribute [rw] commits
      #   @return [Array<Metronome::Models::ContractAmendParams::Commit>]
      optional :commits, Metronome::ArrayOf.new(-> { Metronome::Models::ContractAmendParams::Commit })

      # @!attribute [rw] credits
      #   @return [Array<Metronome::Models::ContractAmendParams::Credit>]
      optional :credits, Metronome::ArrayOf.new(-> { Metronome::Models::ContractAmendParams::Credit })

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute [rw] discounts
      #   This field's availability is dependent on your client's configuration.
      #   @return [Array<Metronome::Models::ContractAmendParams::Discount>]
      optional :discounts, Metronome::ArrayOf.new(-> { Metronome::Models::ContractAmendParams::Discount })

      # @!attribute [rw] netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!attribute [rw] overrides
      #   @return [Array<Metronome::Models::ContractAmendParams::Override>]
      optional :overrides, Metronome::ArrayOf.new(-> { Metronome::Models::ContractAmendParams::Override })

      # @!attribute [rw] professional_services
      #   This field's availability is dependent on your client's configuration.
      #   @return [Array<Metronome::Models::ContractAmendParams::ProfessionalService>]
      optional :professional_services,
               Metronome::ArrayOf.new(-> { Metronome::Models::ContractAmendParams::ProfessionalService })

      # @!attribute [rw] reseller_royalties
      #   This field's availability is dependent on your client's configuration.
      #   @return [Array<Metronome::Models::ContractAmendParams::ResellerRoyalty>]
      optional :reseller_royalties,
               Metronome::ArrayOf.new(-> { Metronome::Models::ContractAmendParams::ResellerRoyalty })

      # @!attribute [rw] salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :salesforce_opportunity_id, String

      # @!attribute [rw] scheduled_charges
      #   @return [Array<Metronome::Models::ContractAmendParams::ScheduledCharge>]
      optional :scheduled_charges,
               Metronome::ArrayOf.new(-> { Metronome::Models::ContractAmendParams::ScheduledCharge })

      # @!attribute [rw] total_contract_value
      #   This field's availability is dependent on your client's configuration.
      #   @return [Float]
      optional :total_contract_value, Float

      class Commit < Metronome::BaseModel
        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] type
        #   @return [Symbol, Metronome::Models::ContractAmendParams::Commit::Type]
        required :type, enum: -> { Metronome::Models::ContractAmendParams::Commit::Type }

        # @!attribute [rw] access_schedule
        #   Required: Schedule for distributing the commit to the customer. For "POSTPAID" commits only one schedule item is allowed and amount must match invoice_schedule total.
        #   @return [Metronome::Models::ContractAmendParams::Commit::AccessSchedule]
        optional :access_schedule, -> { Metronome::Models::ContractAmendParams::Commit::AccessSchedule }

        # @!attribute [rw] amount
        #   (DEPRECATED) Use access_schedule and invoice_schedule instead.
        #   @return [Float]
        optional :amount, Float

        # @!attribute [rw] applicable_product_ids
        #   Which products the commit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the commit applies to all products.
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf.new(String)

        # @!attribute [rw] applicable_product_tags
        #   Which tags the commit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the commit applies to all products.
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] description
        #   Used only in UI/API. It is not exposed to end customers.
        #   @return [String]
        optional :description, String

        # @!attribute [rw] invoice_schedule
        #   Required for "POSTPAID" commits: the true up invoice will be generated at this time and only one schedule item is allowed; the total must match access_schedule amount. Optional for "PREPAID" commits: if not provided, this will be a "complimentary" commit with no invoice.
        #   @return [Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule]
        optional :invoice_schedule, -> { Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule }

        # @!attribute [rw] name
        #   displayed on invoices
        #   @return [String]
        optional :name, String

        # @!attribute [rw] netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!attribute [rw] priority
        #   If multiple commits are applicable, the one with the lower priority will apply first.
        #   @return [Float]
        optional :priority, Float

        # @!attribute [rw] rate_type
        #   @return [Symbol, Metronome::Models::ContractAmendParams::Commit::RateType]
        optional :rate_type, enum: -> { Metronome::Models::ContractAmendParams::Commit::RateType }

        # @!attribute [rw] rollover_fraction
        #   Fraction of unused segments that will be rolled over. Must be between 0 and 1.
        #   @return [Float]
        optional :rollover_fraction, Float

        # @!attribute [rw] temporary_id
        #   A temporary ID for the commit that can be used to reference the commit for commit specific overrides.
        #   @return [String]
        optional :temporary_id, String

        class Type < Metronome::Enum
          PREPAID = :PREPAID
          POSTPAID = :POSTPAID
        end

        class AccessSchedule < Metronome::BaseModel
          # @!attribute [rw] schedule_items
          #   @return [Array<Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem
                     }
                   )

          # @!attribute [rw] credit_type_id
          #   @return [String]
          optional :credit_type_id, String

          class ScheduleItem < Metronome::BaseModel
            # @!attribute [rw] amount
            #   @return [Float]
            required :amount, Float

            # @!attribute [rw] ending_before
            #   RFC 3339 timestamp (exclusive)
            #   @return [Time]
            required :ending_before, Time

            # @!attribute [rw] starting_at
            #   RFC 3339 timestamp (inclusive)
            #   @return [Time]
            required :starting_at, Time

            # @!parse
            #   # Create a new instance of ScheduleItem from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Float] :amount
            #   #   @option data [String] :ending_before RFC 3339 timestamp (exclusive)
            #   #   @option data [String] :starting_at RFC 3339 timestamp (inclusive)
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of AccessSchedule from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Array<Object>] :schedule_items
          #   #   @option data [String, nil] :credit_type_id
          #   def initialize(data = {}) = super
        end

        class InvoiceSchedule < Metronome::BaseModel
          # @!attribute [rw] credit_type_id
          #   Defaults to USD if not passed. Only USD is supported at this time.
          #   @return [String]
          optional :credit_type_id, String

          # @!attribute [rw] recurring_schedule
          #   Enter the unit price and quantity for the charge or instead only send the amount. If amount is sent, the unit price is assumed to be the amount and quantity is inferred to be 1.
          #   @return [Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule]
          optional :recurring_schedule,
                   -> { Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule }

          # @!attribute [rw] schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #   @return [Array<Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem>]
          optional :schedule_items,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem
                     }
                   )

          class RecurringSchedule < Metronome::BaseModel
            # @!attribute [rw] amount_distribution
            #   @return [Symbol, Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> {
                       Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::AmountDistribution
                     }

            # @!attribute [rw] ending_before
            #   RFC 3339 timestamp (exclusive).
            #   @return [Time]
            required :ending_before, Time

            # @!attribute [rw] frequency
            #   @return [Symbol, Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> {
                       Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Frequency
                     }

            # @!attribute [rw] starting_at
            #   RFC 3339 timestamp (inclusive).
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [rw] amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #   @return [Float]
            optional :amount, Float

            # @!attribute [rw] quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #   @return [Float]
            optional :quantity, Float

            # @!attribute [rw] unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #   @return [Float]
            optional :unit_price, Float

            class AmountDistribution < Metronome::Enum
              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH
            end

            class Frequency < Metronome::Enum
              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL
            end

            # @!parse
            #   # Create a new instance of RecurringSchedule from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :amount_distribution
            #   #   @option data [String] :ending_before RFC 3339 timestamp (exclusive).
            #   #   @option data [String] :frequency
            #   #   @option data [String] :starting_at RFC 3339 timestamp (inclusive).
            #   #   @option data [Float, nil] :amount Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #     amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #     inferred to be 1.
            #   #   @option data [Float, nil] :quantity Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #     amount and must be specified with unit_price. If specified amount cannot be
            #   #     provided.
            #   #   @option data [Float, nil] :unit_price Unit price for the charge. Will be multiplied by quantity to determine the
            #   #     amount and must be specified with quantity. If specified amount cannot be
            #   #     provided.
            #   def initialize(data = {}) = super
          end

          class ScheduleItem < Metronome::BaseModel
            # @!attribute [rw] timestamp
            #   timestamp of the scheduled event
            #   @return [Time]
            required :timestamp, Time

            # @!attribute [rw] amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #   @return [Float]
            optional :amount, Float

            # @!attribute [rw] quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #   @return [Float]
            optional :quantity, Float

            # @!attribute [rw] unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #   @return [Float]
            optional :unit_price, Float

            # @!parse
            #   # Create a new instance of ScheduleItem from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :timestamp timestamp of the scheduled event
            #   #   @option data [Float, nil] :amount Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #     amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #     inferred to be 1.
            #   #   @option data [Float, nil] :quantity Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #     amount and must be specified with unit_price. If specified amount cannot be
            #   #     provided.
            #   #   @option data [Float, nil] :unit_price Unit price for the charge. Will be multiplied by quantity to determine the
            #   #     amount and must be specified with quantity. If specified amount cannot be
            #   #     provided.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of InvoiceSchedule from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String, nil] :credit_type_id Defaults to USD if not passed. Only USD is supported at this time.
          #   #   @option data [Object, nil] :recurring_schedule Enter the unit price and quantity for the charge or instead only send the
          #   #     amount. If amount is sent, the unit price is assumed to be the amount and
          #   #     quantity is inferred to be 1.
          #   #   @option data [Array<Object>, nil] :schedule_items Either provide amount or provide both unit_price and quantity.
          #   def initialize(data = {}) = super
        end

        class RateType < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          COMMIT_RATE = :commit_rate
          LIST_RATE = :LIST_RATE
          LIST_RATE = :list_rate
        end

        # @!parse
        #   # Create a new instance of Commit from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :product_id
        #   #   @option data [String] :type
        #   #   @option data [Object, nil] :access_schedule Required: Schedule for distributing the commit to the customer. For "POSTPAID"
        #   #     commits only one schedule item is allowed and amount must match invoice_schedule
        #   #     total.
        #   #   @option data [Float, nil] :amount (DEPRECATED) Use access_schedule and invoice_schedule instead.
        #   #   @option data [Array<String>, nil] :applicable_product_ids Which products the commit applies to. If both applicable_product_ids and
        #   #     applicable_product_tags are not provided, the commit applies to all products.
        #   #   @option data [Array<String>, nil] :applicable_product_tags Which tags the commit applies to. If both applicable_product_ids and
        #   #     applicable_product_tags are not provided, the commit applies to all products.
        #   #   @option data [Hash, nil] :custom_fields
        #   #   @option data [String, nil] :description Used only in UI/API. It is not exposed to end customers.
        #   #   @option data [Object, nil] :invoice_schedule Required for "POSTPAID" commits: the true up invoice will be generated at this
        #   #     time and only one schedule item is allowed; the total must match access_schedule
        #   #     amount. Optional for "PREPAID" commits: if not provided, this will be a
        #   #     "complimentary" commit with no invoice.
        #   #   @option data [String, nil] :name displayed on invoices
        #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
        #   #   @option data [Float, nil] :priority If multiple commits are applicable, the one with the lower priority will apply
        #   #     first.
        #   #   @option data [String, nil] :rate_type
        #   #   @option data [Float, nil] :rollover_fraction Fraction of unused segments that will be rolled over. Must be between 0 and 1.
        #   #   @option data [String, nil] :temporary_id A temporary ID for the commit that can be used to reference the commit for
        #   #     commit specific overrides.
        #   def initialize(data = {}) = super
      end

      class Credit < Metronome::BaseModel
        # @!attribute [rw] access_schedule
        #   Schedule for distributing the credit to the customer.
        #   @return [Metronome::Models::ContractAmendParams::Credit::AccessSchedule]
        required :access_schedule, -> { Metronome::Models::ContractAmendParams::Credit::AccessSchedule }

        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] applicable_product_ids
        #   Which products the credit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the credit applies to all products.
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf.new(String)

        # @!attribute [rw] applicable_product_tags
        #   Which tags the credit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the credit applies to all products.
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] description
        #   Used only in UI/API. It is not exposed to end customers.
        #   @return [String]
        optional :description, String

        # @!attribute [rw] name
        #   displayed on invoices
        #   @return [String]
        optional :name, String

        # @!attribute [rw] netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!attribute [rw] priority
        #   If multiple credits are applicable, the one with the lower priority will apply first.
        #   @return [Float]
        optional :priority, Float

        # @!attribute [rw] rate_type
        #   @return [Symbol, Metronome::Models::ContractAmendParams::Credit::RateType]
        optional :rate_type, enum: -> { Metronome::Models::ContractAmendParams::Credit::RateType }

        class AccessSchedule < Metronome::BaseModel
          # @!attribute [rw] schedule_items
          #   @return [Array<Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem
                     }
                   )

          # @!attribute [rw] credit_type_id
          #   @return [String]
          optional :credit_type_id, String

          class ScheduleItem < Metronome::BaseModel
            # @!attribute [rw] amount
            #   @return [Float]
            required :amount, Float

            # @!attribute [rw] ending_before
            #   RFC 3339 timestamp (exclusive)
            #   @return [Time]
            required :ending_before, Time

            # @!attribute [rw] starting_at
            #   RFC 3339 timestamp (inclusive)
            #   @return [Time]
            required :starting_at, Time

            # @!parse
            #   # Create a new instance of ScheduleItem from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Float] :amount
            #   #   @option data [String] :ending_before RFC 3339 timestamp (exclusive)
            #   #   @option data [String] :starting_at RFC 3339 timestamp (inclusive)
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of AccessSchedule from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Array<Object>] :schedule_items
          #   #   @option data [String, nil] :credit_type_id
          #   def initialize(data = {}) = super
        end

        class RateType < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          COMMIT_RATE = :commit_rate
          LIST_RATE = :LIST_RATE
          LIST_RATE = :list_rate
        end

        # @!parse
        #   # Create a new instance of Credit from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :access_schedule Schedule for distributing the credit to the customer.
        #   #   @option data [String] :product_id
        #   #   @option data [Array<String>, nil] :applicable_product_ids Which products the credit applies to. If both applicable_product_ids and
        #   #     applicable_product_tags are not provided, the credit applies to all products.
        #   #   @option data [Array<String>, nil] :applicable_product_tags Which tags the credit applies to. If both applicable_product_ids and
        #   #     applicable_product_tags are not provided, the credit applies to all products.
        #   #   @option data [Hash, nil] :custom_fields
        #   #   @option data [String, nil] :description Used only in UI/API. It is not exposed to end customers.
        #   #   @option data [String, nil] :name displayed on invoices
        #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
        #   #   @option data [Float, nil] :priority If multiple credits are applicable, the one with the lower priority will apply
        #   #     first.
        #   #   @option data [String, nil] :rate_type
        #   def initialize(data = {}) = super
      end

      class Discount < Metronome::BaseModel
        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] schedule
        #   Must provide either schedule_items or recurring_schedule.
        #   @return [Metronome::Models::ContractAmendParams::Discount::Schedule]
        required :schedule, -> { Metronome::Models::ContractAmendParams::Discount::Schedule }

        # @!attribute [rw] name
        #   displayed on invoices
        #   @return [String]
        optional :name, String

        # @!attribute [rw] netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_sales_order_id, String

        class Schedule < Metronome::BaseModel
          # @!attribute [rw] credit_type_id
          #   Defaults to USD if not passed. Only USD is supported at this time.
          #   @return [String]
          optional :credit_type_id, String

          # @!attribute [rw] recurring_schedule
          #   Enter the unit price and quantity for the charge or instead only send the amount. If amount is sent, the unit price is assumed to be the amount and quantity is inferred to be 1.
          #   @return [Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule]
          optional :recurring_schedule,
                   -> { Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule }

          # @!attribute [rw] schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #   @return [Array<Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem>]
          optional :schedule_items,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem
                     }
                   )

          class RecurringSchedule < Metronome::BaseModel
            # @!attribute [rw] amount_distribution
            #   @return [Symbol, Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> {
                       Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule::AmountDistribution
                     }

            # @!attribute [rw] ending_before
            #   RFC 3339 timestamp (exclusive).
            #   @return [Time]
            required :ending_before, Time

            # @!attribute [rw] frequency
            #   @return [Symbol, Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> {
                       Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule::Frequency
                     }

            # @!attribute [rw] starting_at
            #   RFC 3339 timestamp (inclusive).
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [rw] amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #   @return [Float]
            optional :amount, Float

            # @!attribute [rw] quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #   @return [Float]
            optional :quantity, Float

            # @!attribute [rw] unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #   @return [Float]
            optional :unit_price, Float

            class AmountDistribution < Metronome::Enum
              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH
            end

            class Frequency < Metronome::Enum
              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL
            end

            # @!parse
            #   # Create a new instance of RecurringSchedule from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :amount_distribution
            #   #   @option data [String] :ending_before RFC 3339 timestamp (exclusive).
            #   #   @option data [String] :frequency
            #   #   @option data [String] :starting_at RFC 3339 timestamp (inclusive).
            #   #   @option data [Float, nil] :amount Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #     amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #     inferred to be 1.
            #   #   @option data [Float, nil] :quantity Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #     amount and must be specified with unit_price. If specified amount cannot be
            #   #     provided.
            #   #   @option data [Float, nil] :unit_price Unit price for the charge. Will be multiplied by quantity to determine the
            #   #     amount and must be specified with quantity. If specified amount cannot be
            #   #     provided.
            #   def initialize(data = {}) = super
          end

          class ScheduleItem < Metronome::BaseModel
            # @!attribute [rw] timestamp
            #   timestamp of the scheduled event
            #   @return [Time]
            required :timestamp, Time

            # @!attribute [rw] amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #   @return [Float]
            optional :amount, Float

            # @!attribute [rw] quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #   @return [Float]
            optional :quantity, Float

            # @!attribute [rw] unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #   @return [Float]
            optional :unit_price, Float

            # @!parse
            #   # Create a new instance of ScheduleItem from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :timestamp timestamp of the scheduled event
            #   #   @option data [Float, nil] :amount Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #     amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #     inferred to be 1.
            #   #   @option data [Float, nil] :quantity Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #     amount and must be specified with unit_price. If specified amount cannot be
            #   #     provided.
            #   #   @option data [Float, nil] :unit_price Unit price for the charge. Will be multiplied by quantity to determine the
            #   #     amount and must be specified with quantity. If specified amount cannot be
            #   #     provided.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Schedule from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String, nil] :credit_type_id Defaults to USD if not passed. Only USD is supported at this time.
          #   #   @option data [Object, nil] :recurring_schedule Enter the unit price and quantity for the charge or instead only send the
          #   #     amount. If amount is sent, the unit price is assumed to be the amount and
          #   #     quantity is inferred to be 1.
          #   #   @option data [Array<Object>, nil] :schedule_items Either provide amount or provide both unit_price and quantity.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Discount from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :product_id
        #   #   @option data [Object] :schedule Must provide either schedule_items or recurring_schedule.
        #   #   @option data [String, nil] :name displayed on invoices
        #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
        #   def initialize(data = {}) = super
      end

      class Override < Metronome::BaseModel
        # @!attribute [rw] starting_at
        #   RFC 3339 timestamp indicating when the override will start applying (inclusive)
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [rw] applicable_product_tags
        #   tags identifying products whose rates are being overridden. Cannot be used in conjunction with override_specifiers.
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] ending_before
        #   RFC 3339 timestamp indicating when the override will stop applying (exclusive)
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute [rw] entitled
        #   @return [Boolean]
        optional :entitled, Metronome::BooleanModel

        # @!attribute [rw] is_commit_specific
        #   Indicates whether the override should only apply to commits. Defaults to `false`. If `true`, you can specify relevant commits in `override_specifiers` by passing `commit_ids`. if you do not specify `commit_ids`, then the override will apply when consuming any prepaid or postpaid commit.
        #   @return [Boolean]
        optional :is_commit_specific, Metronome::BooleanModel

        # @!attribute [rw] multiplier
        #   Required for MULTIPLIER type. Must be >=0.
        #   @return [Float]
        optional :multiplier, Float

        # @!attribute [rw] override_specifiers
        #   Cannot be used in conjunction with product_id or applicable_product_tags. If provided, the override will apply to all products with the specified specifiers.
        #   @return [Array<Metronome::Models::ContractAmendParams::Override::OverrideSpecifier>]
        optional :override_specifiers,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::ContractAmendParams::Override::OverrideSpecifier
                   }
                 )

        # @!attribute [rw] overwrite_rate
        #   Required for OVERWRITE type.
        #   @return [Metronome::Models::ContractAmendParams::Override::OverwriteRate]
        optional :overwrite_rate, -> { Metronome::Models::ContractAmendParams::Override::OverwriteRate }

        # @!attribute [rw] priority
        #   Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides. Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered and multiplier overrides are prioritized by their priority value (lowest first). Must be > 0.
        #   @return [Float]
        optional :priority, Float

        # @!attribute [rw] product_id
        #   ID of the product whose rate is being overridden. Cannot be used in conjunction with override_specifiers.
        #   @return [String]
        optional :product_id, String

        # @!attribute [rw] target
        #   Indicates whether the override applies to commit rates or list rates. Can only be used for overrides that have `is_commit_specific` set to `true`. Defaults to `"LIST_RATE"`.
        #   @return [Symbol, Metronome::Models::ContractAmendParams::Override::Target]
        optional :target, enum: -> { Metronome::Models::ContractAmendParams::Override::Target }

        # @!attribute [rw] tiers
        #   Required for TIERED type. Must have at least one tier.
        #   @return [Array<Metronome::Models::ContractAmendParams::Override::Tier>]
        optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::ContractAmendParams::Override::Tier })

        # @!attribute [rw] type
        #   Overwrites are prioritized over multipliers and tiered overrides.
        #   @return [Symbol, Metronome::Models::ContractAmendParams::Override::Type]
        optional :type, enum: -> { Metronome::Models::ContractAmendParams::Override::Type }

        class OverrideSpecifier < Metronome::BaseModel
          # @!attribute [rw] commit_ids
          #   Can only be used for commit specific overrides. Must be used in conjunction with one of product_id, product_tags, pricing_group_values, or presentation_group_values. If provided, the override will only apply to the specified commits. If not provided, the override will apply to all commits.
          #   @return [Array<String>]
          optional :commit_ids, Metronome::ArrayOf.new(String)

          # @!attribute [rw] presentation_group_values
          #   A map of group names to values. The override will only apply to line items with the specified presentation group values. Can only be used for multiplier overrides.
          #   @return [Hash]
          optional :presentation_group_values, Hash

          # @!attribute [rw] pricing_group_values
          #   A map of pricing group names to values. The override will only apply to products with the specified pricing group values.
          #   @return [Hash]
          optional :pricing_group_values, Hash

          # @!attribute [rw] product_id
          #   If provided, the override will only apply to the product with the specified ID.
          #   @return [String]
          optional :product_id, String

          # @!attribute [rw] product_tags
          #   If provided, the override will only apply to products with all the specified tags.
          #   @return [Array<String>]
          optional :product_tags, Metronome::ArrayOf.new(String)

          # @!parse
          #   # Create a new instance of OverrideSpecifier from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Array<String>, nil] :commit_ids Can only be used for commit specific overrides. Must be used in conjunction with
          #   #     one of product_id, product_tags, pricing_group_values, or
          #   #     presentation_group_values. If provided, the override will only apply to the
          #   #     specified commits. If not provided, the override will apply to all commits.
          #   #   @option data [Hash, nil] :presentation_group_values A map of group names to values. The override will only apply to line items with
          #   #     the specified presentation group values. Can only be used for multiplier
          #   #     overrides.
          #   #   @option data [Hash, nil] :pricing_group_values A map of pricing group names to values. The override will only apply to products
          #   #     with the specified pricing group values.
          #   #   @option data [String, nil] :product_id If provided, the override will only apply to the product with the specified ID.
          #   #   @option data [Array<String>, nil] :product_tags If provided, the override will only apply to products with all the specified
          #   #     tags.
          #   def initialize(data = {}) = super
        end

        class OverwriteRate < Metronome::BaseModel
          # @!attribute [rw] rate_type
          #   @return [Symbol, Metronome::Models::ContractAmendParams::Override::OverwriteRate::RateType]
          required :rate_type,
                   enum: -> { Metronome::Models::ContractAmendParams::Override::OverwriteRate::RateType }

          # @!attribute [rw] credit_type_id
          #   @return [String]
          optional :credit_type_id, String

          # @!attribute [rw] custom_rate
          #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
          #   @return [Hash]
          optional :custom_rate, Hash

          # @!attribute [rw] is_prorated
          #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true.
          #   @return [Boolean]
          optional :is_prorated, Metronome::BooleanModel

          # @!attribute [rw] price
          #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
          #   @return [Float]
          optional :price, Float

          # @!attribute [rw] quantity
          #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
          #   @return [Float]
          optional :quantity, Float

          # @!attribute [rw] tiers
          #   Only set for TIERED rate_type.
          #   @return [Array<Metronome::Models::Tier>]
          optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

          class RateType < Metronome::Enum
            FLAT = :FLAT
            PERCENTAGE = :PERCENTAGE
            SUBSCRIPTION = :SUBSCRIPTION
            TIERED = :TIERED
            CUSTOM = :CUSTOM
          end

          # @!parse
          #   # Create a new instance of OverwriteRate from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :rate_type
          #   #   @option data [String, nil] :credit_type_id
          #   #   @option data [Hash, nil] :custom_rate Only set for CUSTOM rate_type. This field is interpreted by custom rate
          #   #     processors.
          #   #   @option data [Hash, nil] :is_prorated Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
          #   #     set to true.
          #   #   @option data [Float, nil] :price Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
          #   #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
          #   #   @option data [Float, nil] :quantity Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
          #   #   @option data [Array<Object>, nil] :tiers Only set for TIERED rate_type.
          #   def initialize(data = {}) = super
        end

        # Indicates whether the override applies to commit rates or list rates. Can only be used for overrides that have `is_commit_specific` set to `true`. Defaults to `"LIST_RATE"`.
        class Target < Metronome::Enum
          COMMIT_RATE = :COMMIT_RATE
          COMMIT_RATE = :commit_rate
          LIST_RATE = :LIST_RATE
          LIST_RATE = :list_rate
        end

        class Tier < Metronome::BaseModel
          # @!attribute [rw] multiplier
          #   @return [Float]
          required :multiplier, Float

          # @!attribute [rw] size
          #   @return [Float]
          optional :size, Float

          # @!parse
          #   # Create a new instance of Tier from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Float] :multiplier
          #   #   @option data [Float, nil] :size
          #   def initialize(data = {}) = super
        end

        # Overwrites are prioritized over multipliers and tiered overrides.
        class Type < Metronome::Enum
          OVERWRITE = :OVERWRITE
          MULTIPLIER = :MULTIPLIER
          TIERED = :TIERED
        end

        # @!parse
        #   # Create a new instance of Override from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :starting_at RFC 3339 timestamp indicating when the override will start applying (inclusive)
        #   #   @option data [Array<String>, nil] :applicable_product_tags tags identifying products whose rates are being overridden. Cannot be used in
        #   #     conjunction with override_specifiers.
        #   #   @option data [String, nil] :ending_before RFC 3339 timestamp indicating when the override will stop applying (exclusive)
        #   #   @option data [Hash, nil] :entitled
        #   #   @option data [Hash, nil] :is_commit_specific Indicates whether the override should only apply to commits. Defaults to
        #   #     `false`. If `true`, you can specify relevant commits in `override_specifiers` by
        #   #     passing `commit_ids`. if you do not specify `commit_ids`, then the override will
        #   #     apply when consuming any prepaid or postpaid commit.
        #   #   @option data [Float, nil] :multiplier Required for MULTIPLIER type. Must be >=0.
        #   #   @option data [Array<Object>, nil] :override_specifiers Cannot be used in conjunction with product_id or applicable_product_tags. If
        #   #     provided, the override will apply to all products with the specified specifiers.
        #   #   @option data [Object, nil] :overwrite_rate Required for OVERWRITE type.
        #   #   @option data [Float, nil] :priority Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
        #   #     Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered
        #   #     and multiplier overrides are prioritized by their priority value (lowest first).
        #   #     Must be > 0.
        #   #   @option data [String, nil] :product_id ID of the product whose rate is being overridden. Cannot be used in conjunction
        #   #     with override_specifiers.
        #   #   @option data [String, nil] :target Indicates whether the override applies to commit rates or list rates. Can only
        #   #     be used for overrides that have `is_commit_specific` set to `true`. Defaults to
        #   #     `"LIST_RATE"`.
        #   #   @option data [Array<Object>, nil] :tiers Required for TIERED type. Must have at least one tier.
        #   #   @option data [String, nil] :type Overwrites are prioritized over multipliers and tiered overrides.
        #   def initialize(data = {}) = super
      end

      class ProfessionalService < Metronome::BaseModel
        # @!attribute [rw] max_amount
        #   Maximum amount for the term.
        #   @return [Float]
        required :max_amount, Float

        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] quantity
        #   Quantity for the charge. Will be multiplied by unit_price to determine the amount.
        #   @return [Float]
        required :quantity, Float

        # @!attribute [rw] unit_price
        #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified.
        #   @return [Float]
        required :unit_price, Float

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] description
        #   @return [String]
        optional :description, String

        # @!attribute [rw] netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!parse
        #   # Create a new instance of ProfessionalService from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Float] :max_amount Maximum amount for the term.
        #   #   @option data [String] :product_id
        #   #   @option data [Float] :quantity Quantity for the charge. Will be multiplied by unit_price to determine the
        #   #     amount.
        #   #   @option data [Float] :unit_price Unit price for the charge. Will be multiplied by quantity to determine the
        #   #     amount and must be specified.
        #   #   @option data [Hash, nil] :custom_fields
        #   #   @option data [String, nil] :description
        #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
        #   def initialize(data = {}) = super
      end

      class ResellerRoyalty < Metronome::BaseModel
        # @!attribute [rw] reseller_type
        #   @return [Symbol, Metronome::Models::ContractAmendParams::ResellerRoyalty::ResellerType]
        required :reseller_type,
                 enum: -> { Metronome::Models::ContractAmendParams::ResellerRoyalty::ResellerType }

        # @!attribute [rw] applicable_product_ids
        #   Must provide at least one of applicable_product_ids or applicable_product_tags.
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf.new(String)

        # @!attribute [rw] applicable_product_tags
        #   Must provide at least one of applicable_product_ids or applicable_product_tags.
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] aws_options
        #   @return [Metronome::Models::ContractAmendParams::ResellerRoyalty::AwsOptions]
        optional :aws_options, -> { Metronome::Models::ContractAmendParams::ResellerRoyalty::AwsOptions }

        # @!attribute [rw] ending_before
        #   Use null to indicate that the existing end timestamp should be removed.
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute [rw] fraction
        #   @return [Float]
        optional :fraction, Float

        # @!attribute [rw] gcp_options
        #   @return [Metronome::Models::ContractAmendParams::ResellerRoyalty::GcpOptions]
        optional :gcp_options, -> { Metronome::Models::ContractAmendParams::ResellerRoyalty::GcpOptions }

        # @!attribute [rw] netsuite_reseller_id
        #   @return [String]
        optional :netsuite_reseller_id, String

        # @!attribute [rw] reseller_contract_value
        #   @return [Float]
        optional :reseller_contract_value, Float

        # @!attribute [rw] starting_at
        #   @return [Time]
        optional :starting_at, Time

        class ResellerType < Metronome::Enum
          AWS = :AWS
          AWS_PRO_SERVICE = :AWS_PRO_SERVICE
          GCP = :GCP
          GCP_PRO_SERVICE = :GCP_PRO_SERVICE
        end

        class AwsOptions < Metronome::BaseModel
          # @!attribute [rw] aws_account_number
          #   @return [String]
          optional :aws_account_number, String

          # @!attribute [rw] aws_offer_id
          #   @return [String]
          optional :aws_offer_id, String

          # @!attribute [rw] aws_payer_reference_id
          #   @return [String]
          optional :aws_payer_reference_id, String

          # @!parse
          #   # Create a new instance of AwsOptions from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String, nil] :aws_account_number
          #   #   @option data [String, nil] :aws_offer_id
          #   #   @option data [String, nil] :aws_payer_reference_id
          #   def initialize(data = {}) = super
        end

        class GcpOptions < Metronome::BaseModel
          # @!attribute [rw] gcp_account_id
          #   @return [String]
          optional :gcp_account_id, String

          # @!attribute [rw] gcp_offer_id
          #   @return [String]
          optional :gcp_offer_id, String

          # @!parse
          #   # Create a new instance of GcpOptions from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String, nil] :gcp_account_id
          #   #   @option data [String, nil] :gcp_offer_id
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of ResellerRoyalty from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :reseller_type
        #   #   @option data [Array<String>, nil] :applicable_product_ids Must provide at least one of applicable_product_ids or applicable_product_tags.
        #   #   @option data [Array<String>, nil] :applicable_product_tags Must provide at least one of applicable_product_ids or applicable_product_tags.
        #   #   @option data [Object, nil] :aws_options
        #   #   @option data [String, nil] :ending_before Use null to indicate that the existing end timestamp should be removed.
        #   #   @option data [Float, nil] :fraction
        #   #   @option data [Object, nil] :gcp_options
        #   #   @option data [String, nil] :netsuite_reseller_id
        #   #   @option data [Float, nil] :reseller_contract_value
        #   #   @option data [String, nil] :starting_at
        #   def initialize(data = {}) = super
      end

      class ScheduledCharge < Metronome::BaseModel
        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] schedule
        #   Must provide either schedule_items or recurring_schedule.
        #   @return [Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule]
        required :schedule, -> { Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule }

        # @!attribute [rw] name
        #   displayed on invoices
        #   @return [String]
        optional :name, String

        # @!attribute [rw] netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_sales_order_id, String

        class Schedule < Metronome::BaseModel
          # @!attribute [rw] credit_type_id
          #   Defaults to USD if not passed. Only USD is supported at this time.
          #   @return [String]
          optional :credit_type_id, String

          # @!attribute [rw] recurring_schedule
          #   Enter the unit price and quantity for the charge or instead only send the amount. If amount is sent, the unit price is assumed to be the amount and quantity is inferred to be 1.
          #   @return [Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule]
          optional :recurring_schedule,
                   -> { Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule }

          # @!attribute [rw] schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #   @return [Array<Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem>]
          optional :schedule_items,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem
                     }
                   )

          class RecurringSchedule < Metronome::BaseModel
            # @!attribute [rw] amount_distribution
            #   @return [Symbol, Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> {
                       Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::AmountDistribution
                     }

            # @!attribute [rw] ending_before
            #   RFC 3339 timestamp (exclusive).
            #   @return [Time]
            required :ending_before, Time

            # @!attribute [rw] frequency
            #   @return [Symbol, Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> {
                       Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Frequency
                     }

            # @!attribute [rw] starting_at
            #   RFC 3339 timestamp (inclusive).
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [rw] amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #   @return [Float]
            optional :amount, Float

            # @!attribute [rw] quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #   @return [Float]
            optional :quantity, Float

            # @!attribute [rw] unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #   @return [Float]
            optional :unit_price, Float

            class AmountDistribution < Metronome::Enum
              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH
            end

            class Frequency < Metronome::Enum
              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL
            end

            # @!parse
            #   # Create a new instance of RecurringSchedule from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :amount_distribution
            #   #   @option data [String] :ending_before RFC 3339 timestamp (exclusive).
            #   #   @option data [String] :frequency
            #   #   @option data [String] :starting_at RFC 3339 timestamp (inclusive).
            #   #   @option data [Float, nil] :amount Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #     amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #     inferred to be 1.
            #   #   @option data [Float, nil] :quantity Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #     amount and must be specified with unit_price. If specified amount cannot be
            #   #     provided.
            #   #   @option data [Float, nil] :unit_price Unit price for the charge. Will be multiplied by quantity to determine the
            #   #     amount and must be specified with quantity. If specified amount cannot be
            #   #     provided.
            #   def initialize(data = {}) = super
          end

          class ScheduleItem < Metronome::BaseModel
            # @!attribute [rw] timestamp
            #   timestamp of the scheduled event
            #   @return [Time]
            required :timestamp, Time

            # @!attribute [rw] amount
            #   Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1.
            #   @return [Float]
            optional :amount, Float

            # @!attribute [rw] quantity
            #   Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided.
            #   @return [Float]
            optional :quantity, Float

            # @!attribute [rw] unit_price
            #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided.
            #   @return [Float]
            optional :unit_price, Float

            # @!parse
            #   # Create a new instance of ScheduleItem from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :timestamp timestamp of the scheduled event
            #   #   @option data [Float, nil] :amount Amount for the charge. Can be provided instead of unit_price and quantity. If
            #   #     amount is sent, the unit_price is assumed to be the amount and quantity is
            #   #     inferred to be 1.
            #   #   @option data [Float, nil] :quantity Quantity for the charge. Will be multiplied by unit_price to determine the
            #   #     amount and must be specified with unit_price. If specified amount cannot be
            #   #     provided.
            #   #   @option data [Float, nil] :unit_price Unit price for the charge. Will be multiplied by quantity to determine the
            #   #     amount and must be specified with quantity. If specified amount cannot be
            #   #     provided.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Schedule from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String, nil] :credit_type_id Defaults to USD if not passed. Only USD is supported at this time.
          #   #   @option data [Object, nil] :recurring_schedule Enter the unit price and quantity for the charge or instead only send the
          #   #     amount. If amount is sent, the unit price is assumed to be the amount and
          #   #     quantity is inferred to be 1.
          #   #   @option data [Array<Object>, nil] :schedule_items Either provide amount or provide both unit_price and quantity.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of ScheduledCharge from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :product_id
        #   #   @option data [Object] :schedule Must provide either schedule_items or recurring_schedule.
        #   #   @option data [String, nil] :name displayed on invoices
        #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
        #   def initialize(data = {}) = super
      end
    end
  end
end
