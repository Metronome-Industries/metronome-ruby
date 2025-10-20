# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class BillingConfig
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams} for more
          # details.
          #
          # Set the billing configuration for a given customer. This is a Plans (deprecated)
          # endpoint. New clients should implement using Contracts.
          #
          # @overload create(customer_id:, billing_provider_type:, billing_provider_customer_id:, aws_product_code: nil, aws_region: nil, stripe_collection_method: nil, request_options: {})
          #
          # @param customer_id [String] Path param:
          #
          # @param billing_provider_type [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::BillingProviderType] Path param: The billing provider (e.g. stripe)
          #
          # @param billing_provider_customer_id [String] Body param: The customer ID in the billing provider's system. For Azure, this is
          #
          # @param aws_product_code [String] Body param:
          #
          # @param aws_region [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::AwsRegion] Body param:
          #
          # @param stripe_collection_method [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod] Body param: The collection method for the customer's invoices.
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see MetronomeSDK::Models::V1::Customers::BillingConfigCreateParams
          def create(params)
            parsed, options = MetronomeSDK::V1::Customers::BillingConfigCreateParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            billing_provider_type =
              parsed.delete(:billing_provider_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["v1/customers/%1$s/billing-config/%2$s", customer_id, billing_provider_type],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Fetch the billing configuration for the given customer. This is a Plans
          # (deprecated) endpoint. New clients should implement using Contracts.
          #
          # @overload retrieve(customer_id:, billing_provider_type:, request_options: {})
          #
          # @param customer_id [String]
          #
          # @param billing_provider_type [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveParams::BillingProviderType] The billing provider (e.g. stripe)
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveParams
          def retrieve(params)
            parsed, options = MetronomeSDK::V1::Customers::BillingConfigRetrieveParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            billing_provider_type =
              parsed.delete(:billing_provider_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["v1/customers/%1$s/billing-config/%2$s", customer_id, billing_provider_type],
              model: MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse,
              options: options
            )
          end

          # Delete the billing configuration for a given customer. Note: this is unsupported
          # for Azure and AWS Marketplace customers. This is a Plans (deprecated) endpoint.
          # New clients should implement using Contracts.
          #
          # @overload delete(customer_id:, billing_provider_type:, request_options: {})
          #
          # @param customer_id [String]
          #
          # @param billing_provider_type [Symbol, MetronomeSDK::Models::V1::Customers::BillingConfigDeleteParams::BillingProviderType] The billing provider (e.g. stripe)
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see MetronomeSDK::Models::V1::Customers::BillingConfigDeleteParams
          def delete(params)
            parsed, options = MetronomeSDK::V1::Customers::BillingConfigDeleteParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            billing_provider_type =
              parsed.delete(:billing_provider_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["v1/customers/%1$s/billing-config/%2$s", customer_id, billing_provider_type],
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [MetronomeSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
