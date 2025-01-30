# typed: strong

module Metronome
  module Models
    class CustomerCreateParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            name: String,
            billing_config: Metronome::Models::CustomerCreateParams::BillingConfig,
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configurations: T::Array[Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration],
            external_id: String,
            ingest_aliases: T::Array[String]
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(Metronome::Models::CustomerCreateParams::BillingConfig)) }
      attr_reader :billing_config

      sig { params(billing_config: Metronome::Models::CustomerCreateParams::BillingConfig).void }
      attr_writer :billing_config

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig do
        returns(T.nilable(T::Array[Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration]))
      end
      attr_reader :customer_billing_provider_configurations

      sig do
        params(
          customer_billing_provider_configurations: T::Array[Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration]
        ).void
      end
      attr_writer :customer_billing_provider_configurations

      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ingest_aliases

      sig { params(ingest_aliases: T::Array[String]).void }
      attr_writer :ingest_aliases

      sig do
        params(
          name: String,
          billing_config: Metronome::Models::CustomerCreateParams::BillingConfig,
          custom_fields: T::Hash[Symbol, String],
          customer_billing_provider_configurations: T::Array[Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration],
          external_id: String,
          ingest_aliases: T::Array[String],
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(
        name:,
        billing_config: nil,
        custom_fields: nil,
        customer_billing_provider_configurations: nil,
        external_id: nil,
        ingest_aliases: nil,
        request_options: {}
      ); end

      sig { returns(Metronome::Models::CustomerCreateParams::Shape) }
      def to_h; end

      class BillingConfig < Metronome::BaseModel
        Shape = T.type_alias do
          {
            billing_provider_customer_id: String,
            billing_provider_type: Symbol,
            aws_is_subscription_product: T::Boolean,
            aws_product_code: String,
            aws_region: Symbol,
            stripe_collection_method: Symbol
          }
        end

        sig { returns(String) }
        attr_accessor :billing_provider_customer_id

        sig { returns(Symbol) }
        attr_accessor :billing_provider_type

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :aws_is_subscription_product

        sig { params(aws_is_subscription_product: T::Boolean).void }
        attr_writer :aws_is_subscription_product

        sig { returns(T.nilable(String)) }
        attr_reader :aws_product_code

        sig { params(aws_product_code: String).void }
        attr_writer :aws_product_code

        sig { returns(T.nilable(Symbol)) }
        attr_reader :aws_region

        sig { params(aws_region: Symbol).void }
        attr_writer :aws_region

        sig { returns(T.nilable(Symbol)) }
        attr_reader :stripe_collection_method

        sig { params(stripe_collection_method: Symbol).void }
        attr_writer :stripe_collection_method

        sig do
          params(
            billing_provider_customer_id: String,
            billing_provider_type: Symbol,
            aws_is_subscription_product: T::Boolean,
            aws_product_code: String,
            aws_region: Symbol,
            stripe_collection_method: Symbol
          ).void
        end
        def initialize(
          billing_provider_customer_id:,
          billing_provider_type:,
          aws_is_subscription_product: nil,
          aws_product_code: nil,
          aws_region: nil,
          stripe_collection_method: nil
        ); end

        sig { returns(Metronome::Models::CustomerCreateParams::BillingConfig::Shape) }
        def to_h; end

        class BillingProviderType < Metronome::Enum
          abstract!

          AWS_MARKETPLACE = :aws_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite
          CUSTOM = :custom
          AZURE_MARKETPLACE = :azure_marketplace
          QUICKBOOKS_ONLINE = :quickbooks_online
          WORKDAY = :workday
          GCP_MARKETPLACE = :gcp_marketplace

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class AwsRegion < Metronome::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class StripeCollectionMethod < Metronome::Enum
          abstract!

          CHARGE_AUTOMATICALLY = :charge_automatically
          SEND_INVOICE = :send_invoice

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class CustomerBillingProviderConfiguration < Metronome::BaseModel
        Shape = T.type_alias do
          {
            billing_provider: Symbol,
            configuration: T::Hash[Symbol, T.anything],
            delivery_method: Symbol,
            delivery_method_id: String
          }
        end

        sig { returns(Symbol) }
        attr_accessor :billing_provider

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :configuration

        sig { params(configuration: T::Hash[Symbol, T.anything]).void }
        attr_writer :configuration

        sig { returns(T.nilable(Symbol)) }
        attr_reader :delivery_method

        sig { params(delivery_method: Symbol).void }
        attr_writer :delivery_method

        sig { returns(T.nilable(String)) }
        attr_reader :delivery_method_id

        sig { params(delivery_method_id: String).void }
        attr_writer :delivery_method_id

        sig do
          params(
            billing_provider: Symbol,
            configuration: T::Hash[Symbol, T.anything],
            delivery_method: Symbol,
            delivery_method_id: String
          ).void
        end
        def initialize(billing_provider:, configuration: nil, delivery_method: nil, delivery_method_id: nil)
        end

        sig { returns(Metronome::Models::CustomerCreateParams::CustomerBillingProviderConfiguration::Shape) }
        def to_h; end

        class BillingProvider < Metronome::Enum
          abstract!

          AWS_MARKETPLACE = :aws_marketplace
          AZURE_MARKETPLACE = :azure_marketplace
          GCP_MARKETPLACE = :gcp_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class DeliveryMethod < Metronome::Enum
          abstract!

          DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
          AWS_SQS = :aws_sqs
          TACKLE = :tackle
          AWS_SNS = :aws_sns

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
