# typed: strong

module Metronome
  module Models
    class ProService < Metronome::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Float) }
      def max_amount
      end

      sig { params(_: Float).returns(Float) }
      def max_amount=(_)
      end

      sig { returns(String) }
      def product_id
      end

      sig { params(_: String).returns(String) }
      def product_id=(_)
      end

      sig { returns(Float) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

      sig { returns(Float) }
      def unit_price
      end

      sig { params(_: Float).returns(Float) }
      def unit_price=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def custom_fields
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_fields=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def netsuite_sales_order_id
      end

      sig { params(_: String).returns(String) }
      def netsuite_sales_order_id=(_)
      end

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
