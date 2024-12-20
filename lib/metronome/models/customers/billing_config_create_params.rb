# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class BillingConfigCreateParams < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute billing_provider_type
        #
        #   @return [Symbol, Metronome::Models::Customers::BillingConfigCreateParams::BillingProviderType]
        required :billing_provider_type,
                 enum: -> { Metronome::Models::Customers::BillingConfigCreateParams::BillingProviderType }

        # @!attribute billing_provider_customer_id
        #   The customer ID in the billing provider's system. For Azure, this is the subscription ID.
        #
        #   @return [String]
        required :billing_provider_customer_id, String

        # @!attribute aws_product_code
        #
        #   @return [String]
        optional :aws_product_code, String

        # @!attribute aws_region
        #
        #   @return [Symbol, Metronome::Models::Customers::BillingConfigCreateParams::AwsRegion]
        optional :aws_region, enum: -> { Metronome::Models::Customers::BillingConfigCreateParams::AwsRegion }

        # @!attribute stripe_collection_method
        #
        #   @return [Symbol, Metronome::Models::Customers::BillingConfigCreateParams::StripeCollectionMethod]
        optional :stripe_collection_method,
                 enum: -> { Metronome::Models::Customers::BillingConfigCreateParams::StripeCollectionMethod }

        # @!parse
        #   # @param customer_id [String]
        #   #
        #   # @param billing_provider_type [String]
        #   #
        #   # @param billing_provider_customer_id [String] The customer ID in the billing provider's system. For Azure, this is the
        #   #   subscription ID.
        #   #
        #   # @param aws_product_code [String, nil]
        #   #
        #   # @param aws_region [String, nil]
        #   #
        #   # @param stripe_collection_method [String, nil]
        #   #
        #   def initialize(
        #     customer_id:,
        #     billing_provider_type:,
        #     billing_provider_customer_id:,
        #     aws_product_code: nil,
        #     aws_region: nil,
        #     stripe_collection_method: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
        #
        # ```ruby
        # case enum
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
        #
        # ```ruby
        # case enum
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
