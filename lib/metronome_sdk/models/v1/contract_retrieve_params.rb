# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#retrieve
      class ContractRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
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

        # @!attribute include_balance
        #   Include the balance of credits and commits in the response. Setting this flag
        #   may cause the query to be slower.
        #
        #   @return [Boolean, nil]
        optional :include_balance, MetronomeSDK::Internal::Type::Boolean

        # @!attribute include_ledgers
        #   Include commit ledgers in the response. Setting this flag may cause the query to
        #   be slower.
        #
        #   @return [Boolean, nil]
        optional :include_ledgers, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(contract_id:, customer_id:, include_balance: nil, include_ledgers: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractRetrieveParams} for more details.
        #
        #   @param contract_id [String]
        #
        #   @param customer_id [String]
        #
        #   @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag ma
        #   ...
        #
        #   @param include_ledgers [Boolean] Include commit ledgers in the response. Setting this flag may cause the query to
        #   ...
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
