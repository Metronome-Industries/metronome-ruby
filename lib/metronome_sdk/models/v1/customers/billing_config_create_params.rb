# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::BillingConfig#create
        class BillingConfigCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute billing_provider_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType]
          required :billing_provider_type,
                   enum: -> { MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType }

          # @!attribute billing_provider_customer_id
          #   The customer ID in the billing provider's system. For Azure, this is the
          #   subscription ID.
          #
          #   @return [String]
          required :billing_provider_customer_id, String

          # @!attribute aws_product_code
          #
          #   @return [String, nil]
          optional :aws_product_code, String

          # @!attribute aws_region
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion, nil]
          optional :aws_region,
                   enum: -> { MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion }

          # @!attribute stripe_collection_method
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod, nil]
          optional :stripe_collection_method,
                   enum: -> { MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod }

          # @!method initialize(customer_id:, billing_provider_type:, billing_provider_customer_id:, aws_product_code: nil, aws_region: nil, stripe_collection_method: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams} for more
          #   details.
          #
          #   @param customer_id [String]
          #
          #   @param billing_provider_type [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType]
          #
          #   @param billing_provider_customer_id [String] The customer ID in the billing provider's system. For Azure, this is the subscri
          #   ...
          #
          #   @param aws_product_code [String]
          #
          #   @param aws_region [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion]
          #
          #   @param stripe_collection_method [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod]
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

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

          module StripeCollectionMethod
            extend MetronomeSDK::Internal::Type::Enum

            CHARGE_AUTOMATICALLY = :charge_automatically
            SEND_INVOICE = :send_invoice

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
