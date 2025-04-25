# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#list
      class ContractListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute covering_date
        #   Optional RFC 3339 timestamp. If provided, the response will include only
        #   contracts effective on the provided date. This cannot be provided if the
        #   starting_at filter is provided.
        #
        #   @return [Time, nil]
        optional :covering_date, Time

        # @!attribute include_archived
        #   Include archived contracts in the response
        #
        #   @return [Boolean, nil]
        optional :include_archived, MetronomeSDK::Internal::Type::Boolean

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

        # @!attribute starting_at
        #   Optional RFC 3339 timestamp. If provided, the response will include only
        #   contracts where effective_at is on or after the provided date. This cannot be
        #   provided if the covering_date filter is provided.
        #
        #   @return [Time, nil]
        optional :starting_at, Time

        # @!method initialize(customer_id:, covering_date: nil, include_archived: nil, include_balance: nil, include_ledgers: nil, starting_at: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractListParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param covering_date [Time] Optional RFC 3339 timestamp. If provided, the response will include only contrac
        #   ...
        #
        #   @param include_archived [Boolean] Include archived contracts in the response
        #
        #   @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag ma
        #   ...
        #
        #   @param include_ledgers [Boolean] Include commit ledgers in the response. Setting this flag may cause the query to
        #   ...
        #
        #   @param starting_at [Time] Optional RFC 3339 timestamp. If provided, the response will include only contrac
        #   ...
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
