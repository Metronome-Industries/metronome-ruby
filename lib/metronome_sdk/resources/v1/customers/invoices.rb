# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Invoices
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::InvoiceRetrieveParams} for more details.
          #
          # Retrieve detailed information for a specific invoice by its unique identifier.
          # This endpoint returns comprehensive invoice data including line items, applied
          # credits, totals, and billing period details for both finalized and draft
          # invoices.
          #
          # Use this endpoint to:
          #
          # - Display historical invoice details in customer-facing dashboards or billing
          #   portals.
          # - Retrieve current month draft invoices to show customers their month-to-date
          #   spend.
          # - Access finalized invoices for historical billing records and payment
          #   reconciliation.
          # - Validate customer pricing and credit applications for customer support
          #   queries.
          #
          # Key response fields: Invoice status (DRAFT, FINALIZED, VOID) Billing period
          # start and end dates Total amount and amount due after credits Detailed line
          # items broken down by:
          #
          # - Customer and contract information
          # - Invoice line item type
          # - Product/service name and ID
          # - Quantity consumed
          # - Unit and total price
          # - Time period for usage-based charges
          # - Applied credits or prepaid commitments
          #
          # Usage guidelines:
          #
          # - Draft invoices update in real-time as usage is reported and may change before
          #   finalization
          # - The response includes both usage-based line items (e.g., API calls, data
          #   processed) and scheduled charges (e.g., monthly subscriptions, commitment
          #   fees)
          # - Credit and commitment applications are shown as separate line items with
          #   negative amounts
          # - For voided invoices, the response will indicate VOID status but retain all
          #   original line item details
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
          # Retrieves a paginated list of invoices for a specific customer, with flexible
          # filtering options to narrow results by status, date range, credit type, and
          # more. This endpoint provides a comprehensive view of a customer's billing
          # history and current charges, supporting both real-time billing dashboards and
          # historical reporting needs.
          #
          # Use this endpoint to:
          #
          # - Display historical invoice details in customer-facing dashboards or billing
          #   portals.
          # - Retrieve current month draft invoices to show customers their month-to-date
          #   spend.
          # - Access finalized invoices for historical billing records and payment
          #   reconciliation.
          # - Validate customer pricing and credit applications for customer support
          #   queries.
          # - Generate financial reports by filtering invoices within specific date ranges
          #
          # Key response fields: Array of invoice objects containing:
          #
          # - Invoice ID and status (DRAFT, FINALIZED, VOID)
          # - Invoice type (USAGE, SCHEDULED)
          # - Billing period start and end dates
          # - Issue date and due date
          # - Total amount, subtotal, and amount due
          # - Applied credits summary
          # - Contract ID reference
          # - External billing provider status (if integrated with Stripe, etc.)
          # - Pagination metadata next_page cursor
          #
          # Usage guidelines:
          #
          # - The endpoint returns invoice summaries; use the Get Invoice endpoint for
          #   detailed line items
          # - Draft invoices are continuously updated as new usage is reported and will show
          #   real-time spend
          # - Results are ordered by creation date descending by default (newest first)
          # - When filtering by date range, the filter applies to the billing period, not
          #   the issue date
          # - For customers with many invoices, implement pagination to ensure all results
          #   are retrieved External billing provider statuses (like Stripe payment status)
          #   are included when applicable
          # - Voided invoices are included in results by default unless filtered out by
          #   status
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
          # @param sort [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListParams::Sort] Query param: Invoice sort order by issued_at, e.g. date_asc or date_desc. Defau
          #
          # @param starting_on [Time] Query param: RFC 3339 timestamp (inclusive). Invoices will only be returned for
          #
          # @param status [String] Query param: Invoice status, e.g. DRAFT, FINALIZED, or VOID
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::Customers::Invoice>]
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
          # Retrieve granular time-series breakdowns of invoice data at hourly or daily
          # intervals. This endpoint transforms standard invoices into detailed timelines,
          # enabling you to track usage patterns, identify consumption spikes, and provide
          # customers with transparency into their billing details throughout the billing
          # period.
          #
          # Use this endpoint to:
          #
          # - Build usage analytics dashboards showing daily or hourly consumption trends
          # - Identify peak usage periods for capacity planning and cost optimization
          # - Generate detailed billing reports for finance teams and customer success
          # - Troubleshoot billing disputes by examining usage patterns at specific times
          # - Power real-time cost monitoring and alerting systems
          #
          # Key response fields: An array of BreakdownInvoice objects, each containing:
          #
          # - All standard invoice fields (ID, customer, commit, line items, totals, status)
          # - Line items with quantities and costs for that specific period
          # - breakdown_start_timestamp: Start of the specific time window
          # - breakdown_end_timestamp: End of the specific time window
          # - next_page: Pagination cursor for large result sets
          #
          # Usage guidelines:
          #
          # - Time granularity: Set window_size to hour or day based on your analysis needs
          # - Response limits: Daily breakdowns return up to 35 days; hourly breakdowns
          #   return up to 24 hours per request
          # - Date filtering: Use starting_on and ending_before to focus on specific periods
          # - Performance: For large date ranges, use pagination to retrieve all data
          #   efficiently
          # - Backdated usage: If usage events arrive after invoice finalization, breakdowns
          #   will reflect the updated usage
          # - Zero quantity filtering: Use skip_zero_qty_line_items=true to exclude periods
          #   with no usage
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
          # @param sort [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::Sort] Query param: Invoice sort order by issued_at, e.g. date_asc or date_desc. Defau
          #
          # @param status [String] Query param: Invoice status, e.g. DRAFT or FINALIZED
          #
          # @param window_size [Symbol, MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::WindowSize] Query param: The granularity of the breakdowns to return. Defaults to day.
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
