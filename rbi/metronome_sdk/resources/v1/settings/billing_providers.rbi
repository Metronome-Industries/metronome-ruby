# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Settings
        class BillingProviders
          # Set up account-level configuration for a billing provider. Once configured,
          # individual contracts across customers can be mapped to this configuration using
          # the returned delivery_method_id.
          sig do
            params(
              billing_provider:
                MetronomeSDK::V1::Settings::BillingProviderCreateParams::BillingProvider::OrSymbol,
              configuration: T::Hash[Symbol, T.anything],
              delivery_method:
                MetronomeSDK::V1::Settings::BillingProviderCreateParams::DeliveryMethod::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse
            )
          end
          def create(
            # The billing provider set for this configuration.
            billing_provider:,
            # Account-level configuration for the billing provider. The structure of this
            # object is specific to the billing provider and delivery provider combination.
            # See examples below.
            configuration:,
            # The method to use for delivering invoices for this configuration.
            delivery_method:,
            request_options: {}
          )
          end

          # Lists all configured billing providers and their delivery method configurations
          # for your account. Returns provider details, delivery method IDs, and
          # configuration settings needed for mapping individual customer contracts to
          # billing integrations.
          sig do
            params(
              next_page: T.nilable(String),
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Settings::BillingProviderListResponse
            )
          end
          def list(
            # The cursor to the next page of results
            next_page: nil,
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
