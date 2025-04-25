# typed: strong

module MetronomeSDK
  module Models
    class ProService < MetronomeSDK::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # Maximum amount for the term.
      sig { returns(Float) }
      attr_accessor :max_amount

      sig { returns(String) }
      attr_accessor :product_id

      # Quantity for the charge. Will be multiplied by unit_price to determine the
      # amount.
      sig { returns(Float) }
      attr_accessor :quantity

      # Unit price for the charge. Will be multiplied by quantity to determine the
      # amount and must be specified.
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

      # This field's availability is dependent on your client's configuration.
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
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        # Maximum amount for the term.
        max_amount:,
        product_id:,
        # Quantity for the charge. Will be multiplied by unit_price to determine the
        # amount.
        quantity:,
        # Unit price for the charge. Will be multiplied by quantity to determine the
        # amount and must be specified.
        unit_price:,
        custom_fields: nil,
        description: nil,
        # This field's availability is dependent on your client's configuration.
        netsuite_sales_order_id: nil
      ); end
      sig do
        override
          .returns(
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
      def to_hash; end
    end
  end
end
