# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class BillingConfigDeleteParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::OrSymbol
            )
          end
          attr_accessor :billing_provider_type

          sig do
            params(
              customer_id: String,
              billing_provider_type:
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            customer_id:,
            billing_provider_type:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                customer_id: String,
                billing_provider_type:
                  MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::OrSymbol,
                request_options: MetronomeSDK::RequestOptions
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
                  MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::TaggedSymbol
              )
            QUICKBOOKS_ONLINE =
              T.let(
                :quickbooks_online,
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::TaggedSymbol
              )
            WORKDAY =
              T.let(
                :workday,
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::TaggedSymbol
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
