# typed: strong

module MetronomeSDK
  module Models
    class SchedulePointInTime < MetronomeSDK::Internal::Type::BaseModel
      sig { returns(T.nilable(MetronomeSDK::Models::CreditTypeData)) }
      attr_reader :credit_type

      sig { params(credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash)).void }
      attr_writer :credit_type

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::SchedulePointInTime::ScheduleItem])) }
      attr_reader :schedule_items

      sig do
        params(
          schedule_items: T::Array[T.any(MetronomeSDK::Models::SchedulePointInTime::ScheduleItem, MetronomeSDK::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :schedule_items

      sig do
        params(
          credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash),
          schedule_items: T::Array[T.any(MetronomeSDK::Models::SchedulePointInTime::ScheduleItem, MetronomeSDK::Internal::AnyHash)]
        )
          .returns(T.attached_class)
      end
      def self.new(credit_type: nil, schedule_items: nil); end

      sig do
        override
          .returns(
            {
              credit_type: MetronomeSDK::Models::CreditTypeData,
              schedule_items: T::Array[MetronomeSDK::Models::SchedulePointInTime::ScheduleItem]
            }
          )
      end
      def to_hash; end

      class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :invoice_id

        sig { returns(Float) }
        attr_accessor :quantity

        sig { returns(Time) }
        attr_accessor :timestamp

        sig { returns(Float) }
        attr_accessor :unit_price

        sig do
          params(
            id: String,
            amount: Float,
            invoice_id: String,
            quantity: Float,
            timestamp: Time,
            unit_price: Float
          )
            .returns(T.attached_class)
        end
        def self.new(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:); end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Float,
                invoice_id: String,
                quantity: Float,
                timestamp: Time,
                unit_price: Float
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
