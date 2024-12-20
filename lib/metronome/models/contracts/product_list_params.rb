# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class ProductListParams < Metronome::BaseModel
        # @!attribute limit
        #   Max number of results that should be returned
        #
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String]
        optional :next_page, String

        # @!attribute archive_filter
        #   Filter options for the product list
        #
        #   @return [Symbol, Metronome::Models::Contracts::ProductListParams::ArchiveFilter]
        optional :archive_filter, enum: -> { Metronome::Models::Contracts::ProductListParams::ArchiveFilter }

        # @!parse
        #   # @param limit [Integer, nil] Max number of results that should be returned
        #   #
        #   # @param next_page [String, nil] Cursor that indicates where the next page of results should start.
        #   #
        #   # @param archive_filter [String, nil] Filter options for the product list
        #   #
        #   def initialize(limit: nil, next_page: nil, archive_filter: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # Filter options for the product list
        #
        # @example
        #
        # ```ruby
        # case enum
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
