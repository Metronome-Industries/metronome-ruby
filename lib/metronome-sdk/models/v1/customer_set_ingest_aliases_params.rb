# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomerSetIngestAliasesParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute ingest_aliases
        #
        #   @return [Array<String>]
        required :ingest_aliases, MetronomeSDK::ArrayOf[String]

        # @!parse
        #   # @param customer_id [String]
        #   # @param ingest_aliases [Array<String>]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(customer_id:, ingest_aliases:, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
