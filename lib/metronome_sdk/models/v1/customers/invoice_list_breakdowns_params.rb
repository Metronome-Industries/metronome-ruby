# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Invoices#list_breakdowns
        class InvoiceListBreakdownsParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute ending_before
          #   RFC 3339 timestamp. Breakdowns will only be returned for time windows that end
          #   on or before this time.
          #
          #   @return [Time]
          required :ending_before, Time

          # @!attribute starting_on
          #   RFC 3339 timestamp. Breakdowns will only be returned for time windows that start
          #   on or after this time.
          #
          #   @return [Time]
          required :starting_on, Time

          # @!attribute credit_type_id
          #   Only return invoices for the specified credit type
          #
          #   @return [String, nil]
          optional :credit_type_id, String

          # @!attribute limit
          #   Max number of results that should be returned. For daily breakdowns, the
          #   response can return up to 35 days worth of breakdowns. For hourly breakdowns,
          #   the response can return up to 24 hours. If there are more results, a cursor to
          #   the next page is returned.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute next_page
          #   Cursor that indicates where the next page of results should start.
          #
          #   @return [String, nil]
          optional :next_page, String

          # @!attribute skip_zero_qty_line_items
          #   If set, all zero quantity line items will be filtered out of the response
          #
          #   @return [Boolean, nil]
          optional :skip_zero_qty_line_items, MetronomeSDK::Internal::Type::Boolean

          # @!attribute sort
          #   Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
          #   date_asc.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::Sort, nil]
          optional :sort, enum: -> { MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::Sort }

          # @!attribute status
          #   Invoice status, e.g. DRAFT or FINALIZED
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute window_size
          #   The granularity of the breakdowns to return. Defaults to day.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::WindowSize, nil]
          optional :window_size,
                   enum: -> { MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::WindowSize }

          # @!method initialize(customer_id:, ending_before:, starting_on:, credit_type_id: nil, limit: nil, next_page: nil, skip_zero_qty_line_items: nil, sort: nil, status: nil, window_size: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams} for more
          #   details.
          #
          #   @param customer_id [String]
          #
          #   @param ending_before [Time] RFC 3339 timestamp. Breakdowns will only be returned for time windows that end o
          #   ...
          #
          #   @param starting_on [Time] RFC 3339 timestamp. Breakdowns will only be returned for time windows that start
          #   ...
          #
          #   @param credit_type_id [String] Only return invoices for the specified credit type
          #
          #   @param limit [Integer] Max number of results that should be returned. For daily breakdowns, the respons
          #   ...
          #
          #   @param next_page [String] Cursor that indicates where the next page of results should start.
          #
          #   @param skip_zero_qty_line_items [Boolean] If set, all zero quantity line items will be filtered out of the response
          #
          #   @param sort [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::Sort] Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to date_a
          #   ...
          #
          #   @param status [String] Invoice status, e.g. DRAFT or FINALIZED
          #
          #   @param window_size [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::WindowSize] The granularity of the breakdowns to return. Defaults to day.
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

          # Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
          # date_asc.
          module Sort
            extend MetronomeSDK::Internal::Type::Enum

            DATE_ASC = :date_asc
            DATE_DESC = :date_desc

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The granularity of the breakdowns to return. Defaults to day.
          module WindowSize
            extend MetronomeSDK::Internal::Type::Enum

            HOUR = :HOUR
            DAY = :DAY

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
