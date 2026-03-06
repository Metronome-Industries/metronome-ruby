# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerArchiveBillingConfigurationsResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::CustomerArchiveBillingConfigurationsResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::Models::V1::CustomerArchiveBillingConfigurationsResponse::Data
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::CustomerArchiveBillingConfigurationsResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::CustomerArchiveBillingConfigurationsResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                MetronomeSDK::Models::V1::CustomerArchiveBillingConfigurationsResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CustomerArchiveBillingConfigurationsResponse::Data,
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
              customer_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of billing provider configuration IDs to archive
            customer_billing_provider_configuration_ids:,
            # The customer ID the billing provider configurations belong to
            customer_id:
          )
          end

          sig do
            override.returns(
              {
                customer_billing_provider_configuration_ids: T::Array[String],
                customer_id: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
