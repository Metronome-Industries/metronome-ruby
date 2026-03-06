# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#archive_billing_configurations
      class CustomerArchiveBillingConfigurationsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

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

        # @!method initialize(customer_billing_provider_configuration_ids:, customer_id:, request_options: {})
        #   @param customer_billing_provider_configuration_ids [Array<String>] Array of billing provider configuration IDs to archive
        #
        #   @param customer_id [String] The customer ID the billing provider configurations belong to
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
