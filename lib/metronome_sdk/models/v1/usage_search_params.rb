# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Usage#search
      class UsageSearchParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute transaction_ids
        #   The transaction IDs of the events to retrieve
        #
        #   @return [Array<String>]
        required :transaction_ids, MetronomeSDK::Internal::Type::ArrayOf[String], api_name: :transactionIds

        # @!method initialize(transaction_ids:, request_options: {})
        #   @param transaction_ids [Array<String>] The transaction IDs of the events to retrieve
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
