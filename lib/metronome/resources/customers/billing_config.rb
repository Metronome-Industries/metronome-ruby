# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class BillingConfig
        # Set the billing configuration for a given customer.
        #
        # @param params [Metronome::Models::Customers::BillingConfigCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id Path param:
        #
        #   @option params [Symbol, Metronome::Models::Customers::BillingConfigCreateParams::BillingProviderType] :billing_provider_type Path param: The billing provider (e.g. stripe)
        #
        #   @option params [String] :billing_provider_customer_id Body param: The customer ID in the billing provider's system. For Azure, this is
        #     the subscription ID.
        #
        #   @option params [String] :aws_product_code Body param:
        #
        #   @option params [Symbol, Metronome::Models::Customers::BillingConfigCreateParams::AwsRegion] :aws_region Body param:
        #
        #   @option params [Symbol, Metronome::Models::Customers::BillingConfigCreateParams::StripeCollectionMethod] :stripe_collection_method Body param:
        #
        #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def create(params)
          parsed, options = Metronome::Models::Customers::BillingConfigCreateParams.dump_request(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          billing_provider_type = parsed.fetch(:billing_provider_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :post,
            path: ["customers/%0s/billing-config/%1s", customer_id, billing_provider_type],
            body: parsed.except(:customer_id, :billing_provider_type),
            model: NilClass,
            options: options
          )
        end

        # Fetch the billing configuration for the given customer.
        #
        # @param params [Metronome::Models::Customers::BillingConfigRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id
        #
        #   @option params [Symbol, Metronome::Models::Customers::BillingConfigRetrieveParams::BillingProviderType] :billing_provider_type The billing provider (e.g. stripe)
        #
        #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Metronome::Models::Customers::BillingConfigRetrieveResponse]
        #
        def retrieve(params)
          parsed, options = Metronome::Models::Customers::BillingConfigRetrieveParams.dump_request(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          billing_provider_type = parsed.fetch(:billing_provider_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["customers/%0s/billing-config/%1s", customer_id, billing_provider_type],
            model: Metronome::Models::Customers::BillingConfigRetrieveResponse,
            options: options
          )
        end

        # Delete the billing configuration for a given customer. Note: this is unsupported
        #   for Azure and AWS Marketplace customers.
        #
        # @param params [Metronome::Models::Customers::BillingConfigDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :customer_id
        #
        #   @option params [Symbol, Metronome::Models::Customers::BillingConfigDeleteParams::BillingProviderType] :billing_provider_type The billing provider (e.g. stripe)
        #
        #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def delete(params)
          parsed, options = Metronome::Models::Customers::BillingConfigDeleteParams.dump_request(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          billing_provider_type = parsed.fetch(:billing_provider_type) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :delete,
            path: ["customers/%0s/billing-config/%1s", customer_id, billing_provider_type],
            model: NilClass,
            options: options
          )
        end

        # @param client [Metronome::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
