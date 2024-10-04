# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class BillingConfig
        def initialize(client:)
          @client = client
        end

        # Set the billing configuration for a given customer.
        #
        # @param customer_id [String]
        #
        # @param billing_provider_type [Symbol, BillingProviderType] The billing provider (e.g. stripe)
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :billing_provider_customer_id The customer ID in the billing provider's system. For Azure, this is the
        #   subscription ID.
        # @option params [String, nil] :aws_product_code
        # @option params [Symbol, AwsRegion, nil] :aws_region
        # @option params [Symbol, StripeCollectionMethod, nil] :stripe_collection_method
        #
        # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        def create(customer_id, billing_provider_type, params = {}, opts = {})
          req = {
            method: :post,
            path: "/customers/#{customer_id}/billing-config/#{billing_provider_type}",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: NilClass
          }
          @client.request(req, opts)
        end

        # Fetch the billing configuration for the given customer.
        #
        # @param customer_id [String]
        # @param billing_provider_type [Symbol, BillingProviderType] The billing provider (e.g. stripe)
        # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::BillingConfigRetrieveResponse]
        def retrieve(customer_id, billing_provider_type, opts = {})
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
        # @param customer_id [String]
        # @param billing_provider_type [Symbol, BillingProviderType] The billing provider (e.g. stripe)
        # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        def delete(customer_id, billing_provider_type, opts = {})
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
