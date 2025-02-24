# typed: strong

module Metronome
  module Models
    class SchedulePointInTime < Metronome::BaseModel
      sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
      def credit_type
      end

      sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
      def credit_type=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem])) }
      def schedule_items
      end

      sig do
        params(_: T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem])
          .returns(T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem])
      end
      def schedule_items=(_)
      end

      sig do
        params(
          credit_type: Metronome::Models::CreditTypeData,
          schedule_items: T::Array[Metronome::Models::SchedulePointInTime::ScheduleItem]
        )
          .void
      end
      def initialize(credit_type: nil, schedule_items: nil)
      end

      sig do
        override
          .returns(
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
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Float) }
        def amount
        end

        sig { params(_: Float).returns(Float) }
        def amount=(_)
        end

        sig { returns(String) }
        def invoice_id
        end

        sig { params(_: String).returns(String) }
        def invoice_id=(_)
        end

        sig { returns(Float) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

        sig { returns(Time) }
        def timestamp
        end

        sig { params(_: Time).returns(Time) }
        def timestamp=(_)
        end

        sig { returns(Float) }
        def unit_price
        end

        sig { params(_: Float).returns(Float) }
        def unit_price=(_)
        end

        sig do
          params(
            id: String,
            amount: Float,
            invoice_id: String,
            quantity: Float,
            timestamp: Time,
            unit_price: Float
          )
            .void
        end
        def initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
        end

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
        def to_hash
        end
      end
    end
  end
end
