# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Packages#list_contracts_on_package
      class PackageListContractsOnPackageParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute package_id
        #
        #   @return [String]
        required :package_id, String

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

        # @!attribute covering_date
        #   Optional RFC 3339 timestamp. Only include contracts active on the provided date.
        #   This cannot be provided if starting_at filter is provided.
        #
        #   @return [Time, nil]
        optional :covering_date, Time

        # @!attribute include_archived
        #   Default false. Determines whether to include archived contracts in the results
        #
        #   @return [Boolean, nil]
        optional :include_archived, MetronomeSDK::Internal::Type::Boolean

        # @!attribute starting_at
        #   Optional RFC 3339 timestamp. Only include contracts that started on or after
        #   this date. This cannot be provided if covering_date filter is provided.
        #
        #   @return [Time, nil]
        optional :starting_at, Time

        # @!method initialize(package_id:, limit: nil, next_page: nil, covering_date: nil, include_archived: nil, starting_at: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::PackageListContractsOnPackageParams} for more
        #   details.
        #
        #   @param package_id [String]
        #
        #   @param limit [Integer] Max number of results that should be returned
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param covering_date [Time] Optional RFC 3339 timestamp. Only include contracts active on the provided date.
        #
        #   @param include_archived [Boolean] Default false. Determines whether to include archived contracts in the results
        #
        #   @param starting_at [Time] Optional RFC 3339 timestamp. Only include contracts that started on or after thi
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
