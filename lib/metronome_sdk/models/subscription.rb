# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Subscription < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute collection_schedule
      #
      #   @return [Symbol, MetronomeSDK::Models::Subscription::CollectionSchedule]
      required :collection_schedule, enum: -> { MetronomeSDK::Subscription::CollectionSchedule }

      # @!attribute proration
      #
      #   @return [MetronomeSDK::Models::Subscription::Proration]
      required :proration, -> { MetronomeSDK::Subscription::Proration }

      # @!attribute quantity_management_mode
      #   Determines how the subscription's quantity is controlled. Defaults to
      #   QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
      #   directly on the subscription. `initial_quantity` must be provided with this
      #   option. Compatible with recurring commits/credits that use POOLED allocation.
      #
      #   @return [Symbol, MetronomeSDK::Models::Subscription::QuantityManagementMode]
      required :quantity_management_mode, enum: -> { MetronomeSDK::Subscription::QuantityManagementMode }

      # @!attribute quantity_schedule
      #   List of quantity schedule items for the subscription. Only includes the current
      #   quantity and future quantity changes.
      #
      #   @return [Array<MetronomeSDK::Models::Subscription::QuantitySchedule>]
      required :quantity_schedule,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Subscription::QuantitySchedule] }

      # @!attribute starting_at
      #
      #   @return [Time]
      required :starting_at, Time

      # @!attribute subscription_rate
      #
      #   @return [MetronomeSDK::Models::Subscription::SubscriptionRate]
      required :subscription_rate, -> { MetronomeSDK::Subscription::SubscriptionRate }

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

      # @!attribute ending_before
      #
      #   @return [Time, nil]
      optional :ending_before, Time

      # @!attribute fiat_credit_type_id
      #
      #   @return [String, nil]
      optional :fiat_credit_type_id, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(collection_schedule:, proration:, quantity_management_mode:, quantity_schedule:, starting_at:, subscription_rate:, id: nil, custom_fields: nil, description: nil, ending_before: nil, fiat_credit_type_id: nil, name: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::Subscription} for more details.
      #
      #   @param collection_schedule [Symbol, MetronomeSDK::Models::Subscription::CollectionSchedule]
      #
      #   @param proration [MetronomeSDK::Models::Subscription::Proration]
      #
      #   @param quantity_management_mode [Symbol, MetronomeSDK::Models::Subscription::QuantityManagementMode] Determines how the subscription's quantity is controlled. Defaults to QUANTITY_O
      #
      #   @param quantity_schedule [Array<MetronomeSDK::Models::Subscription::QuantitySchedule>] List of quantity schedule items for the subscription. Only includes the current
      #
      #   @param starting_at [Time]
      #
      #   @param subscription_rate [MetronomeSDK::Models::Subscription::SubscriptionRate]
      #
      #   @param id [String]
      #
      #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      #
      #   @param description [String]
      #
      #   @param ending_before [Time]
      #
      #   @param fiat_credit_type_id [String]
      #
      #   @param name [String]

      # @see MetronomeSDK::Models::Subscription#collection_schedule
      module CollectionSchedule
        extend MetronomeSDK::Internal::Type::Enum

        ADVANCE = :ADVANCE
        ARREARS = :ARREARS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Models::Subscription#proration
      class Proration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute invoice_behavior
        #
        #   @return [Symbol, MetronomeSDK::Models::Subscription::Proration::InvoiceBehavior]
        required :invoice_behavior, enum: -> { MetronomeSDK::Subscription::Proration::InvoiceBehavior }

        # @!attribute is_prorated
        #
        #   @return [Boolean]
        required :is_prorated, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(invoice_behavior:, is_prorated:)
        #   @param invoice_behavior [Symbol, MetronomeSDK::Models::Subscription::Proration::InvoiceBehavior]
        #   @param is_prorated [Boolean]

        # @see MetronomeSDK::Models::Subscription::Proration#invoice_behavior
        module InvoiceBehavior
          extend MetronomeSDK::Internal::Type::Enum

          BILL_IMMEDIATELY = :BILL_IMMEDIATELY
          BILL_ON_NEXT_COLLECTION_DATE = :BILL_ON_NEXT_COLLECTION_DATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Determines how the subscription's quantity is controlled. Defaults to
      # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
      # directly on the subscription. `initial_quantity` must be provided with this
      # option. Compatible with recurring commits/credits that use POOLED allocation.
      #
      # @see MetronomeSDK::Models::Subscription#quantity_management_mode
      module QuantityManagementMode
        extend MetronomeSDK::Internal::Type::Enum

        SEAT_BASED = :SEAT_BASED
        QUANTITY_ONLY = :QUANTITY_ONLY

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class QuantitySchedule < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute quantity
        #
        #   @return [Float]
        required :quantity, Float

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute ending_before
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!method initialize(quantity:, starting_at:, ending_before: nil)
        #   @param quantity [Float]
        #   @param starting_at [Time]
        #   @param ending_before [Time]
      end

      # @see MetronomeSDK::Models::Subscription#subscription_rate
      class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute billing_frequency
        #
        #   @return [Symbol, MetronomeSDK::Models::Subscription::SubscriptionRate::BillingFrequency]
        required :billing_frequency, enum: -> { MetronomeSDK::Subscription::SubscriptionRate::BillingFrequency }

        # @!attribute product
        #
        #   @return [MetronomeSDK::Models::Subscription::SubscriptionRate::Product]
        required :product, -> { MetronomeSDK::Subscription::SubscriptionRate::Product }

        # @!method initialize(billing_frequency:, product:)
        #   @param billing_frequency [Symbol, MetronomeSDK::Models::Subscription::SubscriptionRate::BillingFrequency]
        #   @param product [MetronomeSDK::Models::Subscription::SubscriptionRate::Product]

        # @see MetronomeSDK::Models::Subscription::SubscriptionRate#billing_frequency
        module BillingFrequency
          extend MetronomeSDK::Internal::Type::Enum

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
          WEEKLY = :WEEKLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see MetronomeSDK::Models::Subscription::SubscriptionRate#product
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
    end
  end
end
