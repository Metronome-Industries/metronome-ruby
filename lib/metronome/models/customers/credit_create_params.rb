# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CreditCreateParams < Metronome::BaseModel
        # @!attribute access_schedule
        #   Schedule for distributing the credit to the customer.
        #   @return [Metronome::Models::Customers::CreditCreateParams::AccessSchedule]
        required :access_schedule, -> { Metronome::Models::Customers::CreditCreateParams::AccessSchedule }

        # @!attribute customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute priority
        #   If multiple credits or commits are applicable, the one with the lower priority will apply first.
        #   @return [Float]
        required :priority, Float

        # @!attribute product_id
        #   @return [String]
        required :product_id, String

        # @!attribute applicable_contract_ids
        #   Which contract the credit applies to. If not provided, the credit applies to all contracts.
        #   @return [Array<String>]
        optional :applicable_contract_ids, Metronome::ArrayOf.new(String)

        # @!attribute applicable_product_ids
        #   Which products the credit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the credit applies to all products.
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf.new(String)

        # @!attribute applicable_product_tags
        #   Which tags the credit applies to. If both applicable_product_ids and applicable_product_tags are not provided, the credit applies to all products.
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf.new(String)

        # @!attribute custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute description
        #   Used only in UI/API. It is not exposed to end customers.
        #   @return [String]
        optional :description, String

        # @!attribute name
        #   displayed on invoices
        #   @return [String]
        optional :name, String

        # @!attribute netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!attribute rate_type
        #   @return [Symbol, Metronome::Models::Customers::CreditCreateParams::RateType]
        optional :rate_type, enum: -> { Metronome::Models::Customers::CreditCreateParams::RateType }

        # @!attribute salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :salesforce_opportunity_id, String

        class AccessSchedule < Metronome::BaseModel
          # @!attribute schedule_items
          #   @return [Array<Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   Metronome::ArrayOf.new(
                     -> {
                       Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem
                     }
                   )

          # @!attribute credit_type_id
          #   Defaults to USD (cents) if not passed
          #   @return [String]
          optional :credit_type_id, String

          class ScheduleItem < Metronome::BaseModel
            # @!attribute amount
            #   @return [Float]
            required :amount, Float

            # @!attribute ending_before
            #   RFC 3339 timestamp (exclusive)
            #   @return [Time]
            required :ending_before, Time

            # @!attribute starting_at
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
          #   #   @option data [String, nil] :credit_type_id Defaults to USD (cents) if not passed
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
