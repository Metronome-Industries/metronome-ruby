# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CommitCreateParams < Metronome::BaseModel
        # @!attribute [rw] access_schedule
        #   Schedule for distributing the commit to the customer. For "POSTPAID" commits only one schedule item is allowed and amount must match invoice_schedule total.
        #   @return [Metronome::Models::Customers::CommitCreateParams::AccessSchedule]
        required :access_schedule, -> { Metronome::Models::Customers::CommitCreateParams::AccessSchedule }

        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] priority
        #   If multiple credits or commits are applicable, the one with the lower priority will apply first.
        #   @return [Float]
        required :priority, Float

        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] type
        #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::Type]
        required :type, enum: -> { Metronome::Models::Customers::CommitCreateParams::Type }

        # @!attribute [rw] applicable_contract_ids
        #   Which contract the commit applies to. If not provided, the commit applies to all contracts.
        #   @return [Array<String>]
        optional :applicable_contract_ids, Metronome::ArrayOf.new(String)

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

        # @!attribute [rw] invoice_contract_id
        #   The contract that this commit will be billed on. This is required for "POSTPAID" commits and for "PREPAID" commits unless there is no invoice schedule above (i.e., the commit is 'free').
        #   @return [String]
        optional :invoice_contract_id, String

        # @!attribute [rw] invoice_schedule
        #   Required for "POSTPAID" commits: the true up invoice will be generated at this time and only one schedule item is allowed; the total must match accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this will be a "complimentary" commit with no invoice.
        #   @return [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule]
        optional :invoice_schedule, -> { Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule }

        # @!attribute [rw] name
        #   displayed on invoices
        #   @return [String]
        optional :name, String

        # @!attribute [rw] netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!attribute [rw] rate_type
        #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::RateType]
        optional :rate_type, enum: -> { Metronome::Models::Customers::CommitCreateParams::RateType }

        # @!attribute [rw] salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :salesforce_opportunity_id, String

        class AccessSchedule < Metronome::BaseModel
          # @!attribute [rw] schedule_items
          #   @return [Array<Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem
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

        class Type < Metronome::Enum
          PREPAID = :PREPAID
          POSTPAID = :POSTPAID
        end

        class InvoiceSchedule < Metronome::BaseModel
          # @!attribute [rw] credit_type_id
          #   Defaults to USD if not passed. Only USD is supported at this time.
          #   @return [String]
          optional :credit_type_id, String

          # @!attribute [rw] recurring_schedule
          #   Enter the unit price and quantity for the charge or instead only send the amount. If amount is sent, the unit price is assumed to be the amount and quantity is inferred to be 1.
          #   @return [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule]
          optional :recurring_schedule,
                   -> { Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule }

          # @!attribute [rw] schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #   @return [Array<Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem>]
          optional :schedule_items,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem
                     }
                   )

          class RecurringSchedule < Metronome::BaseModel
            # @!attribute [rw] amount_distribution
            #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> {
                       Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution
                     }

            # @!attribute [rw] ending_before
            #   RFC 3339 timestamp (exclusive).
            #   @return [Time]
            required :ending_before, Time

            # @!attribute [rw] frequency
            #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> {
                       Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency
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
      end
    end
  end
end
