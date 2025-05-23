# typed: strong

module MetronomeSDK
  module Models
    class SchedulePointInTime < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::SchedulePointInTime,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
      attr_reader :credit_type

      sig { params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void }
      attr_writer :credit_type

      sig do
        returns(
          T.nilable(T::Array[MetronomeSDK::SchedulePointInTime::ScheduleItem])
        )
      end
      attr_reader :schedule_items

      sig do
        params(
          schedule_items:
            T::Array[MetronomeSDK::SchedulePointInTime::ScheduleItem::OrHash]
        ).void
      end
      attr_writer :schedule_items

      sig do
        params(
          credit_type: MetronomeSDK::CreditTypeData::OrHash,
          schedule_items:
            T::Array[MetronomeSDK::SchedulePointInTime::ScheduleItem::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(credit_type: nil, schedule_items: nil)
      end

      sig do
        override.returns(
          {
            credit_type: MetronomeSDK::CreditTypeData,
            schedule_items:
              T::Array[MetronomeSDK::SchedulePointInTime::ScheduleItem]
          }
        )
      end
      def to_hash
      end

      class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::SchedulePointInTime::ScheduleItem,
              MetronomeSDK::Internal::AnyHash
            )
          end

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
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          amount:,
          invoice_id:,
          quantity:,
          timestamp:,
          unit_price:
        )
        end

        sig do
          override.returns(
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
        def to_hash
        end
      end
    end
  end
end
