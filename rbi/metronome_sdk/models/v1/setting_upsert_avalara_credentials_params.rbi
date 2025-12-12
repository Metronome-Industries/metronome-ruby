# typed: strong

module MetronomeSDK
  module Models
    module V1
      class SettingUpsertAvalaraCredentialsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The Avalara environment to use (SANDBOX or PRODUCTION).
        sig do
          returns(
            MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment::OrSymbol
          )
        end
        attr_accessor :avalara_environment

        # The password for the Avalara account.
        sig { returns(String) }
        attr_accessor :avalara_password

        # The username for the Avalara account.
        sig { returns(String) }
        attr_accessor :avalara_username

        # The delivery method IDs of the billing provider configurations to update, can be
        # found in the response of the `/listConfiguredBillingProviders` endpoint.
        sig { returns(T::Array[String]) }
        attr_accessor :delivery_method_ids

        # Commit transactions if you want Metronome tax calculations used for reporting
        # and tax filings.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :commit_transactions

        sig { params(commit_transactions: T::Boolean).void }
        attr_writer :commit_transactions

        sig do
          params(
            avalara_environment:
              MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment::OrSymbol,
            avalara_password: String,
            avalara_username: String,
            delivery_method_ids: T::Array[String],
            commit_transactions: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The Avalara environment to use (SANDBOX or PRODUCTION).
          avalara_environment:,
          # The password for the Avalara account.
          avalara_password:,
          # The username for the Avalara account.
          avalara_username:,
          # The delivery method IDs of the billing provider configurations to update, can be
          # found in the response of the `/listConfiguredBillingProviders` endpoint.
          delivery_method_ids:,
          # Commit transactions if you want Metronome tax calculations used for reporting
          # and tax filings.
          commit_transactions: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              avalara_environment:
                MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment::OrSymbol,
              avalara_password: String,
              avalara_username: String,
              delivery_method_ids: T::Array[String],
              commit_transactions: T::Boolean,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The Avalara environment to use (SANDBOX or PRODUCTION).
        module AvalaraEnvironment
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRODUCTION =
            T.let(
              :PRODUCTION,
              MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment::TaggedSymbol
            )
          SANDBOX =
            T.let(
              :SANDBOX,
              MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::SettingUpsertAvalaraCredentialsParams::AvalaraEnvironment::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
