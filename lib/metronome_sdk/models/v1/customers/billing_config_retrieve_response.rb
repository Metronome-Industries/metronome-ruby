# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::BillingConfig#retrieve
        class BillingConfigRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data]
          required :data, -> { MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data]

          # @see MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse#data
          class Data < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute aws_expiration_date
            #   Contract expiration date for the customer. The expected format is RFC 3339 and
            #   can be retrieved from
            #   [AWS's GetEntitlements API](https://docs.aws.amazon.com/marketplaceentitlement/latest/APIReference/API_GetEntitlements.html).
            #
            #   @return [Time, nil]
            optional :aws_expiration_date, Time

            # @!attribute aws_product_code
            #
            #   @return [String, nil]
            optional :aws_product_code, String

            # @!attribute aws_region
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion, nil]
            optional :aws_region,
                     enum: -> { MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion }

            # @!attribute azure_expiration_date
            #   Subscription term start/end date for the customer. The expected format is RFC
            #   3339 and can be retrieved from
            #   [Azure's Get Subscription API](https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription).
            #
            #   @return [Time, nil]
            optional :azure_expiration_date, Time

            # @!attribute azure_plan_id
            #
            #   @return [String, nil]
            optional :azure_plan_id, String

            # @!attribute azure_start_date
            #   Subscription term start/end date for the customer. The expected format is RFC
            #   3339 and can be retrieved from
            #   [Azure's Get Subscription API](https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription).
            #
            #   @return [Time, nil]
            optional :azure_start_date, Time

            # @!attribute azure_subscription_status
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus, nil]
            optional :azure_subscription_status,
                     enum: -> { MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus }

            # @!attribute billing_provider_customer_id
            #
            #   @return [String, nil]
            optional :billing_provider_customer_id, String

            # @!attribute stripe_collection_method
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod, nil]
            optional :stripe_collection_method,
                     enum: -> { MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod }

            # @!method initialize(aws_expiration_date: nil, aws_product_code: nil, aws_region: nil, azure_expiration_date: nil, azure_plan_id: nil, azure_start_date: nil, azure_subscription_status: nil, billing_provider_customer_id: nil, stripe_collection_method: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data} for
            #   more details.
            #
            #   @param aws_expiration_date [Time] Contract expiration date for the customer. The expected format is RFC 3339 and c
            #   ...
            #
            #   @param aws_product_code [String]
            #
            #   @param aws_region [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion]
            #
            #   @param azure_expiration_date [Time] Subscription term start/end date for the customer. The expected format is RFC 33
            #   ...
            #
            #   @param azure_plan_id [String]
            #
            #   @param azure_start_date [Time] Subscription term start/end date for the customer. The expected format is RFC 33
            #   ...
            #
            #   @param azure_subscription_status [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus]
            #
            #   @param billing_provider_customer_id [String]
            #
            #   @param stripe_collection_method [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod]

            # @see MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data#aws_region
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

            # @see MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data#azure_subscription_status
            module AzureSubscriptionStatus
              extend MetronomeSDK::Internal::Type::Enum

              SUBSCRIBED = :Subscribed
              UNSUBSCRIBED = :Unsubscribed
              SUSPENDED = :Suspended
              PENDING_FULFILLMENT_START = :PendingFulfillmentStart

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data#stripe_collection_method
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
end
