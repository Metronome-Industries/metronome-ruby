# typed: strong

module Metronome
  module Models
    class SchedulePointInTime < Metronome::BaseModel
      sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
      attr_reader :credit_type

      sig { params(credit_type: Metronome::Models::CreditTypeData).void }
      attr_writer :credit_type

      sig { returns(T.nilable(T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem])) }
      attr_reader :schedule_items

      sig { params(schedule_items: T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem]).void }
      attr_writer :schedule_items

      sig do
        params(
          credit_type: Metronome::Models::CreditTypeData,
          schedule_items: T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem]
        ).void
      end
      def initialize(credit_type: nil, schedule_items: nil)
      end

      sig do
        override.returns(
          {
            credit_type: Metronome::Models::CreditTypeData,
            schedule_items: T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem]
          }
        )
      end
      def to_hash
      end

      class ScheduleItem < Metronome::BaseModel
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
          ).void
        end
        def initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
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
