# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Settings#upsert_avalara_credentials
      class SettingUpsertAvalaraCredentialsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute avalara_environment
        #   The Avalara environment to use (SANDBOX or PRODUCTION).
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment]
        required :avalara_environment,
                 enum: -> { MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment }

        # @!attribute avalara_password
        #   The password for the Avalara account.
        #
        #   @return [String]
        required :avalara_password, String

        # @!attribute avalara_username
        #   The username for the Avalara account.
        #
        #   @return [String]
        required :avalara_username, String

        # @!attribute delivery_method_ids
        #   The delivery method IDs of the billing provider configurations to update, can be
        #   found in the response of the `/listConfiguredBillingProviders` endpoint.
        #
        #   @return [Array<String>]
        required :delivery_method_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(avalara_environment:, avalara_password:, avalara_username:, delivery_method_ids:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsParams} for more
        #   details.
        #
        #   @param avalara_environment [Symbol, MetronomeSDK::Models::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment] The Avalara environment to use (SANDBOX or PRODUCTION).
        #
        #   @param avalara_password [String] The password for the Avalara account.
        #
        #   @param avalara_username [String] The username for the Avalara account.
        #
        #   @param delivery_method_ids [Array<String>] The delivery method IDs of the billing provider configurations to update, can be
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # The Avalara environment to use (SANDBOX or PRODUCTION).
        module AvalaraEnvironment
          extend MetronomeSDK::Internal::Type::Enum

          PRODUCTION = :PRODUCTION
          SANDBOX = :SANDBOX

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
