# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#set_billing_configurations
      class CustomerSetBillingConfigurationsResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data>]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #   ID of the created configuration
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute billing_provider
          #   The billing provider set for this configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider, nil]
          optional :billing_provider,
                   enum: -> { MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider }

          # @!attribute configuration
          #   Configuration for the billing provider. The structure of this object is specific
          #   to the billing provider and delivery method combination.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :configuration, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute customer_id
          #   ID of the customer this configuration is associated with.
          #
          #   @return [String, nil]
          optional :customer_id, String

          # @!attribute delivery_method_id
          #   ID of the delivery method used for this customer configuration.
          #
          #   @return [String, nil]
          optional :delivery_method_id, String

          # @!attribute tax_provider
          #   The tax provider set for this configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider, nil]
          optional :tax_provider,
                   enum: -> { MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider }

          # @!method initialize(id: nil, billing_provider: nil, configuration: nil, customer_id: nil, delivery_method_id: nil, tax_provider: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data} for
          #   more details.
          #
          #   @param id [String] ID of the created configuration
          #
          #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider] The billing provider set for this configuration.
          #
          #   @param configuration [Hash{Symbol=>Object}] Configuration for the billing provider. The structure of this object is specific
          #
          #   @param customer_id [String] ID of the customer this configuration is associated with.
          #
          #   @param delivery_method_id [String] ID of the delivery method used for this customer configuration.
          #
          #   @param tax_provider [Symbol, MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider] The tax provider set for this configuration.

          # The billing provider set for this configuration.
          #
          # @see MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data#billing_provider
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
            METRONOME = :metronome

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The tax provider set for this configuration.
          #
          # @see MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data#tax_provider
          module TaxProvider
            extend MetronomeSDK::Internal::Type::Enum

            ANROK = :anrok
            AVALARA = :avalara
            STRIPE = :stripe

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
