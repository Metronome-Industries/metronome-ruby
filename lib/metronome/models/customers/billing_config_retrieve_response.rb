# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      # @example
      # ```ruby
      # billing_config_retrieve_response => {
      #   data: Metronome::Models::Customers::BillingConfigRetrieveResponse::Data
      # }
      # ```
      class BillingConfigRetrieveResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Metronome::Models::Customers::BillingConfigRetrieveResponse::Data]
        required :data, -> { Metronome::Models::Customers::BillingConfigRetrieveResponse::Data }

        # @!parse
        #   # @param data [Metronome::Models::Customers::BillingConfigRetrieveResponse::Data]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   aws_expiration_date: Time,
        #   aws_product_code: String,
        #   aws_region: enum: Metronome::Models::Customers::BillingConfigRetrieveResponse::Data::AwsRegion,
        #   azure_expiration_date: Time,
        #   azure_plan_id: String,
        #   **_
        # }
        # ```
        class Data < Metronome::BaseModel
          # @!attribute aws_expiration_date
          #   Contract expiration date for the customer. The expected format is RFC 3339 and can be retrieved from [AWS's GetEntitlements API](https://docs.aws.amazon.com/marketplaceentitlement/latest/APIReference/API_GetEntitlements.html).
          #
          #   @return [Time]
          optional :aws_expiration_date, Time

          # @!attribute aws_product_code
          #
          #   @return [String]
          optional :aws_product_code, String

          # @!attribute aws_region
          #
          #   @return [Symbol, Metronome::Models::Customers::BillingConfigRetrieveResponse::Data::AwsRegion]
          optional :aws_region,
                   enum: -> { Metronome::Models::Customers::BillingConfigRetrieveResponse::Data::AwsRegion }

          # @!attribute azure_expiration_date
          #   Subscription term start/end date for the customer. The expected format is RFC 3339 and can be retrieved from [Azure's Get Subscription API](https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription).
          #
          #   @return [Time]
          optional :azure_expiration_date, Time

          # @!attribute azure_plan_id
          #
          #   @return [String]
          optional :azure_plan_id, String

          # @!attribute azure_start_date
          #   Subscription term start/end date for the customer. The expected format is RFC 3339 and can be retrieved from [Azure's Get Subscription API](https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription).
          #
          #   @return [Time]
          optional :azure_start_date, Time

          # @!attribute azure_subscription_status
          #
          #   @return [Symbol, Metronome::Models::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus]
          optional :azure_subscription_status,
                   enum: -> {
                     Metronome::Models::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus
                   }

          # @!attribute billing_provider_customer_id
          #
          #   @return [String]
          optional :billing_provider_customer_id, String

          # @!attribute stripe_collection_method
          #
          #   @return [Symbol, Metronome::Models::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod]
          optional :stripe_collection_method,
                   enum: -> {
                     Metronome::Models::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod
                   }

          # @!parse
          #   # @param aws_expiration_date [String] Contract expiration date for the customer. The expected format is RFC 3339 and
          #   #   can be retrieved from
          #   #   [AWS's GetEntitlements API](https://docs.aws.amazon.com/marketplaceentitlement/latest/APIReference/API_GetEntitlements.html).
          #   #
          #   # @param aws_product_code [String]
          #   #
          #   # @param aws_region [String]
          #   #
          #   # @param azure_expiration_date [String] Subscription term start/end date for the customer. The expected format is RFC
          #   #   3339 and can be retrieved from
          #   #   [Azure's Get Subscription API](https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription).
          #   #
          #   # @param azure_plan_id [String]
          #   #
          #   # @param azure_start_date [String] Subscription term start/end date for the customer. The expected format is RFC
          #   #   3339 and can be retrieved from
          #   #   [Azure's Get Subscription API](https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription).
          #   #
          #   # @param azure_subscription_status [String]
          #   #
          #   # @param billing_provider_customer_id [String]
          #   #
          #   # @param stripe_collection_method [String]
          #   #
          #   def initialize(
          #     aws_expiration_date: nil,
          #     aws_product_code: nil,
          #     aws_region: nil,
          #     azure_expiration_date: nil,
          #     azure_plan_id: nil,
          #     azure_start_date: nil,
          #     azure_subscription_status: nil,
          #     billing_provider_customer_id: nil,
          #     stripe_collection_method: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Metronome::BaseModel) -> void

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
          # case azure_subscription_status
          # in :Subscribed
          #   # ...
          # in :Unsubscribed
          #   # ...
          # in :Suspended
          #   # ...
          # in :PendingFulfillmentStart
          #   # ...
          # end
          # ```
          class AzureSubscriptionStatus < Metronome::Enum
            SUBSCRIBED = :Subscribed
            UNSUBSCRIBED = :Unsubscribed
            SUSPENDED = :Suspended
            PENDING_FULFILLMENT_START = :PendingFulfillmentStart

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
      end
    end
  end
end
