# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceAddChargeParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

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
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
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
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              charge_id: String,
              customer_plan_id: String,
              description: String,
              invoice_start_timestamp: Time,
              price: Float,
              quantity: Float,
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
