# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerCreateParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig)) }
        def billing_config
        end

        sig do
          params(_: MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig)
            .returns(MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig)
        end
        def billing_config=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration])
          )
        end
        def customer_billing_provider_configurations
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration])
            .returns(T::Array[MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration])
        end
        def customer_billing_provider_configurations=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_id
        end

        sig { params(_: String).returns(String) }
        def external_id=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def ingest_aliases
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def ingest_aliases=(_)
        end

        sig do
          params(
            name: String,
            billing_config: MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig,
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configurations: T::Array[MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration],
            external_id: String,
            ingest_aliases: T::Array[String],
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          name:,
          billing_config: nil,
          custom_fields: nil,
          customer_billing_provider_configurations: nil,
          external_id: nil,
          ingest_aliases: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                name: String,
                billing_config: MetronomeSDK::Models::V1::CustomerCreateParams::BillingConfig,
                custom_fields: T::Hash[Symbol, String],
                customer_billing_provider_configurations: T::Array[MetronomeSDK::Models::V1::CustomerCreateParams::CustomerBillingProviderConfiguration],
                external_id: String,
                ingest_aliases: T::Array[String],
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash
        end

        class BillingConfig < MetronomeSDK::BaseModel
          sig { returns(String) }
          def billing_provider_customer_id
          end

          sig { params(_: String).returns(String) }
          def billing_provider_customer_id=(_)
          end

          sig { returns(Symbol) }
          def billing_provider_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def billing_provider_type=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def aws_is_subscription_product
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def aws_is_subscription_product=(_)
          end

          sig { returns(T.nilable(String)) }
          def aws_product_code
          end

          sig { params(_: String).returns(String) }
          def aws_product_code=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def aws_region
          end

          sig { params(_: Symbol).returns(Symbol) }
          def aws_region=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def stripe_collection_method
          end

          sig { params(_: Symbol).returns(Symbol) }
          def stripe_collection_method=(_)
          end

          sig do
            params(
              billing_provider_customer_id: String,
              billing_provider_type: Symbol,
              aws_is_subscription_product: T::Boolean,
              aws_product_code: String,
              aws_region: Symbol,
              stripe_collection_method: Symbol
            )
              .void
          end
          def initialize(
            billing_provider_customer_id:,
            billing_provider_type:,
            aws_is_subscription_product: nil,
            aws_product_code: nil,
            aws_region: nil,
            stripe_collection_method: nil
          )
          end

          sig do
            override
              .returns(
                {
                  billing_provider_customer_id: String,
                  billing_provider_type: Symbol,
                  aws_is_subscription_product: T::Boolean,
                  aws_product_code: String,
                  aws_region: Symbol,
                  stripe_collection_method: Symbol
                }
              )
          end
          def to_hash
          end

          class BillingProviderType < MetronomeSDK::Enum
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
            def self.values
            end
          end

          class AwsRegion < MetronomeSDK::Enum
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
            def self.values
            end
          end

          class StripeCollectionMethod < MetronomeSDK::Enum
            abstract!

            CHARGE_AUTOMATICALLY = :charge_automatically
            SEND_INVOICE = :send_invoice

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CustomerBillingProviderConfiguration < MetronomeSDK::BaseModel
          sig { returns(Symbol) }
          def billing_provider
          end

          sig { params(_: Symbol).returns(Symbol) }
          def billing_provider=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          def configuration
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def configuration=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def delivery_method
          end

          sig { params(_: Symbol).returns(Symbol) }
          def delivery_method=(_)
          end

          sig { returns(T.nilable(String)) }
          def delivery_method_id
          end

          sig { params(_: String).returns(String) }
          def delivery_method_id=(_)
          end

          sig do
            params(
              billing_provider: Symbol,
              configuration: T::Hash[Symbol, T.anything],
              delivery_method: Symbol,
              delivery_method_id: String
            )
              .void
          end
          def initialize(billing_provider:, configuration: nil, delivery_method: nil, delivery_method_id: nil)
          end

          sig do
            override
              .returns(
                {
                  billing_provider: Symbol,
                  configuration: T::Hash[Symbol, T.anything],
                  delivery_method: Symbol,
                  delivery_method_id: String
                }
              )
          end
          def to_hash
          end

          class BillingProvider < MetronomeSDK::Enum
            abstract!

            AWS_MARKETPLACE = :aws_marketplace
            AZURE_MARKETPLACE = :azure_marketplace
            GCP_MARKETPLACE = :gcp_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class DeliveryMethod < MetronomeSDK::Enum
            abstract!

            DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
            AWS_SQS = :aws_sqs
            TACKLE = :tackle
            AWS_SNS = :aws_sns

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end
    end
  end
end
