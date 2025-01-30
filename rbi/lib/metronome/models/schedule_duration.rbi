# typed: strong

module Metronome
  module Models
    class ScheduleDuration < Metronome::BaseModel
      Shape = T.type_alias do
        {
          schedule_items: T::Array[Metronome::Models::ScheduleDuration::ScheduleItem],
          credit_type: Metronome::Models::CreditTypeData
        }
      end

      sig { returns(T::Array[Metronome::Models::ScheduleDuration::ScheduleItem]) }
      attr_accessor :schedule_items

      sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
      attr_reader :credit_type

      sig { params(credit_type: Metronome::Models::CreditTypeData).void }
      attr_writer :credit_type

      sig do
        params(
          schedule_items: T::Array[Metronome::Models::ScheduleDuration::ScheduleItem],
          credit_type: Metronome::Models::CreditTypeData
        ).void
      end
      def initialize(schedule_items:, credit_type: nil); end

      sig { returns(Metronome::Models::ScheduleDuration::Shape) }
      def to_h; end

      class ScheduleItem < Metronome::BaseModel
        Shape = T.type_alias { {id: String, amount: Float, ending_before: Time, starting_at: Time} }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :ending_before

        sig { returns(Time) }
        attr_accessor :starting_at

        sig { params(id: String, amount: Float, ending_before: Time, starting_at: Time).void }
        def initialize(id:, amount:, ending_before:, starting_at:); end

        sig { returns(Metronome::Models::ScheduleDuration::ScheduleItem::Shape) }
        def to_h; end
      end
    end
  end
end
