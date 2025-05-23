# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#create
      class CustomerCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute name
        #   This will be truncated to 160 characters if the provided name is longer.
        #
        #   @return [String]
        required :name, String

        # @!attribute billing_config
        #
        #   @return [MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig, nil]
        optional :billing_config, -> { MetronomeSDK::V1::CustomerCreateParams::BillingConfig }

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute customer_billing_provider_configurations
        #
        #   @return [Array<MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration>, nil]
        optional :customer_billing_provider_configurations,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration]
                 }

        # @!attribute external_id
        #   (deprecated, use ingest_aliases instead) an alias that can be used to refer to
        #   this customer in usage events
        #
        #   @return [String, nil]
        optional :external_id, String

        # @!attribute ingest_aliases
        #   Aliases that can be used to refer to this customer in usage events
        #
        #   @return [Array<String>, nil]
        optional :ingest_aliases, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(name:, billing_config: nil, custom_fields: nil, customer_billing_provider_configurations: nil, external_id: nil, ingest_aliases: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CustomerCreateParams} for more details.
        #
        #   @param name [String] This will be truncated to 160 characters if the provided name is longer.
        #
        #   @param billing_config [MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig]
        #
        #   @param custom_fields [Hash{Symbol=>String}]
        #
        #   @param customer_billing_provider_configurations [Array<MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration>]
        #
        #   @param external_id [String] (deprecated, use ingest_aliases instead) an alias that can be used to refer to t
        #
        #   @param ingest_aliases [Array<String>] Aliases that can be used to refer to this customer in usage events
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class BillingConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute billing_provider_customer_id
          #
          #   @return [String]
          required :billing_provider_customer_id, String

          # @!attribute billing_provider_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig::BillingProviderType]
          required :billing_provider_type,
                   enum: -> { MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType }

          # @!attribute aws_is_subscription_product
          #   True if the aws_product_code is a SAAS subscription product, false otherwise.
          #
          #   @return [Boolean, nil]
          optional :aws_is_subscription_product, MetronomeSDK::Internal::Type::Boolean

          # @!attribute aws_product_code
          #
          #   @return [String, nil]
          optional :aws_product_code, String

          # @!attribute aws_region
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig::AwsRegion, nil]
          optional :aws_region, enum: -> { MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion }

          # @!attribute stripe_collection_method
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod, nil]
          optional :stripe_collection_method,
                   enum: -> { MetronomeSDK::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod }

          # @!method initialize(billing_provider_customer_id:, billing_provider_type:, aws_is_subscription_product: nil, aws_product_code: nil, aws_region: nil, stripe_collection_method: nil)
          #   @param billing_provider_customer_id [String]
          #
          #   @param billing_provider_type [Symbol, MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig::BillingProviderType]
          #
          #   @param aws_is_subscription_product [Boolean] True if the aws_product_code is a SAAS subscription product, false otherwise.
          #
          #   @param aws_product_code [String]
          #
          #   @param aws_region [Symbol, MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig::AwsRegion]
          #
          #   @param stripe_collection_method [Symbol, MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod]

          # @see MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig#billing_provider_type
          module BillingProviderType
            extend MetronomeSDK::Internal::Type::Enum

            AWS_MARKETPLACE = :aws_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite
            CUSTOM = :custom
            AZURE_MARKETPLACE = :azure_marketplace
            QUICKBOOKS_ONLINE = :quickbooks_online
            WORKDAY = :workday
            GCP_MARKETPLACE = :gcp_marketplace

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig#aws_region
          module AwsRegion
            extend MetronomeSDK::Internal::Type::Enum

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

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig#stripe_collection_method
          module StripeCollectionMethod
            extend MetronomeSDK::Internal::Type::Enum

            CHARGE_AUTOMATICALLY = :charge_automatically
            SEND_INVOICE = :send_invoice

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute billing_provider
          #   The billing provider set for this configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider]
          required :billing_provider,
                   enum: -> {
                     MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider
                   }

          # @!attribute configuration
          #   Configuration for the billing provider. The structure of this object is specific
          #   to the billing provider and delivery provider combination. Defaults to an empty
          #   object, however, for most billing provider + delivery method combinations, it
          #   will not be a valid configuration.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :configuration, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute delivery_method
          #   The method to use for delivering invoices to this customer. If not provided, the
          #   `delivery_method_id` must be provided.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod, nil]
          optional :delivery_method,
                   enum: -> {
                     MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod
                   }

          # @!attribute delivery_method_id
          #   ID of the delivery method to use for this customer. If not provided, the
          #   `delivery_method` must be provided.
          #
          #   @return [String, nil]
          optional :delivery_method_id, String

          # @!method initialize(billing_provider:, configuration: nil, delivery_method: nil, delivery_method_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration}
          #   for more details.
          #
          #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider] The billing provider set for this configuration.
          #
          #   @param configuration [Hash{Symbol=>Object}] Configuration for the billing provider. The structure of this object is specific
          #
          #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod] The method to use for delivering invoices to this customer. If not provided, the
          #
          #   @param delivery_method_id [String] ID of the delivery method to use for this customer. If not provided, the `delive

          # The billing provider set for this configuration.
          #
          # @see MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration#billing_provider
          module BillingProvider
            extend MetronomeSDK::Internal::Type::Enum

            AWS_MARKETPLACE = :aws_marketplace
            AZURE_MARKETPLACE = :azure_marketplace
            GCP_MARKETPLACE = :gcp_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The method to use for delivering invoices to this customer. If not provided, the
          # `delivery_method_id` must be provided.
          #
          # @see MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration#delivery_method
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
            AWS_SQS = :aws_sqs
            TACKLE = :tackle
            AWS_SNS = :aws_sns

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
