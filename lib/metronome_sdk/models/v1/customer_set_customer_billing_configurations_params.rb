# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#set_customer_billing_configurations
      class CustomerSetCustomerBillingConfigurationsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::CustomerSetCustomerBillingConfigurationsParams::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::CustomerSetCustomerBillingConfigurationsParams::Data] }

        # @!method initialize(data:, request_options: {})
        #   @param data [Array<MetronomeSDK::Models::V1::CustomerSetCustomerBillingConfigurationsParams::Data>]
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute billing_provider
          #   The billing provider set for this configuration.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerSetCustomerBillingConfigurationsParams::Data::BillingProvider]
          required :billing_provider,
                   enum: -> { MetronomeSDK::V1::CustomerSetCustomerBillingConfigurationsParams::Data::BillingProvider }

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute configuration
          #   Configuration for the billing provider. The structure of this object is specific
          #   to the billing provider and delivery method combination. Defaults to an empty
          #   object, however, for most billing provider + delivery method combinations, it
          #   will not be a valid configuration. For AWS marketplace configurations, the
          #   aws_is_subscription_product flag can be used to indicate a product with
          #   usage-based pricing. More information can be found
          #   [here](https://docs.metronome.com/invoice-customers/solutions/marketplaces/invoice-aws/#provision-aws-marketplace-customers-in-metronome).
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :configuration, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!attribute delivery_method
          #   The method to use for delivering invoices to this customer. If not provided, the
          #   `delivery_method_id` must be provided.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerSetCustomerBillingConfigurationsParams::Data::DeliveryMethod, nil]
          optional :delivery_method,
                   enum: -> { MetronomeSDK::V1::CustomerSetCustomerBillingConfigurationsParams::Data::DeliveryMethod }

          # @!attribute delivery_method_id
          #   ID of the delivery method to use for this customer. If not provided, the
          #   `delivery_method` must be provided.
          #
          #   @return [String, nil]
          optional :delivery_method_id, String

          # @!method initialize(billing_provider:, customer_id:, configuration: nil, delivery_method: nil, delivery_method_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::CustomerSetCustomerBillingConfigurationsParams::Data}
          #   for more details.
          #
          #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::CustomerSetCustomerBillingConfigurationsParams::Data::BillingProvider] The billing provider set for this configuration.
          #
          #   @param customer_id [String]
          #
          #   @param configuration [Hash{Symbol=>Object}] Configuration for the billing provider. The structure of this object is specific
          #
          #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::CustomerSetCustomerBillingConfigurationsParams::Data::DeliveryMethod] The method to use for delivering invoices to this customer. If not provided, the
          #
          #   @param delivery_method_id [String] ID of the delivery method to use for this customer. If not provided, the `delive

          # The billing provider set for this configuration.
          #
          # @see MetronomeSDK::Models::V1::CustomerSetCustomerBillingConfigurationsParams::Data#billing_provider
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

          # The method to use for delivering invoices to this customer. If not provided, the
          # `delivery_method_id` must be provided.
          #
          # @see MetronomeSDK::Models::V1::CustomerSetCustomerBillingConfigurationsParams::Data#delivery_method
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
