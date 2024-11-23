# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class BillingConfig
        # @param client [Metronome::Client]
        def initialize(client:)
          @client = client
        end

        # Set the billing configuration for a given customer.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :customer_id Path param:
        #   @option params [Symbol, BillingProviderType] :billing_provider_type Path param: The billing provider (e.g. stripe)
        #   @option params [String] :billing_provider_customer_id Body param: The customer ID in the billing provider's system. For Azure, this is
        #     the subscription ID.
        #   @option params [String, nil] :aws_product_code Body param:
        #   @option params [Symbol, AwsRegion, nil] :aws_region Body param:
        #   @option params [Symbol, StripeCollectionMethod, nil] :stripe_collection_method Body param:
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        def create(params = {}, opts = {})
          customer_id = params.fetch(:customer_id) do
            raise ArgumentError, "missing required path argument :customer_id"
          end
          billing_provider_type = params.fetch(:billing_provider_type) do
            raise ArgumentError, "missing required path argument :billing_provider_type"
          end
          req = {
            method: :post,
            path: "/customers/#{customer_id}/billing-config/#{billing_provider_type}",
            body: params.except(:customer_id, :billing_provider_type),
            headers: {"Content-Type" => "application/json"},
            model: NilClass
          }
          @client.request(req, opts)
        end

        # Fetch the billing configuration for the given customer.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :customer_id
        #   @option params [Symbol, BillingProviderType] :billing_provider_type The billing provider (e.g. stripe)
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::BillingConfigRetrieveResponse]
        def retrieve(params = {}, opts = {})
          customer_id = params.fetch(:customer_id) do
            raise ArgumentError, "missing required path argument :customer_id"
          end
          billing_provider_type = params.fetch(:billing_provider_type) do
            raise ArgumentError, "missing required path argument :billing_provider_type"
          end
          req = {
            method: :get,
            path: "/customers/#{customer_id}/billing-config/#{billing_provider_type}",
            model: Metronome::Models::BillingConfigRetrieveResponse
          }
          @client.request(req, opts)
        end

        # Delete the billing configuration for a given customer. Note: this is unsupported
        #   for Azure and AWS Marketplace customers.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :customer_id
        #   @option params [Symbol, BillingProviderType] :billing_provider_type The billing provider (e.g. stripe)
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        def delete(params = {}, opts = {})
          customer_id = params.fetch(:customer_id) do
            raise ArgumentError, "missing required path argument :customer_id"
          end
          billing_provider_type = params.fetch(:billing_provider_type) do
            raise ArgumentError, "missing required path argument :billing_provider_type"
          end
          req = {
            method: :delete,
            path: "/customers/#{customer_id}/billing-config/#{billing_provider_type}",
            model: NilClass
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
