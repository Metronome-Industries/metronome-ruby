# typed: strong

module MetronomeSDK
  module Models
    class ScheduleDuration < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::ScheduleDuration, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(T::Array[MetronomeSDK::ScheduleDuration::ScheduleItem]) }
      attr_accessor :schedule_items

      # Indicates how the balance is drawn down. `SPEND` deducts the dollar cost of
      # usage. `QUANTITY` deducts the number of units used.
      sig do
        returns(
          T.nilable(MetronomeSDK::ScheduleDuration::AccessType::TaggedSymbol)
        )
      end
      attr_reader :access_type

      sig do
        params(
          access_type: MetronomeSDK::ScheduleDuration::AccessType::OrSymbol
        ).void
      end
      attr_writer :access_type

      sig { returns(T.nilable(MetronomeSDK::CreditTypeData)) }
      attr_reader :credit_type

      sig { params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void }
      attr_writer :credit_type

      sig do
        params(
          schedule_items:
            T::Array[MetronomeSDK::ScheduleDuration::ScheduleItem::OrHash],
          access_type: MetronomeSDK::ScheduleDuration::AccessType::OrSymbol,
          credit_type: MetronomeSDK::CreditTypeData::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        schedule_items:,
        # Indicates how the balance is drawn down. `SPEND` deducts the dollar cost of
        # usage. `QUANTITY` deducts the number of units used.
        access_type: nil,
        credit_type: nil
      )
      end

      sig do
        override.returns(
          {
            schedule_items:
              T::Array[MetronomeSDK::ScheduleDuration::ScheduleItem],
            access_type:
              MetronomeSDK::ScheduleDuration::AccessType::TaggedSymbol,
            credit_type: MetronomeSDK::CreditTypeData
          }
        )
      end
      def to_hash
      end

      class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::ScheduleDuration::ScheduleItem,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :ending_before

        sig { returns(Time) }
        attr_accessor :starting_at

        sig do
          params(
            id: String,
            amount: Float,
            ending_before: Time,
            starting_at: Time
          ).returns(T.attached_class)
        end
        def self.new(id:, amount:, ending_before:, starting_at:)
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Float,
              ending_before: Time,
              starting_at: Time
            }
          )
        end
        def to_hash
        end
      end

      # Indicates how the balance is drawn down. `SPEND` deducts the dollar cost of
      # usage. `QUANTITY` deducts the number of units used.
      module AccessType
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, MetronomeSDK::ScheduleDuration::AccessType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPEND =
          T.let(
            :SPEND,
            MetronomeSDK::ScheduleDuration::AccessType::TaggedSymbol
          )
        QUANTITY =
          T.let(
            :QUANTITY,
            MetronomeSDK::ScheduleDuration::AccessType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[MetronomeSDK::ScheduleDuration::AccessType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
