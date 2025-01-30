# typed: strong

module Metronome
  module Models
    class SchedulePointInTime < Metronome::BaseModel
      Shape = T.type_alias do
        {
          credit_type: Metronome::Models::CreditTypeData,
          schedule_items: T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem]
        }
      end

      sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
      attr_reader :credit_type

      sig { params(credit_type: Metronome::Models::CreditTypeData).void }
      attr_writer :credit_type

      sig { returns(T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem]) }
      attr_reader :schedule_items

      sig { params(schedule_items: T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem]).void }
      attr_writer :schedule_items

      sig do
        params(
          credit_type: Metronome::Models::CreditTypeData,
          schedule_items: T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem]
        ).void
      end
      def initialize(credit_type: nil, schedule_items: nil); end

      sig { returns(Metronome::Models::SchedulePointInTime::Shape) }
      def to_h; end

      class ScheduleItem < Metronome::BaseModel
        Shape = T.type_alias do
          {id: String, amount: Float, invoice_id: String, quantity: Float, timestamp: Time, unit_price: Float}
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
          ).void
        end
        def initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:); end

        sig { returns(Metronome::Models::SchedulePointInTime::ScheduleItem::Shape) }
        def to_h; end
      end
    end
  end
end
