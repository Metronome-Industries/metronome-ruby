# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceAddChargeParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              customer_id: String,
              charge_id: String,
              customer_plan_id: String,
              description: String,
              invoice_start_timestamp: Time,
              price: Float,
              quantity: Float
            },
            Metronome::RequestParameters::Shape
          )
        end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :charge_id

        sig { returns(String) }
        attr_accessor :customer_plan_id

        sig { returns(String) }
        attr_accessor :description

        sig { returns(Time) }
        attr_accessor :invoice_start_timestamp

        sig { returns(Float) }
        attr_accessor :price

        sig { returns(Float) }
        attr_accessor :quantity

        sig do
          params(
            customer_id: String,
            charge_id: String,
            customer_plan_id: String,
            description: String,
            invoice_start_timestamp: Time,
            price: Float,
            quantity: Float,
            request_options: Metronome::RequestOpts
          ).void
        end
        def initialize(
          customer_id:,
          charge_id:,
          customer_plan_id:,
          description:,
          invoice_start_timestamp:,
          price:,
          quantity:,
          request_options: {}
        ); end

        sig { returns(Metronome::Models::Customers::InvoiceAddChargeParams::Shape) }
        def to_h; end
      end
    end
  end
end
