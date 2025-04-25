# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceAddChargeParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          sig { returns(String) }
          attr_accessor :customer_id

          # The Metronome ID of the charge to add to the invoice. Note that the charge must
          # be on a product that is not on the current plan, and the product must have only
          # fixed charges.
          sig { returns(String) }
          attr_accessor :charge_id

          # The Metronome ID of the customer plan to add the charge to.
          sig { returns(String) }
          attr_accessor :customer_plan_id

          sig { returns(String) }
          attr_accessor :description

          # The start_timestamp of the invoice to add the charge to.
          sig { returns(Time) }
          attr_accessor :invoice_start_timestamp

          # The price of the charge. This price will match the currency on the invoice, e.g.
          # USD cents.
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
              request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(
            customer_id:,
            # The Metronome ID of the charge to add to the invoice. Note that the charge must
            # be on a product that is not on the current plan, and the product must have only
            # fixed charges.
            charge_id:,
            # The Metronome ID of the customer plan to add the charge to.
            customer_plan_id:,
            description:,
            # The start_timestamp of the invoice to add the charge to.
            invoice_start_timestamp:,
            # The price of the charge. This price will match the currency on the invoice, e.g.
            # USD cents.
            price:,
            quantity:,
            request_options: {}
          ); end
          sig do
            override
              .returns(
                {
                  customer_id: String,
                  charge_id: String,
                  customer_plan_id: String,
                  description: String,
                  invoice_start_timestamp: Time,
                  price: Float,
                  quantity: Float,
                  request_options: MetronomeSDK::RequestOptions
                }
              )
          end
          def to_hash; end
        end
      end
    end
  end
end
