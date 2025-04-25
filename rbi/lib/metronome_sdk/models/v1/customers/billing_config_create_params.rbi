# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class BillingConfigCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::OrSymbol) }
          attr_accessor :billing_provider_type

          # The customer ID in the billing provider's system. For Azure, this is the
          # subscription ID.
          sig { returns(String) }
          attr_accessor :billing_provider_customer_id

          sig { returns(T.nilable(String)) }
          attr_reader :aws_product_code

          sig { params(aws_product_code: String).void }
          attr_writer :aws_product_code

          sig { returns(T.nilable(MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::OrSymbol)) }
          attr_reader :aws_region

          sig do
            params(aws_region: MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::OrSymbol)
              .void
          end
          attr_writer :aws_region

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod::OrSymbol
              )
            )
          end
          attr_reader :stripe_collection_method

          sig do
            params(
              stripe_collection_method: MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod::OrSymbol
            )
              .void
          end
          attr_writer :stripe_collection_method

          sig do
            params(
              customer_id: String,
              billing_provider_type: MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::OrSymbol,
              billing_provider_customer_id: String,
              aws_product_code: String,
              aws_region: MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::OrSymbol,
              stripe_collection_method: MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod::OrSymbol,
              request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(
            customer_id:,
            billing_provider_type:,
            # The customer ID in the billing provider's system. For Azure, this is the
            # subscription ID.
            billing_provider_customer_id:,
            aws_product_code: nil,
            aws_region: nil,
            stripe_collection_method: nil,
            request_options: {}
          ); end
          sig do
            override
              .returns(
                {
                  customer_id: String,
                  billing_provider_type: MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::OrSymbol,
                  billing_provider_customer_id: String,
                  aws_product_code: String,
                  aws_region: MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::OrSymbol,
                  stripe_collection_method: MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod::OrSymbol,
                  request_options: MetronomeSDK::RequestOptions
                }
              )
          end
          def to_hash; end

          module BillingProviderType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::TaggedSymbol
              )
            QUICKBOOKS_ONLINE =
              T.let(
                :quickbooks_online,
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::TaggedSymbol
              )
            WORKDAY =
              T.let(
                :workday,
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType::TaggedSymbol]
                )
            end
            def self.values; end
          end

          module AwsRegion
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AF_SOUTH_1 =
              T.let(
                :"af-south-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            AP_EAST_1 =
              T.let(
                :"ap-east-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            AP_NORTHEAST_1 =
              T.let(
                :"ap-northeast-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            AP_NORTHEAST_2 =
              T.let(
                :"ap-northeast-2",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            AP_NORTHEAST_3 =
              T.let(
                :"ap-northeast-3",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            AP_SOUTH_1 =
              T.let(
                :"ap-south-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            AP_SOUTHEAST_1 =
              T.let(
                :"ap-southeast-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            AP_SOUTHEAST_2 =
              T.let(
                :"ap-southeast-2",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            CA_CENTRAL_1 =
              T.let(
                :"ca-central-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            CN_NORTH_1 =
              T.let(
                :"cn-north-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            CN_NORTHWEST_1 =
              T.let(
                :"cn-northwest-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            EU_CENTRAL_1 =
              T.let(
                :"eu-central-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            EU_NORTH_1 =
              T.let(
                :"eu-north-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            EU_SOUTH_1 =
              T.let(
                :"eu-south-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            EU_WEST_1 =
              T.let(
                :"eu-west-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            EU_WEST_2 =
              T.let(
                :"eu-west-2",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            EU_WEST_3 =
              T.let(
                :"eu-west-3",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            ME_SOUTH_1 =
              T.let(
                :"me-south-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            SA_EAST_1 =
              T.let(
                :"sa-east-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            US_EAST_1 =
              T.let(
                :"us-east-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            US_EAST_2 =
              T.let(
                :"us-east-2",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            US_GOV_EAST_1 =
              T.let(
                :"us-gov-east-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            US_GOV_WEST_1 =
              T.let(
                :"us-gov-west-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            US_WEST_1 =
              T.let(
                :"us-west-1",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )
            US_WEST_2 =
              T.let(
                :"us-west-2",
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion::TaggedSymbol])
            end
            def self.values; end
          end

          module StripeCollectionMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHARGE_AUTOMATICALLY =
              T.let(
                :charge_automatically,
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod::TaggedSymbol
              )
            SEND_INVOICE =
              T.let(
                :send_invoice,
                MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end
      end
    end
  end
end
