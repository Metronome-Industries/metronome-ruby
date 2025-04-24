# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceRetrieveParams < MetronomeSDK::BaseModel
          extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig { returns(String) }
          def invoice_id
          end

          sig { params(_: String).returns(String) }
          def invoice_id=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def skip_zero_qty_line_items
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def skip_zero_qty_line_items=(_)
          end

          sig do
            params(
              customer_id: String,
              invoice_id: String,
              skip_zero_qty_line_items: T::Boolean,
              request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(customer_id:, invoice_id:, skip_zero_qty_line_items: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  customer_id: String,
                  invoice_id: String,
                  skip_zero_qty_line_items: T::Boolean,
                  request_options: MetronomeSDK::RequestOptions
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
