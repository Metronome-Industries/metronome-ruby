# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Settings
        # @see MetronomeSDK::Resources::V1::Settings::BillingProviders#list
        class BillingProviderListResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data>]
          required :data,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data] }

          # @!attribute next_page
          #
          #   @return [String, nil]
          optional :next_page, String, nil?: true

          # @!method initialize(data:, next_page: nil)
          #   @param data [Array<MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data>]
          #   @param next_page [String, nil]

          class Data < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_provider
            #   The billing provider set for this configuration.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data::BillingProvider]
            required :billing_provider,
                     enum: -> { MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data::BillingProvider }

            # @!attribute delivery_method
            #   The method to use for delivering invoices to this customer.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data::DeliveryMethod]
            required :delivery_method,
                     enum: -> { MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data::DeliveryMethod }

            # @!attribute delivery_method_configuration
            #   Configuration for the delivery method. The structure of this object is specific
            #   to the delivery method. Some configuration may be omitted for security reasons.
            #
            #   @return [Hash{Symbol=>Object}]
            required :delivery_method_configuration,
                     MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

            # @!attribute delivery_method_id
            #   ID of the delivery method to use for this customer.
            #
            #   @return [String]
            required :delivery_method_id, String

            # @!method initialize(billing_provider:, delivery_method:, delivery_method_configuration:, delivery_method_id:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data} for more
            #   details.
            #
            #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data::BillingProvider] The billing provider set for this configuration.
            #
            #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data::DeliveryMethod] The method to use for delivering invoices to this customer.
            #
            #   @param delivery_method_configuration [Hash{Symbol=>Object}] Configuration for the delivery method. The structure of this object is specific
            #
            #   @param delivery_method_id [String] ID of the delivery method to use for this customer.

            # The billing provider set for this configuration.
            #
            # @see MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data#billing_provider
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

            # The method to use for delivering invoices to this customer.
            #
            # @see MetronomeSDK::Models::V1::Settings::BillingProviderListResponse::Data#delivery_method
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
end
