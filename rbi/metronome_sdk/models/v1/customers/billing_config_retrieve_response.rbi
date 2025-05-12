# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class BillingConfigRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # Contract expiration date for the customer. The expected format is RFC 3339 and
            # can be retrieved from
            # [AWS's GetEntitlements API](https://docs.aws.amazon.com/marketplaceentitlement/latest/APIReference/API_GetEntitlements.html).
            sig { returns(T.nilable(Time)) }
            attr_reader :aws_expiration_date

            sig { params(aws_expiration_date: Time).void }
            attr_writer :aws_expiration_date

            sig { returns(T.nilable(String)) }
            attr_reader :aws_product_code

            sig { params(aws_product_code: String).void }
            attr_writer :aws_product_code

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              )
            end
            attr_reader :aws_region

            sig do
              params(
                aws_region:
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::OrSymbol
              ).void
            end
            attr_writer :aws_region

            # Subscription term start/end date for the customer. The expected format is RFC
            # 3339 and can be retrieved from
            # [Azure's Get Subscription API](https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription).
            sig { returns(T.nilable(Time)) }
            attr_reader :azure_expiration_date

            sig { params(azure_expiration_date: Time).void }
            attr_writer :azure_expiration_date

            sig { returns(T.nilable(String)) }
            attr_reader :azure_plan_id

            sig { params(azure_plan_id: String).void }
            attr_writer :azure_plan_id

            # Subscription term start/end date for the customer. The expected format is RFC
            # 3339 and can be retrieved from
            # [Azure's Get Subscription API](https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription).
            sig { returns(T.nilable(Time)) }
            attr_reader :azure_start_date

            sig { params(azure_start_date: Time).void }
            attr_writer :azure_start_date

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus::TaggedSymbol
                )
              )
            end
            attr_reader :azure_subscription_status

            sig do
              params(
                azure_subscription_status:
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus::OrSymbol
              ).void
            end
            attr_writer :azure_subscription_status

            sig { returns(T.nilable(String)) }
            attr_reader :billing_provider_customer_id

            sig { params(billing_provider_customer_id: String).void }
            attr_writer :billing_provider_customer_id

            sig do
              returns(
                T.nilable(
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod::TaggedSymbol
                )
              )
            end
            attr_reader :stripe_collection_method

            sig do
              params(
                stripe_collection_method:
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod::OrSymbol
              ).void
            end
            attr_writer :stripe_collection_method

            sig do
              params(
                aws_expiration_date: Time,
                aws_product_code: String,
                aws_region:
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::OrSymbol,
                azure_expiration_date: Time,
                azure_plan_id: String,
                azure_start_date: Time,
                azure_subscription_status:
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus::OrSymbol,
                billing_provider_customer_id: String,
                stripe_collection_method:
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Contract expiration date for the customer. The expected format is RFC 3339 and
              # can be retrieved from
              # [AWS's GetEntitlements API](https://docs.aws.amazon.com/marketplaceentitlement/latest/APIReference/API_GetEntitlements.html).
              aws_expiration_date: nil,
              aws_product_code: nil,
              aws_region: nil,
              # Subscription term start/end date for the customer. The expected format is RFC
              # 3339 and can be retrieved from
              # [Azure's Get Subscription API](https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription).
              azure_expiration_date: nil,
              azure_plan_id: nil,
              # Subscription term start/end date for the customer. The expected format is RFC
              # 3339 and can be retrieved from
              # [Azure's Get Subscription API](https://learn.microsoft.com/en-us/partner-center/marketplace/partner-center-portal/pc-saas-fulfillment-subscription-api#get-subscription).
              azure_start_date: nil,
              azure_subscription_status: nil,
              billing_provider_customer_id: nil,
              stripe_collection_method: nil
            )
            end

            sig do
              override.returns(
                {
                  aws_expiration_date: Time,
                  aws_product_code: String,
                  aws_region:
                    MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol,
                  azure_expiration_date: Time,
                  azure_plan_id: String,
                  azure_start_date: Time,
                  azure_subscription_status:
                    MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus::TaggedSymbol,
                  billing_provider_customer_id: String,
                  stripe_collection_method:
                    MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            module AwsRegion
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AF_SOUTH_1 =
                T.let(
                  :"af-south-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              AP_EAST_1 =
                T.let(
                  :"ap-east-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              AP_NORTHEAST_1 =
                T.let(
                  :"ap-northeast-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              AP_NORTHEAST_2 =
                T.let(
                  :"ap-northeast-2",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              AP_NORTHEAST_3 =
                T.let(
                  :"ap-northeast-3",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              AP_SOUTH_1 =
                T.let(
                  :"ap-south-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              AP_SOUTHEAST_1 =
                T.let(
                  :"ap-southeast-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              AP_SOUTHEAST_2 =
                T.let(
                  :"ap-southeast-2",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              CA_CENTRAL_1 =
                T.let(
                  :"ca-central-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              CN_NORTH_1 =
                T.let(
                  :"cn-north-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              CN_NORTHWEST_1 =
                T.let(
                  :"cn-northwest-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              EU_CENTRAL_1 =
                T.let(
                  :"eu-central-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              EU_NORTH_1 =
                T.let(
                  :"eu-north-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              EU_SOUTH_1 =
                T.let(
                  :"eu-south-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              EU_WEST_1 =
                T.let(
                  :"eu-west-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              EU_WEST_2 =
                T.let(
                  :"eu-west-2",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              EU_WEST_3 =
                T.let(
                  :"eu-west-3",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              ME_SOUTH_1 =
                T.let(
                  :"me-south-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              SA_EAST_1 =
                T.let(
                  :"sa-east-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              US_EAST_1 =
                T.let(
                  :"us-east-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              US_EAST_2 =
                T.let(
                  :"us-east-2",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              US_GOV_EAST_1 =
                T.let(
                  :"us-gov-east-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              US_GOV_WEST_1 =
                T.let(
                  :"us-gov-west-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              US_WEST_1 =
                T.let(
                  :"us-west-1",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )
              US_WEST_2 =
                T.let(
                  :"us-west-2",
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AwsRegion::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module AzureSubscriptionStatus
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUBSCRIBED =
                T.let(
                  :Subscribed,
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus::TaggedSymbol
                )
              UNSUBSCRIBED =
                T.let(
                  :Unsubscribed,
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus::TaggedSymbol
                )
              SUSPENDED =
                T.let(
                  :Suspended,
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus::TaggedSymbol
                )
              PENDING_FULFILLMENT_START =
                T.let(
                  :PendingFulfillmentStart,
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::AzureSubscriptionStatus::TaggedSymbol
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
                    MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHARGE_AUTOMATICALLY =
                T.let(
                  :charge_automatically,
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod::TaggedSymbol
                )
              SEND_INVOICE =
                T.let(
                  :send_invoice,
                  MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse::Data::StripeCollectionMethod::TaggedSymbol
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
end
