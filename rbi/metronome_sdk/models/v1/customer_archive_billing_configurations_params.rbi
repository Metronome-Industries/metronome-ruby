# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerArchiveBillingConfigurationsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomerArchiveBillingConfigurationsParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Array of billing provider configuration IDs to archive
        sig { returns(T::Array[String]) }
        attr_accessor :customer_billing_provider_configuration_ids

        # The customer ID the billing provider configurations belong to
        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          params(
            customer_billing_provider_configuration_ids: T::Array[String],
            customer_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Array of billing provider configuration IDs to archive
          customer_billing_provider_configuration_ids:,
          # The customer ID the billing provider configurations belong to
          customer_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_billing_provider_configuration_ids: T::Array[String],
              customer_id: String,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
