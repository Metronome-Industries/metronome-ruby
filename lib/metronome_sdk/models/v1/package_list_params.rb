# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Packages#list
      class PackageListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute limit
        #   The maximum number of packages to return. Defaults to 10.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute archive_filter
        #   Filter packages by archived status. Defaults to NOT_ARCHIVED.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::PackageListParams::ArchiveFilter, nil]
        optional :archive_filter, enum: -> { MetronomeSDK::V1::PackageListParams::ArchiveFilter }

        # @!method initialize(limit: nil, next_page: nil, archive_filter: nil, request_options: {})
        #   @param limit [Integer] The maximum number of packages to return. Defaults to 10.
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param archive_filter [Symbol, MetronomeSDK::Models::V1::PackageListParams::ArchiveFilter] Filter packages by archived status. Defaults to NOT_ARCHIVED.
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # Filter packages by archived status. Defaults to NOT_ARCHIVED.
        module ArchiveFilter
          extend MetronomeSDK::Internal::Type::Enum

          ARCHIVED = :ARCHIVED
          NOT_ARCHIVED = :NOT_ARCHIVED
          ALL = :ALL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
