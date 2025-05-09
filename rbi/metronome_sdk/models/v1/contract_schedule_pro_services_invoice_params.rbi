# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractScheduleProServicesInvoiceParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :contract_id

        sig { returns(String) }
        attr_accessor :customer_id

        # The date the invoice is issued
        sig { returns(Time) }
        attr_accessor :issued_at

        # Each line requires an amount or both unit_price and quantity.
        sig do
          returns(
            T::Array[
              MetronomeSDK::V1::ContractScheduleProServicesInvoiceParams::LineItem
            ]
          )
        end
        attr_accessor :line_items

        # The end date of the invoice header in Netsuite
        sig { returns(T.nilable(Time)) }
        attr_reader :netsuite_invoice_header_end

        sig { params(netsuite_invoice_header_end: Time).void }
        attr_writer :netsuite_invoice_header_end

        # The start date of the invoice header in Netsuite
        sig { returns(T.nilable(Time)) }
        attr_reader :netsuite_invoice_header_start

        sig { params(netsuite_invoice_header_start: Time).void }
        attr_writer :netsuite_invoice_header_start

        sig do
          params(
            contract_id: String,
            customer_id: String,
            issued_at: Time,
            line_items:
              T::Array[
                MetronomeSDK::V1::ContractScheduleProServicesInvoiceParams::LineItem::OrHash
              ],
            netsuite_invoice_header_end: Time,
            netsuite_invoice_header_start: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          contract_id:,
          customer_id:,
          # The date the invoice is issued
          issued_at:,
          # Each line requires an amount or both unit_price and quantity.
          line_items:,
          # The end date of the invoice header in Netsuite
          netsuite_invoice_header_end: nil,
          # The start date of the invoice header in Netsuite
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
              line_items:
                T::Array[
                  MetronomeSDK::V1::ContractScheduleProServicesInvoiceParams::LineItem
                ],
              netsuite_invoice_header_end: Time,
              netsuite_invoice_header_start: Time,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class LineItem < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig { returns(String) }
          attr_accessor :professional_service_id

          # If the professional_service_id was added on an amendment, this is required.
          sig { returns(T.nilable(String)) }
          attr_reader :amendment_id

          sig { params(amendment_id: String).void }
          attr_writer :amendment_id

          # Amount for the term on the new invoice.
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # For client use.
          sig { returns(T.nilable(String)) }
          attr_reader :metadata

          sig { params(metadata: String).void }
          attr_writer :metadata

          # The end date for the billing period on the invoice.
          sig { returns(T.nilable(Time)) }
          attr_reader :netsuite_invoice_billing_end

          sig { params(netsuite_invoice_billing_end: Time).void }
          attr_writer :netsuite_invoice_billing_end

          # The start date for the billing period on the invoice.
          sig { returns(T.nilable(Time)) }
          attr_reader :netsuite_invoice_billing_start

          sig { params(netsuite_invoice_billing_start: Time).void }
          attr_writer :netsuite_invoice_billing_start

          # Quantity for the charge. Will be multiplied by unit_price to determine the
          # amount.
          sig { returns(T.nilable(Float)) }
          attr_reader :quantity

          sig { params(quantity: Float).void }
          attr_writer :quantity

          # If specified, this overrides the unit price on the pro service term. Must also
          # provide quantity (but not amount) if providing unit_price.
          sig { returns(T.nilable(Float)) }
          attr_reader :unit_price

          sig { params(unit_price: Float).void }
          attr_writer :unit_price

          # Describes the line item for a professional service charge on an invoice.
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
            ).returns(T.attached_class)
          end
          def self.new(
            professional_service_id:,
            # If the professional_service_id was added on an amendment, this is required.
            amendment_id: nil,
            # Amount for the term on the new invoice.
            amount: nil,
            # For client use.
            metadata: nil,
            # The end date for the billing period on the invoice.
            netsuite_invoice_billing_end: nil,
            # The start date for the billing period on the invoice.
            netsuite_invoice_billing_start: nil,
            # Quantity for the charge. Will be multiplied by unit_price to determine the
            # amount.
            quantity: nil,
            # If specified, this overrides the unit price on the pro service term. Must also
            # provide quantity (but not amount) if providing unit_price.
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
end
