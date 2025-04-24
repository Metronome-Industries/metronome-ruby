# typed: strong

module MetronomeSDK
  module Models
    class Discount < MetronomeSDK::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(MetronomeSDK::Models::Discount::Product) }
      def product
      end

      sig { params(_: MetronomeSDK::Models::Discount::Product).returns(MetronomeSDK::Models::Discount::Product) }
      def product=(_)
      end

      sig { returns(MetronomeSDK::Models::SchedulePointInTime) }
      def schedule
      end

      sig { params(_: MetronomeSDK::Models::SchedulePointInTime).returns(MetronomeSDK::Models::SchedulePointInTime) }
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
          product: MetronomeSDK::Models::Discount::Product,
          schedule: MetronomeSDK::Models::SchedulePointInTime,
          custom_fields: T::Hash[Symbol, String],
          name: String,
          netsuite_sales_order_id: String
        )
          .void
      end
      def initialize(id:, product:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              product: MetronomeSDK::Models::Discount::Product,
              schedule: MetronomeSDK::Models::SchedulePointInTime,
              custom_fields: T::Hash[Symbol, String],
              name: String,
              netsuite_sales_order_id: String
            }
          )
      end
      def to_hash
      end

      class Product < MetronomeSDK::BaseModel
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
