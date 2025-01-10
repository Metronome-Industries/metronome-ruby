# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class InvoiceListBreakdownsParams < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute ending_before
        #   RFC 3339 timestamp. Breakdowns will only be returned for time windows that end on or before this time.
        #
        #   @return [Time]
        required :ending_before, Time

        # @!attribute starting_on
        #   RFC 3339 timestamp. Breakdowns will only be returned for time windows that start on or after this time.
        #
        #   @return [Time]
        required :starting_on, Time

        # @!attribute credit_type_id
        #   Only return invoices for the specified credit type
        #
        #   @return [String]
        optional :credit_type_id, String

        # @!attribute limit
        #   Max number of results that should be returned. For daily breakdowns, the response can return up to 35 days worth of breakdowns. For hourly breakdowns, the response can return up to 24 hours. If there are more results, a cursor to the next page is returned.
        #
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String]
        optional :next_page, String

        # @!attribute skip_zero_qty_line_items
        #   If set, all zero quantity line items will be filtered out of the response
        #
        #   @return [Boolean]
        optional :skip_zero_qty_line_items, Metronome::BooleanModel

        # @!attribute sort
        #   Invoice sort order by issued_at, e.g. date_asc or date_desc.  Defaults to date_asc.
        #
        #   @return [Symbol, Metronome::Models::Customers::InvoiceListBreakdownsParams::Sort]
        optional :sort, enum: -> { Metronome::Models::Customers::InvoiceListBreakdownsParams::Sort }

        # @!attribute status
        #   Invoice status, e.g. DRAFT or FINALIZED
        #
        #   @return [String]
        optional :status, String

        # @!attribute window_size
        #   The granularity of the breakdowns to return. Defaults to day.
        #
        #   @return [Symbol, Metronome::Models::Customers::InvoiceListBreakdownsParams::WindowSize]
        optional :window_size,
                 enum: -> {
                   Metronome::Models::Customers::InvoiceListBreakdownsParams::WindowSize
                 }

        # @!parse
        #   # @param customer_id [String]
        #   #
        #   # @param ending_before [String] RFC 3339 timestamp. Breakdowns will only be returned for time windows that end
        #   #   on or before this time.
        #   #
        #   # @param starting_on [String] RFC 3339 timestamp. Breakdowns will only be returned for time windows that start
        #   #   on or after this time.
        #   #
        #   # @param credit_type_id [String] Only return invoices for the specified credit type
        #   #
        #   # @param limit [Integer] Max number of results that should be returned. For daily breakdowns, the
        #   #   response can return up to 35 days worth of breakdowns. For hourly breakdowns,
        #   #   the response can return up to 24 hours. If there are more results, a cursor to
        #   #   the next page is returned.
        #   #
        #   # @param next_page [String] Cursor that indicates where the next page of results should start.
        #   #
        #   # @param skip_zero_qty_line_items [Boolean] If set, all zero quantity line items will be filtered out of the response
        #   #
        #   # @param sort [String] Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
        #   #   date_asc.
        #   #
        #   # @param status [String] Invoice status, e.g. DRAFT or FINALIZED
        #   #
        #   # @param window_size [String] The granularity of the breakdowns to return. Defaults to day.
        #   #
        #   def initialize(
        #     customer_id:,
        #     ending_before:,
        #     starting_on:,
        #     credit_type_id: nil,
        #     limit: nil,
        #     next_page: nil,
        #     skip_zero_qty_line_items: nil,
        #     sort: nil,
        #     status: nil,
        #     window_size: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # Invoice sort order by issued_at, e.g. date_asc or date_desc.  Defaults to date_asc.
        #
        # @example
        #
        # ```ruby
        # case sort
        # in :date_asc
        #   # ...
        # in :date_desc
        #   # ...
        # end
        # ```
        class Sort < Metronome::Enum
          DATE_ASC = :date_asc
          DATE_DESC = :date_desc

          finalize!
        end

        # The granularity of the breakdowns to return. Defaults to day.
        #
        # @example
        #
        # ```ruby
        # case window_size
        # in :HOUR
        #   # ...
        # in :DAY
        #   # ...
        # end
        # ```
        class WindowSize < Metronome::Enum
          HOUR = :HOUR
          DAY = :DAY

          finalize!
        end
      end
    end
  end
end
