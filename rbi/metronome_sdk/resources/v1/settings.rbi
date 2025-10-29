# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Settings
        sig { returns(MetronomeSDK::Resources::V1::Settings::BillingProviders) }
        attr_reader :billing_providers

        # Set the Avalara credentials for some specified `delivery_method_ids`, which can
        # be found in the `/listConfiguredBillingProviders` response. This maps the
        # Avalara credentials to the appropriate billing entity. These credentials are
        # only used for PLG Invoicing today.
        sig do
          params(
            avalara_environment:
              MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment::OrSymbol,
            avalara_password: String,
            avalara_username: String,
            delivery_method_ids: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsResponse
          )
        end
        def upsert_avalara_credentials(
          # The Avalara environment to use (SANDBOX or PRODUCTION).
          avalara_environment:,
          # The password for the Avalara account.
          avalara_password:,
          # The username for the Avalara account.
          avalara_username:,
          # The delivery method IDs of the billing provider configurations to update, can be
          # found in the response of the `/listConfiguredBillingProviders` endpoint.
          delivery_method_ids:,
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
