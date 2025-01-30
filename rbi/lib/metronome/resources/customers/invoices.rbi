# typed: strong

module Metronome
  module Resources
    class Customers
      class Invoices
        sig do
          params(
            params: T.any(Metronome::Models::Customers::InvoiceRetrieveParams, T::Hash[Symbol, T.anything]),
            customer_id: String,
            invoice_id: String,
            skip_zero_qty_line_items: T::Boolean,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::InvoiceRetrieveResponse)
        end
        def retrieve(params, customer_id:, invoice_id:, skip_zero_qty_line_items:, request_options: {}); end

        sig do
          params(
            params: T.any(Metronome::Models::Customers::InvoiceListParams, T::Hash[Symbol, T.anything]),
            customer_id: String,
            credit_type_id: String,
            ending_before: Time,
            limit: Integer,
            next_page: String,
            skip_zero_qty_line_items: T::Boolean,
            sort: Symbol,
            starting_on: Time,
            status: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::CursorPage[Metronome::Models::Customers::Invoice])
        end
        def list(
          params,
          customer_id:,
          credit_type_id:,
          ending_before:,
          limit:,
          next_page:,
          skip_zero_qty_line_items:,
          sort:,
          starting_on:,
          status:,
          request_options: {}
        ); end

        sig do
          params(
            params: T.any(Metronome::Models::Customers::InvoiceAddChargeParams, T::Hash[Symbol, T.anything]),
            customer_id: String,
            charge_id: String,
            customer_plan_id: String,
            description: String,
            invoice_start_timestamp: Time,
            price: Float,
            quantity: Float,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::InvoiceAddChargeResponse)
        end
        def add_charge(
          params,
          customer_id:,
          charge_id:,
          customer_plan_id:,
          description:,
          invoice_start_timestamp:,
          price:,
          quantity:,
          request_options: {}
        ); end

        sig do
          params(
            params: T.any(
              Metronome::Models::Customers::InvoiceListBreakdownsParams,
              T::Hash[Symbol, T.anything]
            ),
            customer_id: String,
            ending_before: Time,
            starting_on: Time,
            credit_type_id: String,
            limit: Integer,
            next_page: String,
            skip_zero_qty_line_items: T::Boolean,
            sort: Symbol,
            status: String,
            window_size: Symbol,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::CursorPage[Metronome::Models::Customers::InvoiceListBreakdownsResponse])
        end
        def list_breakdowns(
          params,
          customer_id:,
          ending_before:,
          starting_on:,
          credit_type_id:,
          limit:,
          next_page:,
          skip_zero_qty_line_items:,
          sort:,
          status:,
          window_size:,
          request_options: {}
        ); end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end
