# typed: strong

module Metronome
  module Resources
    class Customers
      class Invoices
        sig do
          params(
            customer_id: String,
            invoice_id: String,
            skip_zero_qty_line_items: T::Boolean,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Metronome::Models::Customers::InvoiceRetrieveResponse)
        end
        def retrieve(customer_id:, invoice_id:, skip_zero_qty_line_items: nil, request_options: {}); end

        sig do
          params(
            customer_id: String,
            credit_type_id: String,
            ending_before: Time,
            limit: Integer,
            next_page: String,
            skip_zero_qty_line_items: T::Boolean,
            sort: Symbol,
            starting_on: Time,
            status: String,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Metronome::CursorPage[Metronome::Models::Customers::Invoice])
        end
        def list(
          customer_id:,
          credit_type_id: nil,
          ending_before: nil,
          limit: nil,
          next_page: nil,
          skip_zero_qty_line_items: nil,
          sort: nil,
          starting_on: nil,
          status: nil,
          request_options: {}
        ); end

        sig do
          params(
            customer_id: String,
            charge_id: String,
            customer_plan_id: String,
            description: String,
            invoice_start_timestamp: Time,
            price: Float,
            quantity: Float,
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Metronome::Models::Customers::InvoiceAddChargeResponse)
        end
        def add_charge(
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
            request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Metronome::CursorPage[Metronome::Models::Customers::InvoiceListBreakdownsResponse])
        end
        def list_breakdowns(
          customer_id:,
          ending_before:,
          starting_on:,
          credit_type_id: nil,
          limit: nil,
          next_page: nil,
          skip_zero_qty_line_items: nil,
          sort: nil,
          status: nil,
          window_size: nil,
          request_options: {}
        ); end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end
