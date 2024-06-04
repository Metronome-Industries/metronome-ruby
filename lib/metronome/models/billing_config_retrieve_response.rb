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
        #   @return [String]
        optional :aws_expiration_date, String

        # @!attribute [rw] aws_product_code
        #   @return [String]
        optional :aws_product_code, String

        # @!attribute [rw] aws_region
        #   @return [Symbol]
        optional :aws_region,
                 Metronome::Enum.new(
                   :'af-south-1',
                   :'ap-east-1',
                   :'ap-northeast-1',
                   :'ap-northeast-2',
                   :'ap-northeast-3',
                   :'ap-south-1',
                   :'ap-southeast-1',
                   :'ap-southeast-2',
                   :'ca-central-1',
                   :'cn-north-1',
                   :'cn-northwest-1',
                   :'eu-central-1',
                   :'eu-north-1',
                   :'eu-south-1',
                   :'eu-west-1',
                   :'eu-west-2',
                   :'eu-west-3',
                   :'me-south-1',
                   :'sa-east-1',
                   :'us-east-1',
                   :'us-east-2',
                   :'us-gov-east-1',
                   :'us-gov-west-1',
                   :'us-west-1',
                   :'us-west-2'
                 )

        # @!attribute [rw] azure_expiration_date
        #   Subscription term start/end date for the customer. The expected format is RFC 3339 and can be retrieved from Azure's Get Subscription API. (See https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription.)
        #   @return [String]
        optional :azure_expiration_date, String

        # @!attribute [rw] azure_plan_id
        #   @return [String]
        optional :azure_plan_id, String

        # @!attribute [rw] azure_start_date
        #   Subscription term start/end date for the customer. The expected format is RFC 3339 and can be retrieved from Azure's Get Subscription API. (See https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription.)
        #   @return [String]
        optional :azure_start_date, String

        # @!attribute [rw] azure_subscription_status
        #   @return [Symbol]
        optional :azure_subscription_status,
                 Metronome::Enum.new(:Subscribed, :Unsubscribed, :Suspended, :PendingFulfillmentStart)

        # @!attribute [rw] billing_provider_customer_id
        #   @return [String]
        optional :billing_provider_customer_id, String

        # @!attribute [rw] stripe_collection_method
        #   @return [Symbol]
        optional :stripe_collection_method, Metronome::Enum.new(:charge_automatically, :send_invoice)
      end
    end
  end
end
