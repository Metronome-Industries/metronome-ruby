# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::BillingConfig#delete
        class BillingConfigDeleteParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute billing_provider_type
          #
          #   @return [Symbol, MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType]
          required :billing_provider_type,
                   enum: -> { MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType }

          # @!method initialize(customer_id:, billing_provider_type:, request_options: {})
          #   @param customer_id [String]
          #   @param billing_provider_type [Symbol, MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType]
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          module BillingProviderType
            extend MetronomeSDK::Internal::Type::Enum

            AWS_MARKETPLACE = :aws_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite
            CUSTOM = :custom
            AZURE_MARKETPLACE = :azure_marketplace
            QUICKBOOKS_ONLINE = :quickbooks_online
            WORKDAY = :workday
            GCP_MARKETPLACE = :gcp_marketplace

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
