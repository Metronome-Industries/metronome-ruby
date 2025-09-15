# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Invoices
          # Retrieve detailed information for a specific invoice by its unique identifier.
          # This endpoint returns comprehensive invoice data including line items, applied
          # credits, totals, and billing period details for both finalized and draft
          # invoices.
          #
          # ### Use this endpoint to:
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
          # ### Key response fields:
          #
          # Invoice status (DRAFT, FINALIZED, VOID) Billing period start and end dates Total
          # amount and amount due after credits Detailed line items broken down by:
          #
          # - Customer and contract information
          # - Invoice line item type
          # - Product/service name and ID
          # - Quantity consumed
          # - Unit and total price
          # - Time period for usage-based charges
          # - Applied credits or prepaid commitments
          #
          # ### Usage guidelines:
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
          sig do
            params(
              customer_id: String,
              invoice_id: String,
              skip_zero_qty_line_items: T::Boolean,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Customers::InvoiceRetrieveResponse
            )
          end
          def retrieve(
            # Path param:
            customer_id:,
            # Path param:
            invoice_id:,
            # Query param: If set, all zero quantity line items will be filtered out of the
            # response
            skip_zero_qty_line_items: nil,
            request_options: {}
          )
          end

          # Retrieves a paginated list of invoices for a specific customer, with flexible
          # filtering options to narrow results by status, date range, credit type, and
          # more. This endpoint provides a comprehensive view of a customer's billing
          # history and current charges, supporting both real-time billing dashboards and
          # historical reporting needs.
          #
          # ### Use this endpoint to:
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
          # ### Key response fields:
          #
          # Array of invoice objects containing:
          #
          # - Invoice ID and status (DRAFT, FINALIZED, VOID)
          # - Invoice type (USAGE, SCHEDULED)
          # - Billing period start and end dates
          # - Issue date and due date
          # - Total amount, subtotal, and amount due
          # - Applied credits summary
          # - Contract ID reference
          # - External billing provider status (if integrated with Stripe, etc.)
          # - Pagination metadata `next_page` cursor
          #
          # ### Usage guidelines:
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
          sig do
            params(
              customer_id: String,
              credit_type_id: String,
              ending_before: Time,
              limit: Integer,
              next_page: String,
              skip_zero_qty_line_items: T::Boolean,
              sort:
                MetronomeSDK::V1::Customers::InvoiceListParams::Sort::OrSymbol,
              starting_on: Time,
              status: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Internal::CursorPage[
                MetronomeSDK::V1::Customers::Invoice
              ]
            )
          end
          def list(
            # Path param:
            customer_id:,
            # Query param: Only return invoices for the specified credit type
            credit_type_id: nil,
            # Query param: RFC 3339 timestamp (exclusive). Invoices will only be returned for
            # billing periods that end before this time.
            ending_before: nil,
            # Query param: Max number of results that should be returned
            limit: nil,
            # Query param: Cursor that indicates where the next page of results should start.
            next_page: nil,
            # Query param: If set, all zero quantity line items will be filtered out of the
            # response
            skip_zero_qty_line_items: nil,
            # Query param: Invoice sort order by issued_at, e.g. date_asc or date_desc.
            # Defaults to date_asc.
            sort: nil,
            # Query param: RFC 3339 timestamp (inclusive). Invoices will only be returned for
            # billing periods that start at or after this time.
            starting_on: nil,
            # Query param: Invoice status, e.g. DRAFT, FINALIZED, or VOID
            status: nil,
            request_options: {}
          )
          end

          # Add a one time charge to the specified invoice
          sig do
            params(
              customer_id: String,
              charge_id: String,
              customer_plan_id: String,
              description: String,
              invoice_start_timestamp: Time,
              price: Float,
              quantity: Float,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Customers::InvoiceAddChargeResponse
            )
          end
          def add_charge(
            # Path param:
            customer_id:,
            # Body param: The Metronome ID of the charge to add to the invoice. Note that the
            # charge must be on a product that is not on the current plan, and the product
            # must have only fixed charges.
            charge_id:,
            # Body param: The Metronome ID of the customer plan to add the charge to.
            customer_plan_id:,
            # Body param:
            description:,
            # Body param: The start_timestamp of the invoice to add the charge to.
            invoice_start_timestamp:,
            # Body param: The price of the charge. This price will match the currency on the
            # invoice, e.g. USD cents.
            price:,
            # Body param:
            quantity:,
            request_options: {}
          )
          end

          # Retrieve granular time-series breakdowns of invoice data at hourly or daily
          # intervals. This endpoint transforms standard invoices into detailed timelines,
          # enabling you to track usage patterns, identify consumption spikes, and provide
          # customers with transparency into their billing details throughout the billing
          # period.
          #
          # ### Use this endpoint to:
          #
          # - Build usage analytics dashboards showing daily or hourly consumption trends
          # - Identify peak usage periods for capacity planning and cost optimization
          # - Generate detailed billing reports for finance teams and customer success
          # - Troubleshoot billing disputes by examining usage patterns at specific times
          # - Power real-time cost monitoring and alerting systems
          #
          # ### Key response fields:
          #
          # An array of BreakdownInvoice objects, each containing:
          #
          # - All standard invoice fields (ID, customer, commit, line items, totals, status)
          # - Line items with quantities and costs for that specific period
          # - `breakdown_start_timestamp`: Start of the specific time window
          # - `breakdown_end_timestamp`: End of the specific time window
          # - `next_page`: Pagination cursor for large result sets
          #
          # ### Usage guidelines:
          #
          # - Time granularity: Set `window_size` to hour or day based on your analysis
          #   needs
          # - Response limits: Daily breakdowns return up to 35 days; hourly breakdowns
          #   return up to 24 hours per request
          # - Date filtering: Use `starting_on` and `ending_before` to focus on specific
          #   periods
          # - Performance: For large date ranges, use pagination to retrieve all data
          #   efficiently
          # - Backdated usage: If usage events arrive after invoice finalization, breakdowns
          #   will reflect the updated usage
          # - Zero quantity filtering: Use `skip_zero_qty_line_items=true` to exclude
          #   periods with no usage
          sig do
            params(
              customer_id: String,
              ending_before: Time,
              starting_on: Time,
              credit_type_id: String,
              limit: Integer,
              next_page: String,
              skip_zero_qty_line_items: T::Boolean,
              sort:
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::Sort::OrSymbol,
              status: String,
              window_size:
                MetronomeSDK::V1::Customers::InvoiceListBreakdownsParams::WindowSize::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Internal::CursorPage[
                MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsResponse
              ]
            )
          end
          def list_breakdowns(
            # Path param:
            customer_id:,
            # Query param: RFC 3339 timestamp. Breakdowns will only be returned for time
            # windows that end on or before this time.
            ending_before:,
            # Query param: RFC 3339 timestamp. Breakdowns will only be returned for time
            # windows that start on or after this time.
            starting_on:,
            # Query param: Only return invoices for the specified credit type
            credit_type_id: nil,
            # Query param: Max number of results that should be returned. For daily
            # breakdowns, the response can return up to 35 days worth of breakdowns. For
            # hourly breakdowns, the response can return up to 24 hours. If there are more
            # results, a cursor to the next page is returned.
            limit: nil,
            # Query param: Cursor that indicates where the next page of results should start.
            next_page: nil,
            # Query param: If set, all zero quantity line items will be filtered out of the
            # response
            skip_zero_qty_line_items: nil,
            # Query param: Invoice sort order by issued_at, e.g. date_asc or date_desc.
            # Defaults to date_asc.
            sort: nil,
            # Query param: Invoice status, e.g. DRAFT or FINALIZED
            status: nil,
            # Query param: The granularity of the breakdowns to return. Defaults to day.
            window_size: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
