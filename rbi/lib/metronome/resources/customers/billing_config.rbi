# typed: strong

module Metronome
  module Resources
    class Customers
      class BillingConfig
        sig do
          params(
            customer_id: String,
            billing_provider_type: Symbol,
            billing_provider_customer_id: String,
            aws_product_code: String,
            aws_region: Symbol,
            stripe_collection_method: Symbol,
            request_options: Metronome::RequestOpts
          ).void
        end
        def create(
          customer_id:,
          billing_provider_type:,
          billing_provider_customer_id:,
          aws_product_code: nil,
          aws_region: nil,
          stripe_collection_method: nil,
          request_options: {}
        ); end

        sig do
          params(
            customer_id: String,
            billing_provider_type: Symbol,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::BillingConfigRetrieveResponse)
        end
        def retrieve(customer_id:, billing_provider_type:, request_options: {}); end

        sig do
          params(
            customer_id: String,
            billing_provider_type: Symbol,
            request_options: Metronome::RequestOpts
          ).void
        end
        def delete(customer_id:, billing_provider_type:, request_options: {}); end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end
