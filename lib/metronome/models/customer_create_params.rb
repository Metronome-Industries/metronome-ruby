# frozen_string_literal: true

module Metronome
  module Models
    class CustomerCreateParams < Metronome::BaseModel
      # @!attribute name
      #   This will be truncated to 160 characters if the provided name is longer.
      #
      #   @return [String]
      required :name, String

      # @!attribute billing_config
      #
      #   @return [Metronome::Models::CustomerCreateParams::BillingConfig]
      optional :billing_config, -> { Metronome::Models::CustomerCreateParams::BillingConfig }

      # @!attribute custom_fields
      #
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute external_id
      #   (deprecated, use ingest_aliases instead) an alias that can be used to refer to this customer in usage events
      #
      #   @return [String]
      optional :external_id, String

      # @!attribute ingest_aliases
      #   Aliases that can be used to refer to this customer in usage events
      #
      #   @return [Array<String>]
      optional :ingest_aliases, Metronome::ArrayOf.new(String)

      # @!parse
      #   # @param name [String] This will be truncated to 160 characters if the provided name is longer.
      #   #
      #   # @param billing_config [Object, nil]
      #   #
      #   # @param custom_fields [Hash, nil]
      #   #
      #   # @param external_id [String, nil] (deprecated, use ingest_aliases instead) an alias that can be used to refer to
      #   #   this customer in usage events
      #   #
      #   # @param ingest_aliases [Array<String>, nil] Aliases that can be used to refer to this customer in usage events
      #   #
      #   def initialize(name:, billing_config: nil, custom_fields: nil, external_id: nil, ingest_aliases: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

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

        # @!attribute aws_product_code
        #
        #   @return [String]
        optional :aws_product_code, String

        # @!attribute aws_region
        #
        #   @return [Symbol, Metronome::Models::CustomerCreateParams::BillingConfig::AwsRegion]
        optional :aws_region, enum: -> { Metronome::Models::CustomerCreateParams::BillingConfig::AwsRegion }

        # @!attribute stripe_collection_method
        #
        #   @return [Symbol, Metronome::Models::CustomerCreateParams::BillingConfig::StripeCollectionMethod]
        optional :stripe_collection_method,
                 enum: -> { Metronome::Models::CustomerCreateParams::BillingConfig::StripeCollectionMethod }

        # @!parse
        #   # @param billing_provider_customer_id [String]
        #   # @param billing_provider_type [String]
        #   # @param aws_product_code [String, nil]
        #   # @param aws_region [String, nil]
        #   # @param stripe_collection_method [String, nil]
        #   #
        #   def initialize(
        #     billing_provider_customer_id:,
        #     billing_provider_type:,
        #     aws_product_code: nil,
        #     aws_region: nil,
        #     stripe_collection_method: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class BillingProviderType < Metronome::Enum
          AWS_MARKETPLACE = :aws_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite
          CUSTOM = :custom
          AZURE_MARKETPLACE = :azure_marketplace
          QUICKBOOKS_ONLINE = :quickbooks_online
          WORKDAY = :workday
          GCP_MARKETPLACE = :gcp_marketplace
        end

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

        class StripeCollectionMethod < Metronome::Enum
          CHARGE_AUTOMATICALLY = :charge_automatically
          SEND_INVOICE = :send_invoice
        end
      end
    end
  end
end
