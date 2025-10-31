# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Settings
        class BillingProviders
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Settings::BillingProviderCreateParams} for more
          # details.
          #
          # Set up account-level configuration for a billing provider. Once configured,
          # individual contracts across customers can be mapped to this configuration using
          # the returned delivery_method_id.
          #
          # @overload create(billing_provider:, configuration:, delivery_method:, request_options: {})
          #
          # @param billing_provider [Symbol, MetronomeSDK::Models::V1::Settings::BillingProviderCreateParams::BillingProvider] The billing provider set for this configuration.
          #
          # @param configuration [Hash{Symbol=>Object}] Account-level configuration for the billing provider. The structure of this obje
          #
          # @param delivery_method [Symbol, MetronomeSDK::Models::V1::Settings::BillingProviderCreateParams::DeliveryMethod] The method to use for delivering invoices for this configuration.
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse]
          #
          # @see MetronomeSDK::Models::V1::Settings::BillingProviderCreateParams
          def create(params)
            parsed, options = MetronomeSDK::V1::Settings::BillingProviderCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/setUpBillingProvider",
              body: parsed,
              model: MetronomeSDK::Models::V1::Settings::BillingProviderCreateResponse,
              options: options
            )
          end

          # Lists all configured billing providers and their delivery method configurations
          # for your account. Returns provider details, delivery method IDs, and
          # configuration settings needed for mapping individual customer contracts to
          # billing integrations.
          #
          # @overload list(next_page: nil, request_options: {})
          #
          # @param next_page [String, nil] The cursor to the next page of results
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Settings::BillingProviderListResponse]
          #
          # @see MetronomeSDK::Models::V1::Settings::BillingProviderListParams
          def list(params = {})
            parsed, options = MetronomeSDK::V1::Settings::BillingProviderListParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/listConfiguredBillingProviders",
              body: parsed,
              model: MetronomeSDK::Models::V1::Settings::BillingProviderListResponse,
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
