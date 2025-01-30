# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceRetrieveParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all(
            {customer_id: String, invoice_id: String, skip_zero_qty_line_items: T::Boolean},
            Metronome::RequestParameters::Shape
          )
        end

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
            request_options: Metronome::RequestOpts
          ).void
        end
        def initialize(customer_id:, invoice_id:, skip_zero_qty_line_items: nil, request_options: {}); end

        sig { returns(Metronome::Models::Customers::InvoiceRetrieveParams::Shape) }
        def to_h; end
      end
    end
  end
end
