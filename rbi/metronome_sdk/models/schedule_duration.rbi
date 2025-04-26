# typed: strong

module MetronomeSDK
  module Models
    class ScheduleDuration < MetronomeSDK::Internal::Type::BaseModel
      sig { returns(T::Array[MetronomeSDK::Models::ScheduleDuration::ScheduleItem]) }
      attr_accessor :schedule_items

      sig { returns(T.nilable(MetronomeSDK::Models::CreditTypeData)) }
      attr_reader :credit_type

      sig { params(credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash)).void }
      attr_writer :credit_type

      sig do
        params(
          schedule_items: T::Array[T.any(MetronomeSDK::Models::ScheduleDuration::ScheduleItem, MetronomeSDK::Internal::AnyHash)],
          credit_type: T.any(MetronomeSDK::Models::CreditTypeData, MetronomeSDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(schedule_items:, credit_type: nil); end

      sig do
        override
          .returns(
            {
              schedule_items: T::Array[MetronomeSDK::Models::ScheduleDuration::ScheduleItem],
              credit_type: MetronomeSDK::Models::CreditTypeData
            }
          )
      end
      def to_hash; end

      class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :ending_before

        sig { returns(Time) }
        attr_accessor :starting_at

        sig do
          params(id: String, amount: Float, ending_before: Time, starting_at: Time).returns(T.attached_class)
        end
        def self.new(id:, amount:, ending_before:, starting_at:); end

        sig { override.returns({id: String, amount: Float, ending_before: Time, starting_at: Time}) }
        def to_hash; end
      end
    end
  end
end
