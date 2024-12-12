# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class InvoiceListBreakdownsParams < Metronome::BaseModel
        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] ending_before
        #   RFC 3339 timestamp. Breakdowns will only be returned for time windows that end on or before this time.
        #   @return [Time]
        required :ending_before, Time

        # @!attribute [rw] starting_on
        #   RFC 3339 timestamp. Breakdowns will only be returned for time windows that start on or after this time.
        #   @return [Time]
        required :starting_on, Time

        # @!attribute [rw] credit_type_id
        #   Only return invoices for the specified credit type
        #   @return [String]
        optional :credit_type_id, String

        # @!attribute [rw] limit
        #   Max number of results that should be returned. For daily breakdowns, the response can return up to 35 days worth of breakdowns. For hourly breakdowns, the response can return up to 24 hours. If there are more results, a cursor to the next page is returned.
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute [rw] next_page
        #   Cursor that indicates where the next page of results should start.
        #   @return [String]
        optional :next_page, String

        # @!attribute [rw] skip_zero_qty_line_items
        #   If set, all zero quantity line items will be filtered out of the response
        #   @return [Boolean]
        optional :skip_zero_qty_line_items, Metronome::BooleanModel

        # @!attribute [rw] sort
        #   Invoice sort order by issued_at, e.g. date_asc or date_desc.  Defaults to date_asc.
        #   @return [Symbol, Metronome::Models::Customers::InvoiceListBreakdownsParams::Sort]
        optional :sort, enum: -> { Metronome::Models::Customers::InvoiceListBreakdownsParams::Sort }

        # @!attribute [rw] status
        #   Invoice status, e.g. DRAFT or FINALIZED
        #   @return [String]
        optional :status, String

        # @!attribute [rw] window_size
        #   The granularity of the breakdowns to return. Defaults to day.
        #   @return [Symbol, Metronome::Models::Customers::InvoiceListBreakdownsParams::WindowSize]
        optional :window_size,
                 enum: -> {
                   Metronome::Models::Customers::InvoiceListBreakdownsParams::WindowSize
                 }

        # Invoice sort order by issued_at, e.g. date_asc or date_desc.  Defaults to date_asc.
        class Sort < Metronome::Enum
          DATE_ASC = :date_asc
          DATE_DESC = :date_desc
        end

        # The granularity of the breakdowns to return. Defaults to day.
        class WindowSize < Metronome::Enum
          HOUR = :HOUR
          DAY = :DAY
        end
      end
    end
  end
end
