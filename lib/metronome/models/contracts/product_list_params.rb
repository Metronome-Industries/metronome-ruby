# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class ProductListParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        # @!attribute [r] limit
        #   Max number of results that should be returned
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :limit

        # @!attribute [r] next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!parse
        #   # @return [String]
        #   attr_writer :next_page

        # @!attribute [r] archive_filter
        #   Filter options for the product list
        #
        #   @return [Symbol, Metronome::Models::Contracts::ProductListParams::ArchiveFilter, nil]
        optional :archive_filter, enum: -> { Metronome::Models::Contracts::ProductListParams::ArchiveFilter }

        # @!parse
        #   # @return [Symbol, Metronome::Models::Contracts::ProductListParams::ArchiveFilter]
        #   attr_writer :archive_filter

        # @!parse
        #   # @param limit [Integer]
        #   # @param next_page [String]
        #   # @param archive_filter [String]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(limit: nil, next_page: nil, archive_filter: nil, request_options: {}, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # Filter options for the product list
        #
        # @example
        # ```ruby
        # case archive_filter
        # in :ARCHIVED
        #   # ...
        # in :NOT_ARCHIVED
        #   # ...
        # in :ALL
        #   # ...
        # end
        # ```
        class ArchiveFilter < Metronome::Enum
          ARCHIVED = :ARCHIVED
          NOT_ARCHIVED = :NOT_ARCHIVED
          ALL = :ALL

          finalize!
        end
      end
    end
  end
end
