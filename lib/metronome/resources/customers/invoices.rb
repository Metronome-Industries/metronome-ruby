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
        # @option params [String] :ending_before RFC 3339 timestamp (exclusive). Invoices will only be returned for billing
        #   periods that end before this time.
        # @option params [Integer] :limit Max number of results that should be returned
        # @option params [String] :next_page Cursor that indicates where the next page of results should start.
        # @option params [Boolean] :skip_zero_qty_line_items If set, all zero quantity line items will be filtered out of the response
        # @option params [Symbol] :sort Invoice sort order by issued_at, e.g. date_asc or date_desc. Defaults to
        #   date_asc.
        # @option params [String] :starting_on RFC 3339 timestamp (inclusive). Invoices will only be returned for billing
        #   periods that start at or after this time.
        # @option params [String] :status Invoice status, e.g. DRAFT, FINALIZED, or VOID
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Metronome::Models::InvoiceListResponse]
        def list(customer_id, params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/customers/#{customer_id}/invoices"
          req[:query] = params
          req[:model] = Metronome::Models::InvoiceListResponse
          @client.request(req, opts)
        end
      end
    end
  end
end
