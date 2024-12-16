# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CommitCreateParams < Metronome::BaseModel
        # @!attribute access_schedule
        #   Schedule for distributing the commit to the customer. For "POSTPAID" commits only one schedule item is allowed and amount must match invoice_schedule total.
        #
        #   @return [Metronome::Models::Customers::CommitCreateParams::AccessSchedule]
        required :access_schedule, -> { Metronome::Models::Customers::CommitCreateParams::AccessSchedule }

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute priority
        #   If multiple credits or commits are applicable, the one with the lower priority will apply first.
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute type
        #
        #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::Type]
        required :type, enum: -> { Metronome::Models::Customers::CommitCreateParams::Type }

        # @!attribute applicable_contract_ids
        #   Which contract the commit applies to. If not provided, the commit applies to all contracts.
        #
        #   @return [Array<String>]
        optional :applicable_contract_ids, Metronome::ArrayOf.new(String)

        # @!attribute applicable_product_ids
        #   Which products the commit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf.new(String)

        # @!attribute applicable_product_tags
        #   Which tags the commit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the commit applies to all products.
        #
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf.new(String)

        # @!attribute custom_fields
        #
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute description
        #   Used only in UI/API. It is not exposed to end customers.
        #
        #   @return [String]
        optional :description, String

        # @!attribute invoice_contract_id
        #   The contract that this commit will be billed on. This is required for "POSTPAID" commits and for "PREPAID" commits unless there is no invoice schedule above (i.e., the commit is 'free').
        #
        #   @return [String]
        optional :invoice_contract_id, String

        # @!attribute invoice_schedule
        #   Required for "POSTPAID" commits: the true up invoice will be generated at this time and only one schedule item is allowed; the total must match accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this will be a "complimentary" commit with no invoice.
        #
        #   @return [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule]
        optional :invoice_schedule, -> { Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule }

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

        # @!attribute rate_type
        #
        #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::RateType]
        optional :rate_type, enum: -> { Metronome::Models::Customers::CommitCreateParams::RateType }

        # @!attribute salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [String]
        optional :salesforce_opportunity_id, String

        # @!parse
        #   # @param access_schedule [Metronome::Models::Customers::CommitCreateParams::AccessSchedule] Schedule for distributing the commit to the customer. For "POSTPAID" commits
        #   #   only one schedule item is allowed and amount must match invoice_schedule total.
        #   #
        #   # @param customer_id [String]
        #   #
        #   # @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority
        #   #   will apply first.
        #   #
        #   # @param product_id [String]
        #   #
        #   # @param type [String]
        #   #
        #   # @param applicable_contract_ids [Array<String>, nil] Which contract the commit applies to. If not provided, the commit applies to all
        #   #   contracts.
        #   #
        #   # @param applicable_product_ids [Array<String>, nil] Which products the commit applies to. If both applicable_product_ids and
        #   #   applicable_product_tags are not provided, the commit applies to all products.
        #   #
        #   # @param applicable_product_tags [Array<String>, nil] Which tags the commit applies to. If both applicable_product_ids and
        #   #   applicable_product_tags are not provided, the commit applies to all products.
        #   #
        #   # @param custom_fields [Hash, nil]
        #   #
        #   # @param description [String, nil] Used only in UI/API. It is not exposed to end customers.
        #   #
        #   # @param invoice_contract_id [String, nil] The contract that this commit will be billed on. This is required for "POSTPAID"
        #   #   commits and for "PREPAID" commits unless there is no invoice schedule above
        #   #   (i.e., the commit is 'free').
        #   #
        #   # @param invoice_schedule [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule, nil] Required for "POSTPAID" commits: the true up invoice will be generated at this
        #   #   time and only one schedule item is allowed; the total must match
        #   #   accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
        #   #   will be a "complimentary" commit with no invoice.
        #   #
        #   # @param name [String, nil] displayed on invoices
        #   #
        #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
        #   #
        #   # @param rate_type [String, nil]
        #   #
        #   # @param salesforce_opportunity_id [String, nil] This field's availability is dependent on your client's configuration.
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
        #     salesforce_opportunity_id: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class AccessSchedule < Metronome::BaseModel
          # @!attribute schedule_items
          #
          #   @return [Array<Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem
                     }
                   )

          # @!attribute credit_type_id
          #   Defaults to USD (cents) if not passed
          #
          #   @return [String]
          optional :credit_type_id, String

          # @!parse
          #   # Schedule for distributing the commit to the customer. For "POSTPAID" commits
          #   #   only one schedule item is allowed and amount must match invoice_schedule total.
          #   #
          #   # @param schedule_items [Array<Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem>]
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

        class Type < Metronome::Enum
          PREPAID = :PREPAID
          POSTPAID = :POSTPAID
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
          #   @return [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule]
          optional :recurring_schedule,
                   -> { Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule }

          # @!attribute schedule_items
          #   Either provide amount or provide both unit_price and quantity.
          #
          #   @return [Array<Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem>]
          optional :schedule_items,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem
                     }
                   )

          # @!parse
          #   # Required for "POSTPAID" commits: the true up invoice will be generated at this
          #   #   time and only one schedule item is allowed; the total must match
          #   #   accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
          #   #   will be a "complimentary" commit with no invoice.
          #   #
          #   # @param credit_type_id [String, nil] Defaults to USD (cents) if not passed.
          #   #
          #   # @param recurring_schedule [Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule, nil] Enter the unit price and quantity for the charge or instead only send the
          #   #   amount. If amount is sent, the unit price is assumed to be the amount and
          #   #   quantity is inferred to be 1.
          #   #
          #   # @param schedule_items [Array<Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem>, nil] Either provide amount or provide both unit_price and quantity.
          #   #
          #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class RecurringSchedule < Metronome::BaseModel
            # @!attribute amount_distribution
            #
            #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution]
            required :amount_distribution,
                     enum: -> {
                       Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution
                     }

            # @!attribute ending_before
            #   RFC 3339 timestamp (exclusive).
            #
            #   @return [Time]
            required :ending_before, Time

            # @!attribute frequency
            #
            #   @return [Symbol, Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency]
            required :frequency,
                     enum: -> {
                       Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency
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
