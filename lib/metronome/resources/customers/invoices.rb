# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class Invoices
        def initialize(client:)
          @client = client
        end

        # Fetch a specific invoice for a given customer.
        #
        # @param customer_id [String]
        #
        # @param invoice_id [String]
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Boolean] :skip_zero_qty_line_items If set, all zero quantity line items will be filtered out of the response
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::InvoiceRetrieveResponse]
        def retrieve(customer_id, invoice_id, params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/customers/#{customer_id}/invoices/#{invoice_id}"
          req[:query] = params
          req[:model] = Metronome::Models::InvoiceRetrieveResponse
          @client.request(req, opts)
        end

        # List all invoices for a given customer, optionally filtered by status, date
        #   range, and/or credit type.
        #
        # @param customer_id [String]
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :credit_type_id Only return invoices for the specified credit type
        # @option params [DateTime] :ending_before RFC 3339 timestamp (exclusive). Invoices will only be returned for billing
        #   periods that end before this time.
        # @option params [Integer] :limit Max number of results that should be returned
        # @option params [String] :next_page Cursor that indicates where the next page of results should start.
        # @option params [Boolean] :skip_zero_qty_line_items If set, all zero quantity line items will be filtered out of the response
        # @option params [Symbol] :sort Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
        #   date_asc.
        # @option params [DateTime] :starting_on RFC 3339 timestamp (inclusive). Invoices will only be returned for billing
        #   periods that start at or after this time.
        # @option params [String] :status Invoice status, e.g. DRAFT, FINALIZED, or VOID
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::CursorPage<Metronome::Models::Invoice>]
        def list(customer_id, params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/customers/#{customer_id}/invoices"
          req[:query] = params
          req[:page] = Metronome::CursorPage
          req[:model] = Metronome::Models::Invoice
          @client.request(req, opts)
        end

        # Add a one time charge to the specified invoice
        #
        # @param customer_id [String]
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :charge_id The Metronome ID of the charge to add to the invoice. Note that the charge must
        #   be on a product that is not on the current plan, and the product must have only
        #   fixed charges.
        # @option params [String] :customer_plan_id The Metronome ID of the customer plan to add the charge to.
        # @option params [String] :description
        # @option params [DateTime] :invoice_start_timestamp The start_timestamp of the invoice to add the charge to.
        # @option params [Float] :price The price of the charge. This price will match the currency on the invoice, e.g.
        #   USD cents.
        # @option params [Float] :quantity
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::InvoiceAddChargeResponse]
        def add_charge(customer_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/customers/#{customer_id}/addCharge"
          req[:body] = params
          req[:model] = Metronome::Models::InvoiceAddChargeResponse
          @client.request(req, opts)
        end

        # List daily or hourly breakdown invoices for a given customer, optionally
        #   filtered by status, date range, and/or credit type.
        #
        # @param customer_id [String]
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [DateTime] :ending_before RFC 3339 timestamp. Breakdowns will only be returned for time windows that end
        #   on or before this time.
        # @option params [DateTime] :starting_on RFC 3339 timestamp. Breakdowns will only be returned for time windows that start
        #   on or after this time.
        # @option params [String] :credit_type_id Only return invoices for the specified credit type
        # @option params [Integer] :limit Max number of results that should be returned. For daily breakdowns, the
        #   response can return up to 35 days worth of breakdowns. For hourly breakdowns,
        #   the response can return up to 24 hours. If there are more results, a cursor to
        #   the next page is returned.
        # @option params [String] :next_page Cursor that indicates where the next page of results should start.
        # @option params [Boolean] :skip_zero_qty_line_items If set, all zero quantity line items will be filtered out of the response
        # @option params [Symbol] :sort Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
        #   date_asc.
        # @option params [String] :status Invoice status, e.g. DRAFT or FINALIZED
        # @option params [Symbol] :window_size The granularity of the breakdowns to return. Defaults to day.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::CursorPage<Metronome::Models::InvoiceListBreakdownsResponse>]
        def list_breakdowns(customer_id, params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/customers/#{customer_id}/invoices/breakdowns"
          req[:query] = params
          req[:page] = Metronome::CursorPage
          req[:model] = Metronome::Models::InvoiceListBreakdownsResponse
          @client.request(req, opts)
        end
      end
    end
  end
end
