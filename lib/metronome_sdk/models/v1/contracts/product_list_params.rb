# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::Products#list
        class ProductListParams < MetronomeSDK::Internal::Type::BaseModel
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

          # @!attribute archive_filter
          #   Filter options for the product list. If not provided, defaults to not archived.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListParams::ArchiveFilter, nil]
          optional :archive_filter, enum: -> { MetronomeSDK::V1::Contracts::ProductListParams::ArchiveFilter }

          # @!method initialize(limit: nil, next_page: nil, archive_filter: nil, request_options: {})
          #   @param limit [Integer] Max number of results that should be returned
          #
          #   @param next_page [String] Cursor that indicates where the next page of results should start.
          #
          #   @param archive_filter [Symbol, MetronomeSDK::Models::V1::Contracts::ProductListParams::ArchiveFilter] Filter options for the product list. If not provided, defaults to not archived.
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          # Filter options for the product list. If not provided, defaults to not archived.
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
end
