# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Commits#create
        class CommitCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute access_schedule
          #   Schedule for distributing the commit to the customer. For "POSTPAID" commits
          #   only one schedule item is allowed and amount must match invoice_schedule total.
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CommitCreateParams::AccessSchedule]
          required :access_schedule, -> { MetronomeSDK::Models::V1::Customers::CommitCreateParams::AccessSchedule }

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute priority
          #   If multiple credits or commits are applicable, the one with the lower priority
          #   will apply first.
          #
          #   @return [Float]
          required :priority, Float

          # @!attribute product_id
          #   ID of the fixed product associated with the commit. This is required because
          #   products are used to invoice the commit amount.
          #
          #   @return [String]
          required :product_id, String

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitCreateParams::Type]
          required :type, enum: -> { MetronomeSDK::Models::V1::Customers::CommitCreateParams::Type }

          # @!attribute applicable_contract_ids
          #   Which contract the commit applies to. If not provided, the commit applies to all
          #   contracts.
          #
          #   @return [Array<String>, nil]
          optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_ids
          #   Which products the commit applies to. If both applicable_product_ids and
          #   applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #   Which tags the commit applies to. If both applicable_product_ids and
          #   applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute invoice_contract_id
          #   The contract that this commit will be billed on. This is required for "POSTPAID"
          #   commits and for "PREPAID" commits unless there is no invoice schedule above
          #   (i.e., the commit is 'free').
          #
          #   @return [String, nil]
          optional :invoice_contract_id, String

          # @!attribute invoice_schedule
          #   Required for "POSTPAID" commits: the true up invoice will be generated at this
          #   time and only one schedule item is allowed; the total must match
          #   accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
          #   will be a "complimentary" commit with no invoice.
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule, nil]
          optional :invoice_schedule,
                   -> { MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule }

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

          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitCreateParams::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V1::Customers::CommitCreateParams::RateType }

          # @!attribute salesforce_opportunity_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :salesforce_opportunity_id, String

          # @!attribute uniqueness_key
          #   Prevents the creation of duplicates. If a request to create a commit or credit
          #   is made with a uniqueness key that was previously used to create a commit or
          #   credit, a new record will not be created and the request will fail with a 409
          #   error.
          #
          #   @return [String, nil]
          optional :uniqueness_key, String

          # @!method initialize(access_schedule:, customer_id:, priority:, product_id:, type:, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, invoice_contract_id: nil, invoice_schedule: nil, name: nil, netsuite_sales_order_id: nil, rate_type: nil, salesforce_opportunity_id: nil, uniqueness_key: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::CommitCreateParams} for more details.
          #
          #   @param access_schedule [MetronomeSDK::Models::V1::Customers::CommitCreateParams::AccessSchedule] Schedule for distributing the commit to the customer. For "POSTPAID" commits onl
          #   ...
          #
          #   @param customer_id [String]
          #
          #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
          #   ...
          #
          #   @param product_id [String] ID of the fixed product associated with the commit. This is required because pro
          #   ...
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitCreateParams::Type]
          #
          #   @param applicable_contract_ids [Array<String>] Which contract the commit applies to. If not provided, the commit applies to all
          #   ...
          #
          #   @param applicable_product_ids [Array<String>] Which products the commit applies to. If both applicable_product_ids and applica
          #   ...
          #
          #   @param applicable_product_tags [Array<String>] Which tags the commit applies to. If both applicable*product_ids and applicable*
          #   ...
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          #   @param invoice_contract_id [String] The contract that this commit will be billed on. This is required for "POSTPAID"
          #   ...
          #
          #   @param invoice_schedule [MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule] Required for "POSTPAID" commits: the true up invoice will be generated at this t
          #   ...
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::Customers::CommitCreateParams::RateType]
          #
          #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i
          #   ...
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::CommitCreateParams::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::CommitCreateParams::AccessSchedule::ScheduleItem] }

            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!method initialize(schedule_items:, credit_type_id: nil)
            #   Schedule for distributing the commit to the customer. For "POSTPAID" commits
            #   only one schedule item is allowed and amount must match invoice_schedule total.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::Customers::CommitCreateParams::AccessSchedule::ScheduleItem>]
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

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID = :PREPAID
            POSTPAID = :POSTPAID

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule }

            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem] }

            # @!method initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule} for
            #   more details.
            #
            #   Required for "POSTPAID" commits: the true up invoice will be generated at this
            #   time and only one schedule item is allowed; the total must match
            #   accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
            #   will be a "complimentary" commit with no invoice.
            #
            #   @param credit_type_id [String] Defaults to USD (cents) if not passed.
            #
            #   @param recurring_schedule [MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
            #   ...
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

            # @see MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule#recurring_schedule
            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency }

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
              #   {MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule}
              #   for more details.
              #
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @param amount_distribution [Symbol, MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Frequency]
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #   ...
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #   ...
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #   ...

              # @see MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule#amount_distribution
              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule#frequency
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
              #   {MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem}
              #   for more details.
              #
              #   @param timestamp [Time] timestamp of the scheduled event
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #   ...
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #   ...
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #   ...
            end
          end

          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
