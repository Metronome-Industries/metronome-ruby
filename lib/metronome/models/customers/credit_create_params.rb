# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CreditCreateParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        # @!attribute access_schedule
        #   Schedule for distributing the credit to the customer.
        #
        #   @return [Metronome::Models::Customers::CreditCreateParams::AccessSchedule]
        required :access_schedule, -> { Metronome::Models::Customers::CreditCreateParams::AccessSchedule }

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
        #
        #   @return [String]
        required :product_id, String

        # @!attribute [r] applicable_contract_ids
        #   Which contract the credit applies to. If not provided, the credit applies to all
        #     contracts.
        #
        #   @return [Array<String>, nil]
        optional :applicable_contract_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_contract_ids

        # @!attribute [r] applicable_product_ids
        #   Which products the credit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the credit applies to all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_ids

        # @!attribute [r] applicable_product_tags
        #   Which tags the credit applies to. If both applicable_product_ids and
        #     applicable_product_tags are not provided, the credit applies to all products.
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
        #   @return [Symbol, Metronome::Models::Customers::CreditCreateParams::RateType, nil]
        optional :rate_type, enum: -> { Metronome::Models::Customers::CreditCreateParams::RateType }

        # @!parse
        #   # @return [Symbol, Metronome::Models::Customers::CreditCreateParams::RateType]
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
        #   # @param access_schedule [Metronome::Models::Customers::CreditCreateParams::AccessSchedule]
        #   # @param customer_id [String]
        #   # @param priority [Float]
        #   # @param product_id [String]
        #   # @param applicable_contract_ids [Array<String>]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param description [String]
        #   # @param name [String]
        #   # @param netsuite_sales_order_id [String]
        #   # @param rate_type [Symbol, Metronome::Models::Customers::CreditCreateParams::RateType]
        #   # @param salesforce_opportunity_id [String]
        #   # @param uniqueness_key [String]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     access_schedule:,
        #     customer_id:,
        #     priority:,
        #     product_id:,
        #     applicable_contract_ids: nil,
        #     applicable_product_ids: nil,
        #     applicable_product_tags: nil,
        #     custom_fields: nil,
        #     description: nil,
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

        class AccessSchedule < Metronome::BaseModel
          # @!attribute schedule_items
          #
          #   @return [Array<Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   -> { Metronome::ArrayOf[Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem] }

          # @!attribute [r] credit_type_id
          #   Defaults to USD (cents) if not passed
          #
          #   @return [String, nil]
          optional :credit_type_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :credit_type_id

          # @!parse
          #   # Schedule for distributing the credit to the customer.
          #   #
          #   # @param schedule_items [Array<Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem>]
          #   # @param credit_type_id [String]
          #   #
          #   def initialize(schedule_items:, credit_type_id: nil, **) = super

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
