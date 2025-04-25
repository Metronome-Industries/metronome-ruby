# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CreditGrants#list
      class CreditGrantListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

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

        # @!attribute credit_grant_ids
        #   An array of credit grant IDs. If this is specified, neither credit_type_ids nor
        #   customer_ids may be specified.
        #
        #   @return [Array<String>, nil]
        optional :credit_grant_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute credit_type_ids
        #   An array of credit type IDs. This must not be specified if credit_grant_ids is
        #   specified.
        #
        #   @return [Array<String>, nil]
        optional :credit_type_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute customer_ids
        #   An array of Metronome customer IDs. This must not be specified if
        #   credit_grant_ids is specified.
        #
        #   @return [Array<String>, nil]
        optional :customer_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute effective_before
        #   Only return credit grants that are effective before this timestamp (exclusive).
        #
        #   @return [Time, nil]
        optional :effective_before, Time

        # @!attribute not_expiring_before
        #   Only return credit grants that expire at or after this timestamp.
        #
        #   @return [Time, nil]
        optional :not_expiring_before, Time

        # @!method initialize(limit: nil, next_page: nil, credit_grant_ids: nil, credit_type_ids: nil, customer_ids: nil, effective_before: nil, not_expiring_before: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CreditGrantListParams} for more details.
        #
        #   @param limit [Integer] Max number of results that should be returned
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param credit_grant_ids [Array<String>] An array of credit grant IDs. If this is specified, neither credit_type_ids nor
        #   ...
        #
        #   @param credit_type_ids [Array<String>] An array of credit type IDs. This must not be specified if credit_grant_ids is s
        #   ...
        #
        #   @param customer_ids [Array<String>] An array of Metronome customer IDs. This must not be specified if credit_grant_i
        #   ...
        #
        #   @param effective_before [Time] Only return credit grants that are effective before this timestamp (exclusive).
        #
        #   @param not_expiring_before [Time] Only return credit grants that expire at or after this timestamp.
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
