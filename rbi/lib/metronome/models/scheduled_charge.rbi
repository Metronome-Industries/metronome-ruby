# typed: strong

module Metronome
  module Models
    class ScheduledCharge < Metronome::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Metronome::Models::ScheduledCharge::Product) }
      def product
      end

      sig do
        params(_: Metronome::Models::ScheduledCharge::Product).returns(Metronome::Models::ScheduledCharge::Product)
      end
      def product=(_)
      end

      sig { returns(Metronome::Models::SchedulePointInTime) }
      def schedule
      end

      sig do
        params(_: Metronome::Models::SchedulePointInTime).returns(Metronome::Models::SchedulePointInTime)
      end
      def schedule=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def custom_fields
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_fields=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
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
          product: Metronome::Models::ScheduledCharge::Product,
          schedule: Metronome::Models::SchedulePointInTime,
          custom_fields: T::Hash[Symbol, String],
          name: String,
          netsuite_sales_order_id: String
        ).void
      end
      def initialize(id:, product:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
      end

      sig do
        override.returns(
          {
            id: String,
            product: Metronome::Models::ScheduledCharge::Product,
            schedule: Metronome::Models::SchedulePointInTime,
            custom_fields: T::Hash[Symbol, String],
            name: String,
            netsuite_sales_order_id: String
          }
        )
      end
      def to_hash
      end

      class Product < Metronome::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { params(id: String, name: String).void }
        def initialize(id:, name:)
        end

        sig { override.returns({id: String, name: String}) }
        def to_hash
        end
      end
    end
  end
end
