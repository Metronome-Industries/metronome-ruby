# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#retrieve_billing_configurations
      class CustomerRetrieveBillingConfigurationsResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data>]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #   ID of this configuration; can be provided as the
          #   billing_provider_configuration_id when creating a contract.
          #
          #   @return [String]
          required :id, String

          # @!attribute archived_at
          #
          #   @return [Time, nil]
          required :archived_at, Time, nil?: true

          # @!attribute billing_provider
          #   The billing provider set for this configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider]
          required :billing_provider,
                   enum: -> { MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider }

          # @!attribute configuration
          #   Configuration for the billing provider. The structure of this object is specific
          #   to the billing provider.
          #
          #   @return [Hash{Symbol=>Object}]
          required :configuration, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute delivery_method
          #   The method to use for delivering invoices to this customer.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod]
          required :delivery_method,
                   enum: -> { MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod }

          # @!attribute delivery_method_configuration
          #   Configuration for the delivery method. The structure of this object is specific
          #   to the delivery method.
          #
          #   @return [Hash{Symbol=>Object}]
          required :delivery_method_configuration,
                   MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute delivery_method_id
          #   ID of the delivery method to use for this customer.
          #
          #   @return [String]
          required :delivery_method_id, String

          # @!method initialize(id:, archived_at:, billing_provider:, configuration:, customer_id:, delivery_method:, delivery_method_configuration:, delivery_method_id:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data}
          #   for more details.
          #
          #   @param id [String] ID of this configuration; can be provided as the billing*provider_configuration*
          #
          #   @param archived_at [Time, nil]
          #
          #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::BillingProvider] The billing provider set for this configuration.
          #
          #   @param configuration [Hash{Symbol=>Object}] Configuration for the billing provider. The structure of this object is specific
          #
          #   @param customer_id [String]
          #
          #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data::DeliveryMethod] The method to use for delivering invoices to this customer.
          #
          #   @param delivery_method_configuration [Hash{Symbol=>Object}] Configuration for the delivery method. The structure of this object is specific
          #
          #   @param delivery_method_id [String] ID of the delivery method to use for this customer.

          # The billing provider set for this configuration.
          #
          # @see MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data#billing_provider
          module BillingProvider
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

          # The method to use for delivering invoices to this customer.
          #
          # @see MetronomeSDK::Models::V1::CustomerRetrieveBillingConfigurationsResponse::Data#delivery_method
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
            AWS_SQS = :aws_sqs
            TACKLE = :tackle
            AWS_SNS = :aws_sns

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
