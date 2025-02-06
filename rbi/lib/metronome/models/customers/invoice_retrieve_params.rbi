# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceRetrieveParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :invoice_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :skip_zero_qty_line_items

        sig { params(skip_zero_qty_line_items: T::Boolean).void }
        attr_writer :skip_zero_qty_line_items

        sig do
          params(
            customer_id: String,
            invoice_id: String,
            skip_zero_qty_line_items: T::Boolean,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(customer_id:, invoice_id:, skip_zero_qty_line_items: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              customer_id: String,
              invoice_id: String,
              skip_zero_qty_line_items: T::Boolean,
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
