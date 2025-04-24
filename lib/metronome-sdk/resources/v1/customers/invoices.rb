# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Invoices
          # Fetch a specific invoice for a given customer.
          #
          # @param params [MetronomeSDK::Models::V1::Customers::InvoiceRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :customer_id Path param:
          #
          #   @option params [String] :invoice_id Path param:
          #
          #   @option params [Boolean] :skip_zero_qty_line_items Query param: If set, all zero quantity line items will be filtered out of the
          #     response
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Customers::InvoiceRetrieveResponse]
          #
          def retrieve(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::InvoiceRetrieveParams.dump_request(params)
            customer_id = parsed.fetch(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            invoice_id = parsed.fetch(:invoice_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            @client.request(
              method: :get,
              path: ["v1/customers/%0s/invoices/%1s", customer_id, invoice_id],
              query: parsed.except(:customer_id, :invoice_id),
              model: MetronomeSDK::Models::V1::Customers::InvoiceRetrieveResponse,
              options: options
            )
          end

          # List all invoices for a given customer, optionally filtered by status, date
          #   range, and/or credit type.
          #
          # @param params [MetronomeSDK::Models::V1::Customers::InvoiceListParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :customer_id Path param:
          #
          #   @option params [String] :credit_type_id Query param: Only return invoices for the specified credit type
          #
          #   @option params [Time] :ending_before Query param: RFC 3339 timestamp (exclusive). Invoices will only be returned for
          #     billing periods that end before this time.
          #
          #   @option params [Integer] :limit Query param: Max number of results that should be returned
          #
          #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
          #
          #   @option params [Boolean] :skip_zero_qty_line_items Query param: If set, all zero quantity line items will be filtered out of the
          #     response
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListParams::Sort] :sort Query param: Invoice sort order by issued_at, e.g. date_asc or date_desc.
          #     Defaults to date_asc.
          #
          #   @option params [Time] :starting_on Query param: RFC 3339 timestamp (inclusive). Invoices will only be returned for
          #     billing periods that start at or after this time.
          #
          #   @option params [String] :status Query param: Invoice status, e.g. DRAFT, FINALIZED, or VOID
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::Customers::Invoice>]
          #
          def list(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::InvoiceListParams.dump_request(params)
            customer_id = parsed.fetch(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            @client.request(
              method: :get,
              path: ["v1/customers/%0s/invoices", customer_id],
              query: parsed.except(:customer_id),
              page: MetronomeSDK::CursorPage,
              model: MetronomeSDK::Models::V1::Customers::Invoice,
              options: options
            )
          end

          # Add a one time charge to the specified invoice
          #
          # @param params [MetronomeSDK::Models::V1::Customers::InvoiceAddChargeParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :customer_id Path param:
          #
          #   @option params [String] :charge_id Body param: The Metronome ID of the charge to add to the invoice. Note that the
          #     charge must be on a product that is not on the current plan, and the product
          #     must have only fixed charges.
          #
          #   @option params [String] :customer_plan_id Body param: The Metronome ID of the customer plan to add the charge to.
          #
          #   @option params [String] :description Body param:
          #
          #   @option params [Time] :invoice_start_timestamp Body param: The start_timestamp of the invoice to add the charge to.
          #
          #   @option params [Float] :price Body param: The price of the charge. This price will match the currency on the
          #     invoice, e.g. USD cents.
          #
          #   @option params [Float] :quantity Body param:
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::Models::V1::Customers::InvoiceAddChargeResponse]
          #
          def add_charge(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::InvoiceAddChargeParams.dump_request(params)
            customer_id = parsed.fetch(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            @client.request(
              method: :post,
              path: ["v1/customers/%0s/addCharge", customer_id],
              body: parsed.except(:customer_id),
              model: MetronomeSDK::Models::V1::Customers::InvoiceAddChargeResponse,
              options: options
            )
          end

          # List daily or hourly invoice breakdowns for a given customer, optionally
          #   filtered by status, date range, and/or credit type. Important considerations:
          #
          #   - If we receive backdated usage after an invoice has been finalized, the
          #     backdated usage will be included in the response and usage numbers may differ.
          #
          # @param params [MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :customer_id Path param:
          #
          #   @option params [Time] :ending_before Query param: RFC 3339 timestamp. Breakdowns will only be returned for time
          #     windows that end on or before this time.
          #
          #   @option params [Time] :starting_on Query param: RFC 3339 timestamp. Breakdowns will only be returned for time
          #     windows that start on or after this time.
          #
          #   @option params [String] :credit_type_id Query param: Only return invoices for the specified credit type
          #
          #   @option params [Integer] :limit Query param: Max number of results that should be returned. For daily
          #     breakdowns, the response can return up to 35 days worth of breakdowns. For
          #     hourly breakdowns, the response can return up to 24 hours. If there are more
          #     results, a cursor to the next page is returned.
          #
          #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
          #
          #   @option params [Boolean] :skip_zero_qty_line_items Query param: If set, all zero quantity line items will be filtered out of the
          #     response
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::Sort] :sort Query param: Invoice sort order by issued_at, e.g. date_asc or date_desc.
          #     Defaults to date_asc.
          #
          #   @option params [String] :status Query param: Invoice status, e.g. DRAFT or FINALIZED
          #
          #   @option params [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::WindowSize] :window_size Query param: The granularity of the breakdowns to return. Defaults to day.
          #
          #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsResponse>]
          #
          def list_breakdowns(params)
            parsed, options = MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams.dump_request(params)
            customer_id = parsed.fetch(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
            @client.request(
              method: :get,
              path: ["v1/customers/%0s/invoices/breakdowns", customer_id],
              query: parsed.except(:customer_id),
              page: MetronomeSDK::CursorPage,
              model: MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsResponse,
              options: options
            )
          end

          # @param client [MetronomeSDK::Client]
          #
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
