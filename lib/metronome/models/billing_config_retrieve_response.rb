# frozen_string_literal: true

module Metronome
  module Models
    class BillingConfigRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::BillingConfigRetrieveResponse::Data]
      required :data, -> { Metronome::Models::BillingConfigRetrieveResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] aws_expiration_date
        #   Contract expiration date for the customer. The expected format is RFC 3339 and can be retrieved from AWS's GetEntitlements API. (See https://docs.aws.amazon.com/marketplaceentitlement/latest/APIReference/API_GetEntitlements.html.)
        #   @return [Time]
        optional :aws_expiration_date, Time

        # @!attribute [rw] aws_product_code
        #   @return [String]
        optional :aws_product_code, String

        # @!attribute [rw] aws_region
        #   @return [Symbol, Metronome::Models::BillingConfigRetrieveResponse::Data::AwsRegion]
        optional :aws_region, enum: -> { Metronome::Models::BillingConfigRetrieveResponse::Data::AwsRegion }

        # @!attribute [rw] azure_expiration_date
        #   Subscription term start/end date for the customer. The expected format is RFC 3339 and can be retrieved from Azure's Get Subscription API. (See https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription.)
        #   @return [Time]
        optional :azure_expiration_date, Time

        # @!attribute [rw] azure_plan_id
        #   @return [String]
        optional :azure_plan_id, String

        # @!attribute [rw] azure_start_date
        #   Subscription term start/end date for the customer. The expected format is RFC 3339 and can be retrieved from Azure's Get Subscription API. (See https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription.)
        #   @return [Time]
        optional :azure_start_date, Time

        # @!attribute [rw] azure_subscription_status
        #   @return [Symbol, Metronome::Models::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus]
        optional :azure_subscription_status,
                 enum: -> { Metronome::Models::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus }

        # @!attribute [rw] billing_provider_customer_id
        #   @return [String]
        optional :billing_provider_customer_id, String

        # @!attribute [rw] stripe_collection_method
        #   @return [Symbol, Metronome::Models::BillingConfigRetrieveResponse::Data::StripeCollectionMethod]
        optional :stripe_collection_method,
                 enum: -> { Metronome::Models::BillingConfigRetrieveResponse::Data::StripeCollectionMethod }

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
        end

        class AzureSubscriptionStatus < Metronome::Enum
          SUBSCRIBED = :Subscribed
          UNSUBSCRIBED = :Unsubscribed
          SUSPENDED = :Suspended
          PENDING_FULFILLMENT_START = :PendingFulfillmentStart
        end

        class StripeCollectionMethod < Metronome::Enum
          CHARGE_AUTOMATICALLY = :charge_automatically
          SEND_INVOICE = :send_invoice
        end
      end
    end
  end
end
