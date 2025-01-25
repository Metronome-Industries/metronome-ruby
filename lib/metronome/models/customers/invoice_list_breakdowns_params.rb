# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class InvoiceListBreakdownsParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute ending_before
        #   RFC 3339 timestamp. Breakdowns will only be returned for time windows that end
        #     on or before this time.
        #
        #   @return [Time]
        required :ending_before, Time

        # @!attribute starting_on
        #   RFC 3339 timestamp. Breakdowns will only be returned for time windows that start
        #     on or after this time.
        #
        #   @return [Time]
        required :starting_on, Time

        # @!attribute [r] credit_type_id
        #   Only return invoices for the specified credit type
        #
        #   @return [String, nil]
        optional :credit_type_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :credit_type_id

        # @!attribute [r] limit
        #   Max number of results that should be returned. For daily breakdowns, the
        #     response can return up to 35 days worth of breakdowns. For hourly breakdowns,
        #     the response can return up to 24 hours. If there are more results, a cursor to
        #     the next page is returned.
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

        # @!attribute [r] skip_zero_qty_line_items
        #   If set, all zero quantity line items will be filtered out of the response
        #
        #   @return [Boolean, nil]
        optional :skip_zero_qty_line_items, Metronome::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :skip_zero_qty_line_items

        # @!attribute [r] sort
        #   Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
        #     date_asc.
        #
        #   @return [Symbol, Metronome::Models::Customers::InvoiceListBreakdownsParams::Sort, nil]
        optional :sort, enum: -> { Metronome::Models::Customers::InvoiceListBreakdownsParams::Sort }

        # @!parse
        #   # @return [Symbol, Metronome::Models::Customers::InvoiceListBreakdownsParams::Sort]
        #   attr_writer :sort

        # @!attribute [r] status
        #   Invoice status, e.g. DRAFT or FINALIZED
        #
        #   @return [String, nil]
        optional :status, String

        # @!parse
        #   # @return [String]
        #   attr_writer :status

        # @!attribute [r] window_size
        #   The granularity of the breakdowns to return. Defaults to day.
        #
        #   @return [Symbol, Metronome::Models::Customers::InvoiceListBreakdownsParams::WindowSize, nil]
        optional :window_size,
                 enum: -> {
                   Metronome::Models::Customers::InvoiceListBreakdownsParams::WindowSize
                 }

        # @!parse
        #   # @return [Symbol, Metronome::Models::Customers::InvoiceListBreakdownsParams::WindowSize]
        #   attr_writer :window_size

        # @!parse
        #   # @param customer_id [String]
        #   # @param ending_before [String]
        #   # @param starting_on [String]
        #   # @param credit_type_id [String]
        #   # @param limit [Integer]
        #   # @param next_page [String]
        #   # @param skip_zero_qty_line_items [Boolean]
        #   # @param sort [String]
        #   # @param status [String]
        #   # @param window_size [String]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
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
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
        #   date_asc.
        #
        # @example
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
