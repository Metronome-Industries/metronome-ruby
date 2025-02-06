# typed: strong

module Metronome
  module Models
    class ProService < Metronome::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Float) }
      attr_accessor :max_amount

      sig { returns(String) }
      attr_accessor :product_id

      sig { returns(Float) }
      attr_accessor :quantity

      sig { returns(Float) }
      attr_accessor :unit_price

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(String)) }
      attr_reader :netsuite_sales_order_id

      sig { params(netsuite_sales_order_id: String).void }
      attr_writer :netsuite_sales_order_id

      sig do
        params(
          id: String,
          max_amount: Float,
          product_id: String,
          quantity: Float,
          unit_price: Float,
          custom_fields: T::Hash[Symbol, String],
          description: String,
          netsuite_sales_order_id: String
        ).void
      end
      def initialize(
        id:,
        max_amount:,
        product_id:,
        quantity:,
        unit_price:,
        custom_fields: nil,
        description: nil,
        netsuite_sales_order_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            max_amount: Float,
            product_id: String,
            quantity: Float,
            unit_price: Float,
            custom_fields: T::Hash[Symbol, String],
            description: String,
            netsuite_sales_order_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
