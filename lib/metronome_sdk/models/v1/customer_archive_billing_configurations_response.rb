# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#archive_billing_configurations
      class CustomerArchiveBillingConfigurationsResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::CustomerArchiveBillingConfigurationsResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::CustomerArchiveBillingConfigurationsResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::CustomerArchiveBillingConfigurationsResponse::Data]

        # @see MetronomeSDK::Models::V1::CustomerArchiveBillingConfigurationsResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute customer_billing_provider_configuration_ids
          #   Array of billing provider configuration IDs to archive
          #
          #   @return [Array<String>]
          required :customer_billing_provider_configuration_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute customer_id
          #   The customer ID the billing provider configurations belong to
          #
          #   @return [String]
          required :customer_id, String

          # @!method initialize(customer_billing_provider_configuration_ids:, customer_id:)
          #   @param customer_billing_provider_configuration_ids [Array<String>] Array of billing provider configuration IDs to archive
          #
          #   @param customer_id [String] The customer ID the billing provider configurations belong to
        end
      end
    end
  end
end
