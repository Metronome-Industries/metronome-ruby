# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class ProductListParams < Metronome::BaseModel
        # @!attribute [rw] limit
        #   Max number of results that should be returned
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute [rw] next_page
        #   Cursor that indicates where the next page of results should start.
        #   @return [String]
        optional :next_page, String

        # @!attribute [rw] archive_filter
        #   Filter options for the product list
        #   @return [Symbol, Metronome::Models::Contracts::ProductListParams::ArchiveFilter]
        optional :archive_filter, enum: -> { Metronome::Models::Contracts::ProductListParams::ArchiveFilter }

        # Filter options for the product list
        class ArchiveFilter < Metronome::Enum
          ARCHIVED = :ARCHIVED
          NOT_ARCHIVED = :NOT_ARCHIVED
          ALL = :ALL
        end
      end
    end
  end
end
