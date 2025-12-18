# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Settings
        # @return [MetronomeSDK::Resources::V1::Settings::BillingProviders]
        attr_reader :billing_providers

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsParams} for more
        # details.
        #
        # Set the Avalara credentials for some specified `delivery_method_ids`, which can
        # be found in the `/listConfiguredBillingProviders` response. This maps the
        # Avalara credentials to the appropriate billing entity. These credentials are
        # only used for PLG Invoicing today.
        #
        # @overload upsert_avalara_credentials(avalara_environment:, avalara_password:, avalara_username:, delivery_method_ids:, commit_transactions: nil, request_options: {})
        #
        # @param avalara_environment [Symbol, MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment] The Avalara environment to use (SANDBOX or PRODUCTION).
        #
        # @param avalara_password [String] The password for the Avalara account.
        #
        # @param avalara_username [String] The username for the Avalara account.
        #
        # @param delivery_method_ids [Array<String>] The delivery method IDs of the billing provider configurations to update, can be
        #
        # @param commit_transactions [Boolean] Commit transactions if you want Metronome tax calculations used for reporting an
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsResponse]
        #
        # @see MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsParams
        def upsert_avalara_credentials(params)
          parsed, options = MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/upsertAvalaraCredentials",
            body: parsed,
            model: MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
          @billing_providers = MetronomeSDK::Resources::V1::Settings::BillingProviders.new(client: client)
        end
      end
    end
  end
end
