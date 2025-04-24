# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class BillingConfig
          # Set the billing configuration for a given customer.
          #
          # @param params [MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :customer_id Path param:
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType] :billing_provider_type Path param: The billing provider (e.g. stripe)
          #
          #   @option params [String] :billing_provider_customer_id Body param: The customer ID in the billing provider's system. For Azure, this is
          #     the subscription ID.
          #
          #   @option params [String] :aws_product_code Body param:
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion] :aws_region Body param:
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod] :stripe_collection_method Body param:
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [nil]
          #
          def create(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams.dump_request(params)
            customer_id = parsed.fetch(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            billing_provider_type = parsed.fetch(:billing_provider_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            @client.request(
              method: :post,
              path: ["v1/customers/%0s/billing-config/%1s", customer_id, billing_provider_type],
              body: parsed.except(:customer_id, :billing_provider_type),
              model: NilClass,
              options: options
            )
          end

          # Fetch the billing configuration for the given customer.
          #
          # @param params [MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :customer_id
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveParams::BillingProviderType] :billing_provider_type The billing provider (e.g. stripe)
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse]
          #
          def retrieve(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveParams.dump_request(params)
            customer_id = parsed.fetch(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            billing_provider_type = parsed.fetch(:billing_provider_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            @client.request(
              method: :get,
              path: ["v1/customers/%0s/billing-config/%1s", customer_id, billing_provider_type],
              model: MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse,
              options: options
            )
          end

          # Delete the billing configuration for a given customer. Note: this is unsupported
          #   for Azure and AWS Marketplace customers.
          #
          # @param params [MetronomeSDK::Models::V1::Customers::BillingConfigDeleteParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :customer_id
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigDeleteParams::BillingProviderType] :billing_provider_type The billing provider (e.g. stripe)
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [nil]
          #
          def delete(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::BillingConfigDeleteParams.dump_request(params)
            customer_id = parsed.fetch(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            billing_provider_type = parsed.fetch(:billing_provider_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            @client.request(
              method: :delete,
              path: ["v1/customers/%0s/billing-config/%1s", customer_id, billing_provider_type],
              model: NilClass,
              options: options
            )
          end

          # @param client [MetronomeSDK::Client]
          #
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
