# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class InvoiceListParams < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute credit_type_id
        #   Only return invoices for the specified credit type
        #
        #   @return [String]
        optional :credit_type_id, String

        # @!attribute ending_before
        #   RFC 3339 timestamp (exclusive). Invoices will only be returned for billing periods that end before this time.
        #
        #   @return [Time]
        optional :ending_before, Time

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

        # @!attribute skip_zero_qty_line_items
        #   If set, all zero quantity line items will be filtered out of the response
        #
        #   @return [Boolean]
        optional :skip_zero_qty_line_items, Metronome::BooleanModel

        # @!attribute sort
        #   Invoice sort order by issued_at, e.g. date_asc or date_desc.  Defaults to date_asc.
        #
        #   @return [Symbol, Metronome::Models::Customers::InvoiceListParams::Sort]
        optional :sort, enum: -> { Metronome::Models::Customers::InvoiceListParams::Sort }

        # @!attribute starting_on
        #   RFC 3339 timestamp (inclusive). Invoices will only be returned for billing periods that start at or after this time.
        #
        #   @return [Time]
        optional :starting_on, Time

        # @!attribute status
        #   Invoice status, e.g. DRAFT, FINALIZED, or VOID
        #
        #   @return [String]
        optional :status, String

        # @!parse
        #   # @param customer_id [String]
        #   #
        #   # @param credit_type_id [String] Only return invoices for the specified credit type
        #   #
        #   # @param ending_before [String] RFC 3339 timestamp (exclusive). Invoices will only be returned for billing
        #   #   periods that end before this time.
        #   #
        #   # @param limit [Integer] Max number of results that should be returned
        #   #
        #   # @param next_page [String] Cursor that indicates where the next page of results should start.
        #   #
        #   # @param skip_zero_qty_line_items [Boolean] If set, all zero quantity line items will be filtered out of the response
        #   #
        #   # @param sort [String] Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
        #   #   date_asc.
        #   #
        #   # @param starting_on [String] RFC 3339 timestamp (inclusive). Invoices will only be returned for billing
        #   #   periods that start at or after this time.
        #   #
        #   # @param status [String] Invoice status, e.g. DRAFT, FINALIZED, or VOID
        #   #
        #   def initialize(
        #     customer_id:,
        #     credit_type_id: nil,
        #     ending_before: nil,
        #     limit: nil,
        #     next_page: nil,
        #     skip_zero_qty_line_items: nil,
        #     sort: nil,
        #     starting_on: nil,
        #     status: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # Invoice sort order by issued_at, e.g. date_asc or date_desc.  Defaults to date_asc.
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
      end
    end
  end
end
