# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceListParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute [r] credit_type_id
          #   Only return invoices for the specified credit type
          #
          #   @return [String, nil]
          optional :credit_type_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :credit_type_id

          # @!attribute [r] ending_before
          #   RFC 3339 timestamp (exclusive). Invoices will only be returned for billing
          #     periods that end before this time.
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

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

          # @!attribute [r] skip_zero_qty_line_items
          #   If set, all zero quantity line items will be filtered out of the response
          #
          #   @return [Boolean, nil]
          optional :skip_zero_qty_line_items, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :skip_zero_qty_line_items

          # @!attribute [r] sort
          #   Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
          #     date_asc.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListParams::Sort, nil]
          optional :sort, enum: -> { MetronomeSDK::Models::V1::Customers::InvoiceListParams::Sort }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListParams::Sort]
          #   attr_writer :sort

          # @!attribute [r] starting_on
          #   RFC 3339 timestamp (inclusive). Invoices will only be returned for billing
          #     periods that start at or after this time.
          #
          #   @return [Time, nil]
          optional :starting_on, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :starting_on

          # @!attribute [r] status
          #   Invoice status, e.g. DRAFT, FINALIZED, or VOID
          #
          #   @return [String, nil]
          optional :status, String

          # @!parse
          #   # @return [String]
          #   attr_writer :status

          # @!parse
          #   # @param customer_id [String]
          #   # @param credit_type_id [String]
          #   # @param ending_before [Time]
          #   # @param limit [Integer]
          #   # @param next_page [String]
          #   # @param skip_zero_qty_line_items [Boolean]
          #   # @param sort [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListParams::Sort]
          #   # @param starting_on [Time]
          #   # @param status [String]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
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
          #     request_options: {},
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
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
          class Sort < MetronomeSDK::Enum
            DATE_ASC = :date_asc
            DATE_DESC = :date_desc

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end
    end
  end
end
