# typed: strong

module Metronome
  module Models
    class Discount < Metronome::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          product: Metronome::Models::Discount::Product,
          schedule: Metronome::Models::SchedulePointInTime,
          custom_fields: T::Hash[Symbol, String],
          name: String,
          netsuite_sales_order_id: String
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Metronome::Models::Discount::Product) }
      attr_accessor :product

      sig { returns(Metronome::Models::SchedulePointInTime) }
      attr_accessor :schedule

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :netsuite_sales_order_id

      sig { params(netsuite_sales_order_id: String).void }
      attr_writer :netsuite_sales_order_id

      sig do
        params(
          id: String,
          product: Metronome::Models::Discount::Product,
          schedule: Metronome::Models::SchedulePointInTime,
          custom_fields: T::Hash[Symbol, String],
          name: String,
          netsuite_sales_order_id: String
        ).void
      end
      def initialize(id:, product:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
      end

      sig { returns(Metronome::Models::Discount::Shape) }
      def to_h; end

      class Product < Metronome::BaseModel
        Shape = T.type_alias { {id: String, name: String} }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig { params(id: String, name: String).void }
        def initialize(id:, name:); end

        sig { returns(Metronome::Models::Discount::Product::Shape) }
        def to_h; end
      end
    end
  end
end
