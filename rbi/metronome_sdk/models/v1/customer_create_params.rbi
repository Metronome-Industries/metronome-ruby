# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomerCreateParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # This will be truncated to 160 characters if the provided name is longer.
        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(
            T.nilable(MetronomeSDK::V1::CustomerCreateParams::BillingConfig)
          )
        end
        attr_reader :billing_config

        sig do
          params(
            billing_config:
              MetronomeSDK::V1::CustomerCreateParams::BillingConfig::OrHash
          ).void
        end
        attr_writer :billing_config

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration
              ]
            )
          )
        end
        attr_reader :customer_billing_provider_configurations

        sig do
          params(
            customer_billing_provider_configurations:
              T::Array[
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::OrHash
              ]
          ).void
        end
        attr_writer :customer_billing_provider_configurations

        # (deprecated, use ingest_aliases instead) an alias that can be used to refer to
        # this customer in usage events
        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        # Aliases that can be used to refer to this customer in usage events
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :ingest_aliases

        sig { params(ingest_aliases: T::Array[String]).void }
        attr_writer :ingest_aliases

        sig do
          params(
            name: String,
            billing_config:
              MetronomeSDK::V1::CustomerCreateParams::BillingConfig::OrHash,
            custom_fields: T::Hash[Symbol, String],
            customer_billing_provider_configurations:
              T::Array[
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::OrHash
              ],
            external_id: String,
            ingest_aliases: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # This will be truncated to 160 characters if the provided name is longer.
          name:,
          billing_config: nil,
          custom_fields: nil,
          customer_billing_provider_configurations: nil,
          # (deprecated, use ingest_aliases instead) an alias that can be used to refer to
          # this customer in usage events
          external_id: nil,
          # Aliases that can be used to refer to this customer in usage events
          ingest_aliases: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              billing_config:
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig,
              custom_fields: T::Hash[Symbol, String],
              customer_billing_provider_configurations:
                T::Array[
                  MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration
                ],
              external_id: String,
              ingest_aliases: T::Array[String],
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class BillingConfig < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :billing_provider_customer_id

          sig do
            returns(
              MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::OrSymbol
            )
          end
          attr_accessor :billing_provider_type

          # True if the aws_product_code is a SAAS subscription product, false otherwise.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :aws_is_subscription_product

          sig { params(aws_is_subscription_product: T::Boolean).void }
          attr_writer :aws_is_subscription_product

          sig { returns(T.nilable(String)) }
          attr_reader :aws_product_code

          sig { params(aws_product_code: String).void }
          attr_writer :aws_product_code

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::OrSymbol
              )
            )
          end
          attr_reader :aws_region

          sig do
            params(
              aws_region:
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::OrSymbol
            ).void
          end
          attr_writer :aws_region

          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod::OrSymbol
              )
            )
          end
          attr_reader :stripe_collection_method

          sig do
            params(
              stripe_collection_method:
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod::OrSymbol
            ).void
          end
          attr_writer :stripe_collection_method

          sig do
            params(
              billing_provider_customer_id: String,
              billing_provider_type:
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::OrSymbol,
              aws_is_subscription_product: T::Boolean,
              aws_product_code: String,
              aws_region:
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::OrSymbol,
              stripe_collection_method:
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            billing_provider_customer_id:,
            billing_provider_type:,
            # True if the aws_product_code is a SAAS subscription product, false otherwise.
            aws_is_subscription_product: nil,
            aws_product_code: nil,
            aws_region: nil,
            stripe_collection_method: nil
          )
          end

          sig do
            override.returns(
              {
                billing_provider_customer_id: String,
                billing_provider_type:
                  MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::OrSymbol,
                aws_is_subscription_product: T::Boolean,
                aws_product_code: String,
                aws_region:
                  MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::OrSymbol,
                stripe_collection_method:
                  MetronomeSDK::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod::OrSymbol
              }
            )
          end
          def to_hash
          end

          module BillingProviderType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::TaggedSymbol
              )
            QUICKBOOKS_ONLINE =
              T.let(
                :quickbooks_online,
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::TaggedSymbol
              )
            WORKDAY =
              T.let(
                :workday,
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CustomerCreateParams::BillingConfig::BillingProviderType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module AwsRegion
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AF_SOUTH_1 =
              T.let(
                :"af-south-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            AP_EAST_1 =
              T.let(
                :"ap-east-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            AP_NORTHEAST_1 =
              T.let(
                :"ap-northeast-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            AP_NORTHEAST_2 =
              T.let(
                :"ap-northeast-2",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            AP_NORTHEAST_3 =
              T.let(
                :"ap-northeast-3",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            AP_SOUTH_1 =
              T.let(
                :"ap-south-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            AP_SOUTHEAST_1 =
              T.let(
                :"ap-southeast-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            AP_SOUTHEAST_2 =
              T.let(
                :"ap-southeast-2",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            CA_CENTRAL_1 =
              T.let(
                :"ca-central-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            CN_NORTH_1 =
              T.let(
                :"cn-north-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            CN_NORTHWEST_1 =
              T.let(
                :"cn-northwest-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            EU_CENTRAL_1 =
              T.let(
                :"eu-central-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            EU_NORTH_1 =
              T.let(
                :"eu-north-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            EU_SOUTH_1 =
              T.let(
                :"eu-south-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            EU_WEST_1 =
              T.let(
                :"eu-west-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            EU_WEST_2 =
              T.let(
                :"eu-west-2",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            EU_WEST_3 =
              T.let(
                :"eu-west-3",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            ME_SOUTH_1 =
              T.let(
                :"me-south-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            SA_EAST_1 =
              T.let(
                :"sa-east-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            US_EAST_1 =
              T.let(
                :"us-east-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            US_EAST_2 =
              T.let(
                :"us-east-2",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            US_GOV_EAST_1 =
              T.let(
                :"us-gov-east-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            US_GOV_WEST_1 =
              T.let(
                :"us-gov-west-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            US_WEST_1 =
              T.let(
                :"us-west-1",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )
            US_WEST_2 =
              T.let(
                :"us-west-2",
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CustomerCreateParams::BillingConfig::AwsRegion::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module StripeCollectionMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHARGE_AUTOMATICALLY =
              T.let(
                :charge_automatically,
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod::TaggedSymbol
              )
            SEND_INVOICE =
              T.let(
                :send_invoice,
                MetronomeSDK::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CustomerCreateParams::BillingConfig::StripeCollectionMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The billing provider set for this configuration.
          sig do
            returns(
              MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider::OrSymbol
            )
          end
          attr_accessor :billing_provider

          # Configuration for the billing provider. The structure of this object is specific
          # to the billing provider and delivery provider combination. Defaults to an empty
          # object, however, for most billing provider + delivery method combinations, it
          # will not be a valid configuration.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :configuration

          sig { params(configuration: T::Hash[Symbol, T.anything]).void }
          attr_writer :configuration

          # The method to use for delivering invoices to this customer. If not provided, the
          # `delivery_method_id` must be provided.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol
              )
            )
          end
          attr_reader :delivery_method

          sig do
            params(
              delivery_method:
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol
            ).void
          end
          attr_writer :delivery_method

          # ID of the delivery method to use for this customer. If not provided, the
          # `delivery_method` must be provided.
          sig { returns(T.nilable(String)) }
          attr_reader :delivery_method_id

          sig { params(delivery_method_id: String).void }
          attr_writer :delivery_method_id

          sig do
            params(
              billing_provider:
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider::OrSymbol,
              configuration: T::Hash[Symbol, T.anything],
              delivery_method:
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol,
              delivery_method_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The billing provider set for this configuration.
            billing_provider:,
            # Configuration for the billing provider. The structure of this object is specific
            # to the billing provider and delivery provider combination. Defaults to an empty
            # object, however, for most billing provider + delivery method combinations, it
            # will not be a valid configuration.
            configuration: nil,
            # The method to use for delivering invoices to this customer. If not provided, the
            # `delivery_method_id` must be provided.
            delivery_method: nil,
            # ID of the delivery method to use for this customer. If not provided, the
            # `delivery_method` must be provided.
            delivery_method_id: nil
          )
          end

          sig do
            override.returns(
              {
                billing_provider:
                  MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider::OrSymbol,
                configuration: T::Hash[Symbol, T.anything],
                delivery_method:
                  MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod::OrSymbol,
                delivery_method_id: String
              }
            )
          end
          def to_hash
          end

          # The billing provider set for this configuration.
          module BillingProvider
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::BillingProvider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The method to use for delivering invoices to this customer. If not provided, the
          # `delivery_method_id` must be provided.
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DIRECT_TO_BILLING_PROVIDER =
              T.let(
                :direct_to_billing_provider,
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              )
            AWS_SQS =
              T.let(
                :aws_sqs,
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              )
            TACKLE =
              T.let(
                :tackle,
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              )
            AWS_SNS =
              T.let(
                :aws_sns,
                MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CustomerCreateParams::CustomerBillingProviderConfiguration::DeliveryMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
