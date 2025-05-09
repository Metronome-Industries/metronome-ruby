# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Invoices
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::InvoiceRetrieveParams} for more details.
          #
          # Fetch a specific invoice for a given customer.
          #
          # @overload retrieve(customer_id:, invoice_id:, skip_zero_qty_line_items: nil, request_options: {})
          #
          # @param customer_id [String] Path param:
          #
          # @param invoice_id [String] Path param:
          #
          # @param skip_zero_qty_line_items [Boolean] Query param: If set, all zero quantity line items will be filtered out of the re
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::InvoiceRetrieveResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::InvoiceRetrieveParams
          def retrieve(params)
            parsed, options = MetronomeSDK::V1::Customers::InvoiceRetrieveParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            invoice_id =
              parsed.delete(:invoice_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["v1/customers/%1$s/invoices/%2$s", customer_id, invoice_id],
              query: parsed,
              model: MetronomeSDK::Models::V1::Customers::InvoiceRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::InvoiceListParams} for more details.
          #
          # List all invoices for a given customer, optionally filtered by status, date
          # range, and/or credit type.
          #
          # @overload list(customer_id:, credit_type_id: nil, ending_before: nil, limit: nil, next_page: nil, skip_zero_qty_line_items: nil, sort: nil, starting_on: nil, status: nil, request_options: {})
          #
          # @param customer_id [String] Path param:
          #
          # @param credit_type_id [String] Query param: Only return invoices for the specified credit type
          #
          # @param ending_before [Time] Query param: RFC 3339 timestamp (exclusive). Invoices will only be returned for
          #
          # @param limit [Integer] Query param: Max number of results that should be returned
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param skip_zero_qty_line_items [Boolean] Query param: If set, all zero quantity line items will be filtered out of the re
          #
          # @param sort [Symbol, MetronomeSDK::V1::Customers::InvoiceListParams::Sort] Query param: Invoice sort order by issued_at, e.g. date_asc or date_desc. Defau
          #
          # @param starting_on [Time] Query param: RFC 3339 timestamp (inclusive). Invoices will only be returned for
          #
          # @param status [String] Query param: Invoice status, e.g. DRAFT, FINALIZED, or VOID
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::V1::Customers::Invoice>]
          #
          # @see MetronomeSDK::Models::V1::Customers::InvoiceListParams
          def list(params)
            parsed, options = MetronomeSDK::V1::Customers::InvoiceListParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["v1/customers/%1$s/invoices", customer_id],
              query: parsed,
              page: MetronomeSDK::Internal::CursorPage,
              model: MetronomeSDK::V1::Customers::Invoice,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::InvoiceAddChargeParams} for more details.
          #
          # Add a one time charge to the specified invoice
          #
          # @overload add_charge(customer_id:, charge_id:, customer_plan_id:, description:, invoice_start_timestamp:, price:, quantity:, request_options: {})
          #
          # @param customer_id [String] Path param:
          #
          # @param charge_id [String] Body param: The Metronome ID of the charge to add to the invoice. Note that the
          #
          # @param customer_plan_id [String] Body param: The Metronome ID of the customer plan to add the charge to.
          #
          # @param description [String] Body param:
          #
          # @param invoice_start_timestamp [Time] Body param: The start_timestamp of the invoice to add the charge to.
          #
          # @param price [Float] Body param: The price of the charge. This price will match the currency on the i
          #
          # @param quantity [Float] Body param:
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::InvoiceAddChargeResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::InvoiceAddChargeParams
          def add_charge(params)
            parsed, options = MetronomeSDK::V1::Customers::InvoiceAddChargeParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["v1/customers/%1$s/addCharge", customer_id],
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::InvoiceAddChargeResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams} for more
          # details.
          #
          # List daily or hourly invoice breakdowns for a given customer, optionally
          # filtered by status, date range, and/or credit type. Important considerations:
          #
          # - If we receive backdated usage after an invoice has been finalized, the
          #   backdated usage will be included in the response and usage numbers may differ.
          #
          # @overload list_breakdowns(customer_id:, ending_before:, starting_on:, credit_type_id: nil, limit: nil, next_page: nil, skip_zero_qty_line_items: nil, sort: nil, status: nil, window_size: nil, request_options: {})
          #
          # @param customer_id [String] Path param:
          #
          # @param ending_before [Time] Query param: RFC 3339 timestamp. Breakdowns will only be returned for time windo
          #
          # @param starting_on [Time] Query param: RFC 3339 timestamp. Breakdowns will only be returned for time windo
          #
          # @param credit_type_id [String] Query param: Only return invoices for the specified credit type
          #
          # @param limit [Integer] Query param: Max number of results that should be returned. For daily breakdowns
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param skip_zero_qty_line_items [Boolean] Query param: If set, all zero quantity line items will be filtered out of the re
          #
          # @param sort [Symbol, MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::Sort] Query param: Invoice sort order by issued_at, e.g. date_asc or date_desc. Defau
          #
          # @param status [String] Query param: Invoice status, e.g. DRAFT or FINALIZED
          #
          # @param window_size [Symbol, MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::WindowSize] Query param: The granularity of the breakdowns to return. Defaults to day.
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsResponse>]
          #
          # @see MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams
          def list_breakdowns(params)
            parsed, options = MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["v1/customers/%1$s/invoices/breakdowns", customer_id],
              query: parsed,
              page: MetronomeSDK::Internal::CursorPage,
              model: MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [MetronomeSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
