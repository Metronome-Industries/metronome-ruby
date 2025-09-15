# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#retrieve_billing_configurations
      class CustomerRetrieveBillingConfigurationsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute include_archived
        #
        #   @return [Boolean, nil]
        optional :include_archived, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(customer_id:, include_archived: nil, request_options: {})
        #   @param customer_id [String]
        #   @param include_archived [Boolean]
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
