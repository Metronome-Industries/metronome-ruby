# typed: strong

module Metronome
  module Models
    class ContractScheduleProServicesInvoiceParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def contract_id
      end

      sig { params(_: String).returns(String) }
      def contract_id=(_)
      end

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(Time) }
      def issued_at
      end

      sig { params(_: Time).returns(Time) }
      def issued_at=(_)
      end

      sig { returns(T::Array[Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem]) }
      def line_items
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem]).returns(T::Array[Metronome::Models::ContractScheduleProServicesInvoiceParams::LineItem])
      end
      def line_items=(_)
      end

      sig { returns(T.nilable(Time)) }
      def netsuite_invoice_header_end
      end

      sig { params(_: Time).returns(Time) }
      def netsuite_invoice_header_end=(_)
      end

      sig { returns(T.nilable(Time)) }
      def netsuite_invoice_header_start
      end

      sig { params(_: Time).returns(Time) }
      def netsuite_invoice_header_start=(_)
      end

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
        def professional_service_id
        end

        sig { params(_: String).returns(String) }
        def professional_service_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def amendment_id
        end

        sig { params(_: String).returns(String) }
        def amendment_id=(_)
        end

        sig { returns(T.nilable(Float)) }
        def amount
        end

        sig { params(_: Float).returns(Float) }
        def amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def metadata
        end

        sig { params(_: String).returns(String) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Time)) }
        def netsuite_invoice_billing_end
        end

        sig { params(_: Time).returns(Time) }
        def netsuite_invoice_billing_end=(_)
        end

        sig { returns(T.nilable(Time)) }
        def netsuite_invoice_billing_start
        end

        sig { params(_: Time).returns(Time) }
        def netsuite_invoice_billing_start=(_)
        end

        sig { returns(T.nilable(Float)) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

        sig { returns(T.nilable(Float)) }
        def unit_price
        end

        sig { params(_: Float).returns(Float) }
        def unit_price=(_)
        end

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
