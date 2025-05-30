# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Invoices#list
        class InvoiceListParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute credit_type_id
          #   Only return invoices for the specified credit type
          #
          #   @return [String, nil]
          optional :credit_type_id, String

          # @!attribute ending_before
          #   RFC 3339 timestamp (exclusive). Invoices will only be returned for billing
          #   periods that end before this time.
          #
          #   @return [Time, nil]
          optional :ending_before, Time

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

          # @!attribute skip_zero_qty_line_items
          #   If set, all zero quantity line items will be filtered out of the response
          #
          #   @return [Boolean, nil]
          optional :skip_zero_qty_line_items, MetronomeSDK::Internal::Type::Boolean

          # @!attribute sort
          #   Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
          #   date_asc.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListParams::Sort, nil]
          optional :sort, enum: -> { MetronomeSDK::V1::Customers::InvoiceListParams::Sort }

          # @!attribute starting_on
          #   RFC 3339 timestamp (inclusive). Invoices will only be returned for billing
          #   periods that start at or after this time.
          #
          #   @return [Time, nil]
          optional :starting_on, Time

          # @!attribute status
          #   Invoice status, e.g. DRAFT, FINALIZED, or VOID
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(customer_id:, credit_type_id: nil, ending_before: nil, limit: nil, next_page: nil, skip_zero_qty_line_items: nil, sort: nil, starting_on: nil, status: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::InvoiceListParams} for more details.
          #
          #   @param customer_id [String]
          #
          #   @param credit_type_id [String] Only return invoices for the specified credit type
          #
          #   @param ending_before [Time] RFC 3339 timestamp (exclusive). Invoices will only be returned for billing perio
          #
          #   @param limit [Integer] Max number of results that should be returned
          #
          #   @param next_page [String] Cursor that indicates where the next page of results should start.
          #
          #   @param skip_zero_qty_line_items [Boolean] If set, all zero quantity line items will be filtered out of the response
          #
          #   @param sort [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListParams::Sort] Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to date_a
          #
          #   @param starting_on [Time] RFC 3339 timestamp (inclusive). Invoices will only be returned for billing perio
          #
          #   @param status [String] Invoice status, e.g. DRAFT, FINALIZED, or VOID
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
        end
      end
    end
  end
end
