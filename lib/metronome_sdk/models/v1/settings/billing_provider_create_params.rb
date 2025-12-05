# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Settings
        # @see MetronomeSDK::Resources::V1::Settings::BillingProviders#create
        class BillingProviderCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute billing_provider
          #   The billing provider set for this configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Settings::BillingProviderCreateParams::BillingProvider]
          required :billing_provider,
                   enum: -> { MetronomeSDK::V1::Settings::BillingProviderCreateParams::BillingProvider }

          # @!attribute configuration
          #   Account-level configuration for the billing provider. The structure of this
          #   object is specific to the billing provider and delivery provider combination.
          #   See examples below.
          #
          #   @return [Hash{Symbol=>Object}]
          required :configuration, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute delivery_method
          #   The method to use for delivering invoices for this configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Settings::BillingProviderCreateParams::DeliveryMethod]
          required :delivery_method,
                   enum: -> { MetronomeSDK::V1::Settings::BillingProviderCreateParams::DeliveryMethod }

          # @!method initialize(billing_provider:, configuration:, delivery_method:, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Settings::BillingProviderCreateParams} for more
          #   details.
          #
          #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::Settings::BillingProviderCreateParams::BillingProvider] The billing provider set for this configuration.
          #
          #   @param configuration [Hash{Symbol=>Object}] Account-level configuration for the billing provider. The structure of this obje
          #
          #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::Settings::BillingProviderCreateParams::DeliveryMethod] The method to use for delivering invoices for this configuration.
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          # The billing provider set for this configuration.
          module BillingProvider
            extend MetronomeSDK::Internal::Type::Enum

            AWS_MARKETPLACE = :aws_marketplace
            AZURE_MARKETPLACE = :azure_marketplace
            GCP_MARKETPLACE = :gcp_marketplace

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The method to use for delivering invoices for this configuration.
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
            AWS_SQS = :aws_sqs
            AWS_SNS = :aws_sns

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
