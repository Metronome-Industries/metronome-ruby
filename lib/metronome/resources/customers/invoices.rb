# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class Invoices
        # @param client [Metronome::Client]
        def initialize(client:)
          @client = client
        end

        # Fetch a specific invoice for a given customer.
        #
        # @param params [Hash{Symbol => Object}, Metronome::Models::Customers::InvoiceRetrieveParams] Attributes to send in this request.
        #   @option params [String] :customer_id Path param:
        #   @option params [String] :invoice_id Path param:
        #   @option params [Boolean, nil] :skip_zero_qty_line_items Query param: If set, all zero quantity line items will be filtered out of the
        #     response
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::Customers::InvoiceRetrieveResponse]
        def retrieve(params = {}, opts = {})
          parsed = Metronome::Models::Customers::InvoiceRetrieveParams.dump(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument :customer_id")
          end
          invoice_id = parsed.fetch(:invoice_id) do
            raise ArgumentError.new("missing required path argument :invoice_id")
          end
          req = {
            method: :get,
            path: "/customers/#{customer_id}/invoices/#{invoice_id}",
            query: parsed.except(:customer_id, :invoice_id),
            model: Metronome::Models::Customers::InvoiceRetrieveResponse
          }
          @client.request(req, opts)
        end

        # List all invoices for a given customer, optionally filtered by status, date
        #   range, and/or credit type.
        #
        # @param params [Hash{Symbol => Object}, Metronome::Models::Customers::InvoiceListParams] Attributes to send in this request.
        #   @option params [String] :customer_id Path param:
        #   @option params [String, nil] :credit_type_id Query param: Only return invoices for the specified credit type
        #   @option params [Time, nil] :ending_before Query param: RFC 3339 timestamp (exclusive). Invoices will only be returned for
        #     billing periods that end before this time.
        #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
        #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
        #   @option params [Boolean, nil] :skip_zero_qty_line_items Query param: If set, all zero quantity line items will be filtered out of the
        #     response
        #   @option params [Symbol, Metronome::Models::Customers::InvoiceListParams::Sort, nil] :sort Query param: Invoice sort order by issued_at, e.g. date_asc or date_desc.
        #     Defaults to date_asc.
        #   @option params [Time, nil] :starting_on Query param: RFC 3339 timestamp (inclusive). Invoices will only be returned for
        #     billing periods that start at or after this time.
        #   @option params [String, nil] :status Query param: Invoice status, e.g. DRAFT, FINALIZED, or VOID
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::CursorPage<Metronome::Models::Customers::Invoice>]
        def list(params = {}, opts = {})
          parsed = Metronome::Models::Customers::InvoiceListParams.dump(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument :customer_id")
          end
          req = {
            method: :get,
            path: "/customers/#{customer_id}/invoices",
            query: parsed.except(:customer_id),
            page: Metronome::CursorPage,
            model: Metronome::Models::Customers::Invoice
          }
          @client.request(req, opts)
        end

        # Add a one time charge to the specified invoice
        #
        # @param params [Hash{Symbol => Object}, Metronome::Models::Customers::InvoiceAddChargeParams] Attributes to send in this request.
        #   @option params [String] :customer_id Path param:
        #   @option params [String] :charge_id Body param: The Metronome ID of the charge to add to the invoice. Note that the
        #     charge must be on a product that is not on the current plan, and the product
        #     must have only fixed charges.
        #   @option params [String] :customer_plan_id Body param: The Metronome ID of the customer plan to add the charge to.
        #   @option params [String] :description Body param:
        #   @option params [Time] :invoice_start_timestamp Body param: The start_timestamp of the invoice to add the charge to.
        #   @option params [Float] :price Body param: The price of the charge. This price will match the currency on the
        #     invoice, e.g. USD cents.
        #   @option params [Float] :quantity Body param:
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::Customers::InvoiceAddChargeResponse]
        def add_charge(params = {}, opts = {})
          parsed = Metronome::Models::Customers::InvoiceAddChargeParams.dump(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument :customer_id")
          end
          req = {
            method: :post,
            path: "/customers/#{customer_id}/addCharge",
            body: parsed.except(:customer_id),
            model: Metronome::Models::Customers::InvoiceAddChargeResponse
          }
          @client.request(req, opts)
        end

        # List daily or hourly invoice breakdowns for a given customer, optionally
        #   filtered by status, date range, and/or credit type.
        #
        # @param params [Hash{Symbol => Object}, Metronome::Models::Customers::InvoiceListBreakdownsParams] Attributes to send in this request.
        #   @option params [String] :customer_id Path param:
        #   @option params [Time] :ending_before Query param: RFC 3339 timestamp. Breakdowns will only be returned for time
        #     windows that end on or before this time.
        #   @option params [Time] :starting_on Query param: RFC 3339 timestamp. Breakdowns will only be returned for time
        #     windows that start on or after this time.
        #   @option params [String, nil] :credit_type_id Query param: Only return invoices for the specified credit type
        #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned. For daily
        #     breakdowns, the response can return up to 35 days worth of breakdowns. For
        #     hourly breakdowns, the response can return up to 24 hours. If there are more
        #     results, a cursor to the next page is returned.
        #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
        #   @option params [Boolean, nil] :skip_zero_qty_line_items Query param: If set, all zero quantity line items will be filtered out of the
        #     response
        #   @option params [Symbol, Metronome::Models::Customers::InvoiceListBreakdownsParams::Sort, nil] :sort Query param: Invoice sort order by issued_at, e.g. date_asc or date_desc.
        #     Defaults to date_asc.
        #   @option params [String, nil] :status Query param: Invoice status, e.g. DRAFT or FINALIZED
        #   @option params [Symbol, Metronome::Models::Customers::InvoiceListBreakdownsParams::WindowSize, nil] :window_size Query param: The granularity of the breakdowns to return. Defaults to day.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::CursorPage<Metronome::Models::Customers::InvoiceListBreakdownsResponse>]
        def list_breakdowns(params = {}, opts = {})
          parsed = Metronome::Models::Customers::InvoiceListBreakdownsParams.dump(params)
          customer_id = parsed.fetch(:customer_id) do
            raise ArgumentError.new("missing required path argument :customer_id")
          end
          req = {
            method: :get,
            path: "/customers/#{customer_id}/invoices/breakdowns",
            query: parsed.except(:customer_id),
            page: Metronome::CursorPage,
            model: Metronome::Models::Customers::InvoiceListBreakdownsResponse
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
