# typed: strong

module MetronomeSDK
  module Models
    class ScheduleDuration < MetronomeSDK::BaseModel
      sig { returns(T::Array[MetronomeSDK::Models::ScheduleDuration::ScheduleItem]) }
      def schedule_items
      end

      sig do
        params(_: T::Array[MetronomeSDK::Models::ScheduleDuration::ScheduleItem])
          .returns(T::Array[MetronomeSDK::Models::ScheduleDuration::ScheduleItem])
      end
      def schedule_items=(_)
      end

      sig { returns(T.nilable(MetronomeSDK::Models::CreditTypeData)) }
      def credit_type
      end

      sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
      def credit_type=(_)
      end

      sig do
        params(
          schedule_items: T::Array[MetronomeSDK::Models::ScheduleDuration::ScheduleItem],
          credit_type: MetronomeSDK::Models::CreditTypeData
        )
          .void
      end
      def initialize(schedule_items:, credit_type: nil)
      end

      sig do
        override
          .returns(
            {
              schedule_items: T::Array[MetronomeSDK::Models::ScheduleDuration::ScheduleItem],
              credit_type: MetronomeSDK::Models::CreditTypeData
            }
          )
      end
      def to_hash
      end

      class ScheduleItem < MetronomeSDK::BaseModel
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

        sig { returns(Time) }
        def ending_before
        end

        sig { params(_: Time).returns(Time) }
        def ending_before=(_)
        end

        sig { returns(Time) }
        def starting_at
        end

        sig { params(_: Time).returns(Time) }
        def starting_at=(_)
        end

        sig { params(id: String, amount: Float, ending_before: Time, starting_at: Time).void }
        def initialize(id:, amount:, ending_before:, starting_at:)
        end

        sig { override.returns({id: String, amount: Float, ending_before: Time, starting_at: Time}) }
        def to_hash
        end
      end
    end
  end
end
