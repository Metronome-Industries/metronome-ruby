# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#list
      class CustomerListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_ids
        #   Filter the customer list by customer_id. Up to 100 ids can be provided.
        #
        #   @return [Array<String>, nil]
        optional :customer_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute ingest_alias
        #   Filter the customer list by ingest_alias
        #
        #   @return [String, nil]
        optional :ingest_alias, String

        # @!attribute limit
        #   Max number of results that should be returned
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute only_archived
        #   Filter the customer list to only return archived customers. By default, only
        #   active customers are returned.
        #
        #   @return [Boolean, nil]
        optional :only_archived, MetronomeSDK::Internal::Type::Boolean

        # @!attribute salesforce_account_ids
        #   Filter the customer list by salesforce_account_id. Up to 100 ids can be
        #   provided.
        #
        #   @return [Array<String>, nil]
        optional :salesforce_account_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(customer_ids: nil, ingest_alias: nil, limit: nil, next_page: nil, only_archived: nil, salesforce_account_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CustomerListParams} for more details.
        #
        #   @param customer_ids [Array<String>] Filter the customer list by customer_id. Up to 100 ids can be provided.
        #
        #   @param ingest_alias [String] Filter the customer list by ingest_alias
        #
        #   @param limit [Integer] Max number of results that should be returned
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param only_archived [Boolean] Filter the customer list to only return archived customers. By default, only act
        #   ...
        #
        #   @param salesforce_account_ids [Array<String>] Filter the customer list by salesforce_account_id. Up to 100 ids can be provide
        #   ...
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
