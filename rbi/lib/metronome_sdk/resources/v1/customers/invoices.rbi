# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Invoices
          # Fetch a specific invoice for a given customer.
          sig do
            params(
              customer_id: String,
              invoice_id: String,
              skip_zero_qty_line_items: T::Boolean,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
            )
              .returns(MetronomeSDK::Models::V1::Customers::InvoiceRetrieveResponse)
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
          ); end
          # List all invoices for a given customer, optionally filtered by status, date
          # range, and/or credit type.
          sig do
            params(
              customer_id: String,
              credit_type_id: String,
              ending_before: Time,
              limit: Integer,
              next_page: String,
              skip_zero_qty_line_items: T::Boolean,
              sort: MetronomeSDK::Models::V1::Customers::InvoiceListParams::Sort::OrSymbol,
              starting_on: Time,
              status: String,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
            )
              .returns(MetronomeSDK::Internal::CursorPage[MetronomeSDK::Models::V1::Customers::Invoice])
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
          ); end
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
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
            )
              .returns(MetronomeSDK::Models::V1::Customers::InvoiceAddChargeResponse)
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
          ); end
          # List daily or hourly invoice breakdowns for a given customer, optionally
          # filtered by status, date range, and/or credit type. Important considerations:
          #
          # - If we receive backdated usage after an invoice has been finalized, the
          #   backdated usage will be included in the response and usage numbers may differ.
          sig do
            params(
              customer_id: String,
              ending_before: Time,
              starting_on: Time,
              credit_type_id: String,
              limit: Integer,
              next_page: String,
              skip_zero_qty_line_items: T::Boolean,
              sort: MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::Sort::OrSymbol,
              status: String,
              window_size: MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsParams::WindowSize::OrSymbol,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
            )
              .returns(
                MetronomeSDK::Internal::CursorPage[MetronomeSDK::Models::V1::Customers::InvoiceListBreakdownsResponse]
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
          ); end
          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:); end
        end
      end
    end
  end
end
