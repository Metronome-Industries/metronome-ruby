# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Settings
        class BillingProviderCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::Settings::BillingProviderCreateParams,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The billing provider set for this configuration.
          sig do
            returns(
              MetronomeSDK::V1::Settings::BillingProviderCreateParams::BillingProvider::OrSymbol
            )
          end
          attr_accessor :billing_provider

          # Account-level configuration for the billing provider. The structure of this
          # object is specific to the billing provider and delivery provider combination.
          # See examples below.
          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :configuration

          # The method to use for delivering invoices for this configuration.
          sig do
            returns(
              MetronomeSDK::V1::Settings::BillingProviderCreateParams::DeliveryMethod::OrSymbol
            )
          end
          attr_accessor :delivery_method

          sig do
            params(
              billing_provider:
                MetronomeSDK::V1::Settings::BillingProviderCreateParams::BillingProvider::OrSymbol,
              configuration: T::Hash[Symbol, T.anything],
              delivery_method:
                MetronomeSDK::V1::Settings::BillingProviderCreateParams::DeliveryMethod::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The billing provider set for this configuration.
            billing_provider:,
            # Account-level configuration for the billing provider. The structure of this
            # object is specific to the billing provider and delivery provider combination.
            # See examples below.
            configuration:,
            # The method to use for delivering invoices for this configuration.
            delivery_method:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                billing_provider:
                  MetronomeSDK::V1::Settings::BillingProviderCreateParams::BillingProvider::OrSymbol,
                configuration: T::Hash[Symbol, T.anything],
                delivery_method:
                  MetronomeSDK::V1::Settings::BillingProviderCreateParams::DeliveryMethod::OrSymbol,
                request_options: MetronomeSDK::RequestOptions
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
                  MetronomeSDK::V1::Settings::BillingProviderCreateParams::BillingProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::V1::Settings::BillingProviderCreateParams::BillingProvider::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::V1::Settings::BillingProviderCreateParams::BillingProvider::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::V1::Settings::BillingProviderCreateParams::BillingProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Settings::BillingProviderCreateParams::BillingProvider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The method to use for delivering invoices for this configuration.
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::Settings::BillingProviderCreateParams::DeliveryMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DIRECT_TO_BILLING_PROVIDER =
              T.let(
                :direct_to_billing_provider,
                MetronomeSDK::V1::Settings::BillingProviderCreateParams::DeliveryMethod::TaggedSymbol
              )
            AWS_SQS =
              T.let(
                :aws_sqs,
                MetronomeSDK::V1::Settings::BillingProviderCreateParams::DeliveryMethod::TaggedSymbol
              )
            AWS_SNS =
              T.let(
                :aws_sns,
                MetronomeSDK::V1::Settings::BillingProviderCreateParams::DeliveryMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::Settings::BillingProviderCreateParams::DeliveryMethod::TaggedSymbol
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
