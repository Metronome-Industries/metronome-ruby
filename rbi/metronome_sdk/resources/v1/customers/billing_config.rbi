# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class BillingConfig
          # Set the billing configuration for a given customer.
          sig do
            params(
              customer_id: String,
              billing_provider_type:
                MetronomeSDK::V1::Customers::BillingConfigCreateParams::BillingProviderType::OrSymbol,
              billing_provider_customer_id: String,
              aws_product_code: String,
              aws_region:
                MetronomeSDK::V1::Customers::BillingConfigCreateParams::AwsRegion::OrSymbol,
              stripe_collection_method:
                MetronomeSDK::V1::Customers::BillingConfigCreateParams::StripeCollectionMethod::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).void
          end
          def create(
            # Path param:
            customer_id:,
            # Path param: The billing provider (e.g. stripe)
            billing_provider_type:,
            # Body param: The customer ID in the billing provider's system. For Azure, this is
            # the subscription ID.
            billing_provider_customer_id:,
            # Body param:
            aws_product_code: nil,
            # Body param:
            aws_region: nil,
            # Body param: The collection method for the customer's invoices. NOTE:
            # `auto_charge_payment_intent` and `manually_charge_payment_intent` are in beta.
            stripe_collection_method: nil,
            request_options: {}
          )
          end

          # Fetch the billing configuration for the given customer.
          sig do
            params(
              customer_id: String,
              billing_provider_type:
                MetronomeSDK::V1::Customers::BillingConfigRetrieveParams::BillingProviderType::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Customers::BillingConfigRetrieveResponse
            )
          end
          def retrieve(
            customer_id:,
            # The billing provider (e.g. stripe)
            billing_provider_type:,
            request_options: {}
          )
          end

          # Delete the billing configuration for a given customer. Note: this is unsupported
          # for Azure and AWS Marketplace customers.
          sig do
            params(
              customer_id: String,
              billing_provider_type:
                MetronomeSDK::V1::Customers::BillingConfigDeleteParams::BillingProviderType::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            customer_id:,
            # The billing provider (e.g. stripe)
            billing_provider_type:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
