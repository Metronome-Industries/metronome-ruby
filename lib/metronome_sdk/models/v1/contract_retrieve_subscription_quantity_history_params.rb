# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#retrieve_subscription_quantity_history
      class ContractRetrieveSubscriptionQuantityHistoryParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute contract_id
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute subscription_id
        #
        #   @return [String]
        required :subscription_id, String

        # @!method initialize(contract_id:, customer_id:, subscription_id:, request_options: {})
        #   @param contract_id [String]
        #   @param customer_id [String]
        #   @param subscription_id [String]
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
