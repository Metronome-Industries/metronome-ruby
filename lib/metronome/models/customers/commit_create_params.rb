# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CommitCreateParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        # @!attribute access_schedule
        #   Schedule for distributing the commit to the customer. For "POSTPAID" commits
        #     only one schedule item is allowed and amount must match invoice_schedule total.
        #
        #   @return [Metronome::Models::Customers::CommitCreateParams::AccessSchedule]
        required :access_schedule, -> { Metronome::Models::Customers::CommitCreateParams::AccessSchedule }

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute priority
        #   If multiple credits or commits are applicable, the one with the lower priority
        #     will apply first.
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product_id
        #   ID of the fixed product associated with the commit. This is required because
        #     products are used to invoice the commit amount.
        #
        #   @return [String]
        required :product_id, String

        # @!attribute type
        #
        #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::Type]
        required :type, enum: -> { Metronome::Models::Customers::CommitCreateParams::Type }

        # @!attribute [r] applicable_contract_ids
        #   Which contract the commit applies to. If not provided, the commit applies to all
        #     contracts.
        #
        #   @return [Array<String>, nil]
        optional :applicable_contract_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_contract_ids

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

        # @!attribute [r] invoice_contract_id
        #   The contract that this commit will be billed on. This is required for "POSTPAID"
        #     commits and for "PREPAID" commits unless there is no invoice schedule above
        #     (i.e., the commit is 'free').
        #
        #   @return [String, nil]
        optional :invoice_contract_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :invoice_contract_id

        # @!attribute [r] invoice_schedule
        #   Required for "POSTPAID" commits: the true up invoice will be generated at this
        #     time and only one schedule item is allowed; the total must match
        #     accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
        #     will be a "complimentary" commit with no invoice.
        #
        #   @return [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule, nil]
        optional :invoice_schedule, -> { Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule }

        # @!parse
        #   # @return [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule]
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

        # @!attribute [r] rate_type
        #
        #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::RateType, nil]
        optional :rate_type, enum: -> { Metronome::Models::Customers::CommitCreateParams::RateType }

        # @!parse
        #   # @return [Symbol, Metronome::Models::Customers::CommitCreateParams::RateType]
        #   attr_writer :rate_type

        # @!attribute [r] salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String, nil]
        optional :salesforce_opportunity_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :salesforce_opportunity_id

        # @!attribute [r] uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a commit or credit
        #     is made with a uniqueness key that was previously used to create a commit or
        #     credit, a new record will not be created and the request will fail with a 409
        #     error.
        #
        #   @return [String, nil]
        optional :uniqueness_key, String

        # @!parse
        #   # @return [String]
        #   attr_writer :uniqueness_key

        # @!parse
        #   # @param access_schedule [Metronome::Models::Customers::CommitCreateParams::AccessSchedule]
        #   # @param customer_id [String]
        #   # @param priority [Float]
        #   # @param product_id [String]
        #   # @param type [Symbol, Metronome::Models::Customers::CommitCreateParams::Type]
        #   # @param applicable_contract_ids [Array<String>]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param description [String]
        #   # @param invoice_contract_id [String]
        #   # @param invoice_schedule [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
        #   # @param rate_type [Symbol, Metronome::Models::Customers::CommitCreateParams::RateType]
        #   # @param salesforce_opportunity_id [String]
        #   # @param uniqueness_key [String]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     access_schedule:,
        #     customer_id:,
        #     priority:,
        #     product_id:,
        #     type:,
        #     applicable_contract_ids: nil,
        #     applicable_product_ids: nil,
        #     applicable_product_tags: nil,
        #     custom_fields: nil,
        #     description: nil,
        #     invoice_contract_id: nil,
        #     invoice_schedule: nil,
        #     name: nil,
        #     netsuite_sales_order_id: nil,
        #     rate_type: nil,
        #     salesforce_opportunity_id: nil,
        #     uniqueness_key: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # access_schedule => {
        #   schedule_items: -> { Metronome::ArrayOf[Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem] === _1 },
        #   credit_type_id: String
        # }
        # ```
        class AccessSchedule < Metronome::BaseModel
          # @!attribute schedule_items
          #
          #   @return [Array<Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   -> { Metronome::ArrayOf[Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem] }

          # @!attribute [r] credit_type_id
          #   Defaults to USD (cents) if not passed
          #
          #   @return [String, nil]
          optional :credit_type_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :credit_type_id

          # @!parse
          #   # Schedule for distributing the commit to the customer. For "POSTPAID" commits
          #   #   only one schedule item is allowed and amount must match invoice_schedule total.
          #   #
          #   # @param schedule_items [Array<Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem>]
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
        # invoice_schedule => {
        #   credit_type_id: String,
        #   recurring_schedule: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule,
        #   schedule_items: -> { Metronome::ArrayOf[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem] === _1 }
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
          #   @return [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule, nil]
          optional :recurring_schedule,
                   -> { Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule }

          # @!parse
          #   # @return [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule]
          #   attr_writer :recurring_schedule

          # @!attribute [r] schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #
          #   @return [Array<Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem>, nil]
          optional :schedule_items,
                   -> { Metronome::ArrayOf[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem] }

          # @!parse
          #   # @return [Array<Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem>]
          #   attr_writer :schedule_items

          # @!parse
          #   # Required for "POSTPAID" commits: the true up invoice will be generated at this
          #   #   time and only one schedule item is allowed; the total must match
          #   #   accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
          #   #   will be a "complimentary" commit with no invoice.
          #   #
          #   # @param credit_type_id [String]
          #   # @param recurring_schedule [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule]
          #   # @param schedule_items [Array<Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem>]
          #   #
          #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          # ```ruby
          # recurring_schedule => {
          #   amount_distribution: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution,
          #   ending_before: Time,
          #   frequency: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency,
          #   starting_at: Time,
          #   amount: Float,
          #   **_
          # }
          # ```
          class RecurringSchedule < Metronome::BaseModel
            # @!attribute amount_distribution
            #
            #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> { Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution }

            # @!attribute ending_before
            #   RFC 3339 timestamp (exclusive).
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute frequency
            #
            #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> { Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency }

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
            #   # @param amount_distribution [Symbol, Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution]
            #   # @param ending_before [Time]
            #   # @param frequency [Symbol, Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency]
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
    end
  end
end
