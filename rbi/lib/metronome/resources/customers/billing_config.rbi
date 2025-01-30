# typed: strong

module Metronome
  module Resources
    class Customers
      class BillingConfig
        sig do
          params(
            params: T.any(
              Metronome::Models::Customers::BillingConfigCreateParams,
              T::Hash[Symbol, T.anything]
            ),
            customer_id: String,
            billing_provider_type: Symbol,
            billing_provider_customer_id: String,
            aws_product_code: String,
            aws_region: Symbol,
            stripe_collection_method: Symbol,
            request_options: Metronome::RequestOpts
          ).returns(NilClass)
        end
        def create(
          params,
          customer_id:,
          billing_provider_type:,
          billing_provider_customer_id:,
          aws_product_code:,
          aws_region:,
          stripe_collection_method:,
          request_options: {}
        ); end

        sig do
          params(
            params: T.any(
              Metronome::Models::Customers::BillingConfigRetrieveParams,
              T::Hash[Symbol, T.anything]
            ),
            customer_id: String,
            billing_provider_type: Symbol,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::BillingConfigRetrieveResponse)
        end
        def retrieve(params, customer_id:, billing_provider_type:, request_options: {}); end

        sig do
          params(
            params: T.any(
              Metronome::Models::Customers::BillingConfigDeleteParams,
              T::Hash[Symbol, T.anything]
            ),
            customer_id: String,
            billing_provider_type: Symbol,
            request_options: Metronome::RequestOpts
          ).returns(NilClass)
        end
        def delete(params, customer_id:, billing_provider_type:, request_options: {}); end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end
