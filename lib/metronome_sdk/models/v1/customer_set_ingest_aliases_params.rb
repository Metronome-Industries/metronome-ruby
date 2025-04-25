# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#set_ingest_aliases
      class CustomerSetIngestAliasesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute ingest_aliases
        #
        #   @return [Array<String>]
        required :ingest_aliases, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(customer_id:, ingest_aliases:, request_options: {})
        #   @param customer_id [String]
        #   @param ingest_aliases [Array<String>]
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
