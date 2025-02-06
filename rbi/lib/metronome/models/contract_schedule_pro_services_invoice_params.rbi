# typed: strong

module Metronome
  module Models
    class ContractScheduleProServicesInvoiceParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :contract_id

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(Time) }
      attr_accessor :issued_at

      sig { returns(T::Array[Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem]) }
      attr_accessor :line_items

      sig { returns(T.nilable(Time)) }
      attr_reader :netsuite_invoice_header_end

      sig { params(netsuite_invoice_header_end: Time).void }
      attr_writer :netsuite_invoice_header_end

      sig { returns(T.nilable(Time)) }
      attr_reader :netsuite_invoice_header_start

      sig { params(netsuite_invoice_header_start: Time).void }
      attr_writer :netsuite_invoice_header_start

      sig do
        params(
          contract_id: String,
          customer_id: String,
          issued_at: Time,
          line_items: T::Array[Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem],
          netsuite_invoice_header_end: Time,
          netsuite_invoice_header_start: Time,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        contract_id:,
        customer_id:,
        issued_at:,
        line_items:,
        netsuite_invoice_header_end: nil,
        netsuite_invoice_header_start: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            contract_id: String,
            customer_id: String,
            issued_at: Time,
            line_items: T::Array[Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem],
            netsuite_invoice_header_end: Time,
            netsuite_invoice_header_start: Time,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end

      class LineItem < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :professional_service_id

        sig { returns(T.nilable(String)) }
        attr_reader :amendment_id

        sig { params(amendment_id: String).void }
        attr_writer :amendment_id

        sig { returns(T.nilable(Float)) }
        attr_reader :amount

        sig { params(amount: Float).void }
        attr_writer :amount

        sig { returns(T.nilable(String)) }
        attr_reader :metadata

        sig { params(metadata: String).void }
        attr_writer :metadata

        sig { returns(T.nilable(Time)) }
        attr_reader :netsuite_invoice_billing_end

        sig { params(netsuite_invoice_billing_end: Time).void }
        attr_writer :netsuite_invoice_billing_end

        sig { returns(T.nilable(Time)) }
        attr_reader :netsuite_invoice_billing_start

        sig { params(netsuite_invoice_billing_start: Time).void }
        attr_writer :netsuite_invoice_billing_start

        sig { returns(T.nilable(Float)) }
        attr_reader :quantity

        sig { params(quantity: Float).void }
        attr_writer :quantity

        sig { returns(T.nilable(Float)) }
        attr_reader :unit_price

        sig { params(unit_price: Float).void }
        attr_writer :unit_price

        sig do
          params(
            professional_service_id: String,
            amendment_id: String,
            amount: Float,
            metadata: String,
            netsuite_invoice_billing_end: Time,
            netsuite_invoice_billing_start: Time,
            quantity: Float,
            unit_price: Float
          ).void
        end
        def initialize(
          professional_service_id:,
          amendment_id: nil,
          amount: nil,
          metadata: nil,
          netsuite_invoice_billing_end: nil,
          netsuite_invoice_billing_start: nil,
          quantity: nil,
          unit_price: nil
        )
        end

        sig do
          override.returns(
            {
              professional_service_id: String,
              amendment_id: String,
              amount: Float,
              metadata: String,
              netsuite_invoice_billing_end: Time,
              netsuite_invoice_billing_start: Time,
              quantity: Float,
              unit_price: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
