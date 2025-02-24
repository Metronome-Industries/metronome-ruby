# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceAddChargeParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(String) }
        def charge_id
        end

        sig { params(_: String).returns(String) }
        def charge_id=(_)
        end

        sig { returns(String) }
        def customer_plan_id
        end

        sig { params(_: String).returns(String) }
        def customer_plan_id=(_)
        end

        sig { returns(String) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(Time) }
        def invoice_start_timestamp
        end

        sig { params(_: Time).returns(Time) }
        def invoice_start_timestamp=(_)
        end

        sig { returns(Float) }
        def price
        end

        sig { params(_: Float).returns(Float) }
        def price=(_)
        end

        sig { returns(Float) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

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
