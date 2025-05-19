# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Credits#create
        class CreditCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute access_schedule
          #   Schedule for distributing the credit to the customer.
          #
          #   @return [MetronomeSDK::V1::Customers::CreditCreateParams::AccessSchedule]
          required :access_schedule, -> { MetronomeSDK::V1::Customers::CreditCreateParams::AccessSchedule }

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
          #
          #   @return [String]
          required :product_id, String

          # @!attribute applicable_contract_ids
          #   Which contract the credit applies to. If not provided, the credit applies to all
          #   contracts.
          #
          #   @return [Array<String>, nil]
          optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

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

          # @!attribute netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::V1::Customers::CreditCreateParams::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V1::Customers::CreditCreateParams::RateType }

          # @!attribute salesforce_opportunity_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :salesforce_opportunity_id, String

          # @!attribute specifiers
          #   List of filters that determine what kind of customer usage draws down a commit
          #   or credit. A customer's usage needs to meet the condition of at least one of the
          #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
          #   be used together with `applicable_product_ids` or `applicable_product_tags`.
          #
          #   @return [Array<MetronomeSDK::V1::Customers::CreditCreateParams::Specifier>, nil]
          optional :specifiers,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::CreditCreateParams::Specifier]
                   }

          # @!attribute uniqueness_key
          #   Prevents the creation of duplicates. If a request to create a commit or credit
          #   is made with a uniqueness key that was previously used to create a commit or
          #   credit, a new record will not be created and the request will fail with a 409
          #   error.
          #
          #   @return [String, nil]
          optional :uniqueness_key, String

          # @!method initialize(access_schedule:, customer_id:, priority:, product_id:, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, name: nil, netsuite_sales_order_id: nil, rate_type: nil, salesforce_opportunity_id: nil, specifiers: nil, uniqueness_key: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::CreditCreateParams} for more details.
          #
          #   @param access_schedule [MetronomeSDK::V1::Customers::CreditCreateParams::AccessSchedule] Schedule for distributing the credit to the customer.
          #
          #   @param customer_id [String]
          #
          #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
          #
          #   @param product_id [String]
          #
          #   @param applicable_contract_ids [Array<String>] Which contract the credit applies to. If not provided, the credit applies to all
          #
          #   @param applicable_product_ids [Array<String>] Which products the credit applies to. If both applicable_product_ids and applica
          #
          #   @param applicable_product_tags [Array<String>] Which tags the credit applies to. If both applicable*product_ids and applicable*
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param rate_type [Symbol, MetronomeSDK::V1::Customers::CreditCreateParams::RateType]
          #
          #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param specifiers [Array<MetronomeSDK::V1::Customers::CreditCreateParams::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::V1::Customers::CreditCreateParams::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::CreditCreateParams::AccessSchedule::ScheduleItem]
                     }

            # @!attribute credit_type_id
            #   Defaults to USD (cents) if not passed
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!method initialize(schedule_items:, credit_type_id: nil)
            #   Schedule for distributing the credit to the customer.
            #
            #   @param schedule_items [Array<MetronomeSDK::V1::Customers::CreditCreateParams::AccessSchedule::ScheduleItem>]
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

          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Specifier < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute presentation_group_values
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute pricing_group_values
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute product_id
            #   If provided, the specifier will only apply to the product with the specified ID.
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!attribute product_tags
            #   If provided, the specifier will only apply to products with all the specified
            #   tags.
            #
            #   @return [Array<String>, nil]
            optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::V1::Customers::CreditCreateParams::Specifier} for more details.
            #
            #   @param presentation_group_values [Hash{Symbol=>String}]
            #
            #   @param pricing_group_values [Hash{Symbol=>String}]
            #
            #   @param product_id [String] If provided, the specifier will only apply to the product with the specified ID.
            #
            #   @param product_tags [Array<String>] If provided, the specifier will only apply to products with all the specified ta
          end
        end
      end
    end
  end
end
