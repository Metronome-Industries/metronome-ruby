# frozen_string_literal: true

module Metronome
  module Models
    class CustomerCreateParams < Metronome::BaseModel
      # @!attribute name
      #   This will be truncated to 160 characters if the provided name is longer.
      #
      #   @return [String]
      required :name, String

      # @!attribute [r] billing_config
      #
      #   @return [Metronome::Models::CustomerCreateParams::BillingConfig, nil]
      optional :billing_config, -> { Metronome::Models::CustomerCreateParams::BillingConfig }

      # @!parse
      #   # @return [Metronome::Models::CustomerCreateParams::BillingConfig]
      #   attr_writer :billing_config

      # @!attribute [r] custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, Metronome::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :custom_fields

      # @!attribute [r] customer_billing_provider_configurations
      #
      #   @return [Array<Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration>]
      optional :customer_billing_provider_configurations,
               -> {
                 Metronome::ArrayOf[Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration]
               }

      # @!parse
      #   # @return [Array<Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration>]
      #   attr_writer :customer_billing_provider_configurations

      # @!attribute [r] external_id
      #   (deprecated, use ingest_aliases instead) an alias that can be used to refer to this customer in usage events
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_id

      # @!attribute [r] ingest_aliases
      #   Aliases that can be used to refer to this customer in usage events
      #
      #   @return [Array<String>]
      optional :ingest_aliases, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :ingest_aliases

      # @!parse
      #   # @param name [String] This will be truncated to 160 characters if the provided name is longer.
      #   #
      #   # @param billing_config [Metronome::Models::CustomerCreateParams::BillingConfig]
      #   #
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   #
      #   # @param customer_billing_provider_configurations [Array<Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration>]
      #   #
      #   # @param external_id [String] (deprecated, use ingest_aliases instead) an alias that can be used to refer to
      #   #   this customer in usage events
      #   #
      #   # @param ingest_aliases [Array<String>] Aliases that can be used to refer to this customer in usage events
      #   #
      #   def initialize(
      #     name:,
      #     billing_config: nil,
      #     custom_fields: nil,
      #     customer_billing_provider_configurations: nil,
      #     external_id: nil,
      #     ingest_aliases: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # billing_config => {
      #   billing_provider_customer_id: String,
      #   billing_provider_type: enum: Metronome::Models::CustomerCreateParams::BillingConfig::BillingProviderType,
      #   aws_is_subscription_product: Metronome::BooleanModel,
      #   aws_product_code: String,
      #   aws_region: enum: Metronome::Models::CustomerCreateParams::BillingConfig::AwsRegion
      # }
      # ```
      class BillingConfig < Metronome::BaseModel
        # @!attribute billing_provider_customer_id
        #
        #   @return [String]
        required :billing_provider_customer_id, String

        # @!attribute billing_provider_type
        #
        #   @return [Symbol, Metronome::Models::CustomerCreateParams::BillingConfig::BillingProviderType]
        required :billing_provider_type,
                 enum: -> { Metronome::Models::CustomerCreateParams::BillingConfig::BillingProviderType }

        # @!attribute [r] aws_is_subscription_product
        #   True if the aws_product_code is a SAAS subscription product, false otherwise.
        #
        #   @return [Boolean, nil]
        optional :aws_is_subscription_product, Metronome::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :aws_is_subscription_product

        # @!attribute [r] aws_product_code
        #
        #   @return [String, nil]
        optional :aws_product_code, String

        # @!parse
        #   # @return [String]
        #   attr_writer :aws_product_code

        # @!attribute [r] aws_region
        #
        #   @return [Symbol, Metronome::Models::CustomerCreateParams::BillingConfig::AwsRegion, nil]
        optional :aws_region, enum: -> { Metronome::Models::CustomerCreateParams::BillingConfig::AwsRegion }

        # @!parse
        #   # @return [Symbol, Metronome::Models::CustomerCreateParams::BillingConfig::AwsRegion]
        #   attr_writer :aws_region

        # @!attribute [r] stripe_collection_method
        #
        #   @return [Symbol, Metronome::Models::CustomerCreateParams::BillingConfig::StripeCollectionMethod, nil]
        optional :stripe_collection_method,
                 enum: -> { Metronome::Models::CustomerCreateParams::BillingConfig::StripeCollectionMethod }

        # @!parse
        #   # @return [Symbol, Metronome::Models::CustomerCreateParams::BillingConfig::StripeCollectionMethod]
        #   attr_writer :stripe_collection_method

        # @!parse
        #   # @param billing_provider_customer_id [String]
        #   #
        #   # @param billing_provider_type [String]
        #   #
        #   # @param aws_is_subscription_product [Boolean] True if the aws_product_code is a SAAS subscription product, false otherwise.
        #   #
        #   # @param aws_product_code [String]
        #   #
        #   # @param aws_region [String]
        #   #
        #   # @param stripe_collection_method [String]
        #   #
        #   def initialize(
        #     billing_provider_customer_id:,
        #     billing_provider_type:,
        #     aws_is_subscription_product: nil,
        #     aws_product_code: nil,
        #     aws_region: nil,
        #     stripe_collection_method: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # case billing_provider_type
        # in :aws_marketplace
        #   # ...
        # in :stripe
        #   # ...
        # in :netsuite
        #   # ...
        # in :custom
        #   # ...
        # in :azure_marketplace
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class BillingProviderType < Metronome::Enum
          AWS_MARKETPLACE = :aws_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite
          CUSTOM = :custom
          AZURE_MARKETPLACE = :azure_marketplace
          QUICKBOOKS_ONLINE = :quickbooks_online
          WORKDAY = :workday
          GCP_MARKETPLACE = :gcp_marketplace

          finalize!
        end

        # @example
        # ```ruby
        # case aws_region
        # in :"af-south-1"
        #   # ...
        # in :"ap-east-1"
        #   # ...
        # in :"ap-northeast-1"
        #   # ...
        # in :"ap-northeast-2"
        #   # ...
        # in :"ap-northeast-3"
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class AwsRegion < Metronome::Enum
          AF_SOUTH_1 = :"af-south-1"
          AP_EAST_1 = :"ap-east-1"
          AP_NORTHEAST_1 = :"ap-northeast-1"
          AP_NORTHEAST_2 = :"ap-northeast-2"
          AP_NORTHEAST_3 = :"ap-northeast-3"
          AP_SOUTH_1 = :"ap-south-1"
          AP_SOUTHEAST_1 = :"ap-southeast-1"
          AP_SOUTHEAST_2 = :"ap-southeast-2"
          CA_CENTRAL_1 = :"ca-central-1"
          CN_NORTH_1 = :"cn-north-1"
          CN_NORTHWEST_1 = :"cn-northwest-1"
          EU_CENTRAL_1 = :"eu-central-1"
          EU_NORTH_1 = :"eu-north-1"
          EU_SOUTH_1 = :"eu-south-1"
          EU_WEST_1 = :"eu-west-1"
          EU_WEST_2 = :"eu-west-2"
          EU_WEST_3 = :"eu-west-3"
          ME_SOUTH_1 = :"me-south-1"
          SA_EAST_1 = :"sa-east-1"
          US_EAST_1 = :"us-east-1"
          US_EAST_2 = :"us-east-2"
          US_GOV_EAST_1 = :"us-gov-east-1"
          US_GOV_WEST_1 = :"us-gov-west-1"
          US_WEST_1 = :"us-west-1"
          US_WEST_2 = :"us-west-2"

          finalize!
        end

        # @example
        # ```ruby
        # case stripe_collection_method
        # in :charge_automatically
        #   # ...
        # in :send_invoice
        #   # ...
        # end
        # ```
        class StripeCollectionMethod < Metronome::Enum
          CHARGE_AUTOMATICALLY = :charge_automatically
          SEND_INVOICE = :send_invoice

          finalize!
        end
      end

      # @example
      # ```ruby
      # customer_billing_provider_configuration => {
      #   billing_provider: enum: Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider,
      #   configuration: -> { Metronome::HashOf[Metronome::Unknown] === _1 },
      #   delivery_method: enum: Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod,
      #   delivery_method_id: String
      # }
      # ```
      class CustomerBillingProviderConfiguration < Metronome::BaseModel
        # @!attribute billing_provider
        #   The billing provider set for this configuration.
        #
        #   @return [Symbol, Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider]
        required :billing_provider,
                 enum: -> {
                   Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider
                 }

        # @!attribute [r] configuration
        #   Configuration for the billing provider. The structure of this object is specific to the billing provider and delivery provider combination. Defaults to an empty object, however, for most billing provider + delivery method combinations, it will not be a valid configuration.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :configuration, Metronome::HashOf[Metronome::Unknown]

        # @!parse
        #   # @return [Hash{Symbol=>Object}]
        #   attr_writer :configuration

        # @!attribute [r] delivery_method
        #   The method to use for delivering invoices to this customer. If not provided, the `delivery_method_id` must be provided.
        #
        #   @return [Symbol, Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod, nil]
        optional :delivery_method,
                 enum: -> {
                   Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod
                 }

        # @!parse
        #   # @return [Symbol, Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod]
        #   attr_writer :delivery_method

        # @!attribute [r] delivery_method_id
        #   ID of the delivery method to use for this customer. If not provided, the `delivery_method` must be provided.
        #
        #   @return [String, nil]
        optional :delivery_method_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :delivery_method_id

        # @!parse
        #   # @param billing_provider [String] The billing provider set for this configuration.
        #   #
        #   # @param configuration [Hash{Symbol=>Object}] Configuration for the billing provider. The structure of this object is specific
        #   #   to the billing provider and delivery provider combination. Defaults to an empty
        #   #   object, however, for most billing provider + delivery method combinations, it
        #   #   will not be a valid configuration.
        #   #
        #   # @param delivery_method [String] The method to use for delivering invoices to this customer. If not provided, the
        #   #   `delivery_method_id` must be provided.
        #   #
        #   # @param delivery_method_id [String] ID of the delivery method to use for this customer. If not provided, the
        #   #   `delivery_method` must be provided.
        #   #
        #   def initialize(billing_provider:, configuration: nil, delivery_method: nil, delivery_method_id: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # The billing provider set for this configuration.
        #
        # @example
        # ```ruby
        # case billing_provider
        # in :aws_marketplace
        #   # ...
        # in :azure_marketplace
        #   # ...
        # in :gcp_marketplace
        #   # ...
        # in :stripe
        #   # ...
        # in :netsuite
        #   # ...
        # end
        # ```
        class BillingProvider < Metronome::Enum
          AWS_MARKETPLACE = :aws_marketplace
          AZURE_MARKETPLACE = :azure_marketplace
          GCP_MARKETPLACE = :gcp_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite

          finalize!
        end

        # The method to use for delivering invoices to this customer. If not provided, the `delivery_method_id` must be provided.
        #
        # @example
        # ```ruby
        # case delivery_method
        # in :direct_to_billing_provider
        #   # ...
        # in :aws_sqs
        #   # ...
        # in :tackle
        #   # ...
        # in :aws_sns
        #   # ...
        # end
        # ```
        class DeliveryMethod < Metronome::Enum
          DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
          AWS_SQS = :aws_sqs
          TACKLE = :tackle
          AWS_SNS = :aws_sns

          finalize!
        end
      end
    end
  end
end
