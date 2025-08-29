# typed: strong

module MetronomeSDK
  module Models
    class RecurringCommitSubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::RecurringCommitSubscriptionConfig,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          MetronomeSDK::RecurringCommitSubscriptionConfig::Allocation::TaggedSymbol
        )
      end
      attr_accessor :allocation

      sig do
        returns(
          MetronomeSDK::RecurringCommitSubscriptionConfig::ApplySeatIncreaseConfig
        )
      end
      attr_reader :apply_seat_increase_config

      sig do
        params(
          apply_seat_increase_config:
            MetronomeSDK::RecurringCommitSubscriptionConfig::ApplySeatIncreaseConfig::OrHash
        ).void
      end
      attr_writer :apply_seat_increase_config

      sig { returns(String) }
      attr_accessor :subscription_id

      sig do
        params(
          allocation:
            MetronomeSDK::RecurringCommitSubscriptionConfig::Allocation::OrSymbol,
          apply_seat_increase_config:
            MetronomeSDK::RecurringCommitSubscriptionConfig::ApplySeatIncreaseConfig::OrHash,
          subscription_id: String
        ).returns(T.attached_class)
      end
      def self.new(allocation:, apply_seat_increase_config:, subscription_id:)
      end

      sig do
        override.returns(
          {
            allocation:
              MetronomeSDK::RecurringCommitSubscriptionConfig::Allocation::TaggedSymbol,
            apply_seat_increase_config:
              MetronomeSDK::RecurringCommitSubscriptionConfig::ApplySeatIncreaseConfig,
            subscription_id: String
          }
        )
      end
      def to_hash
      end

      module Allocation
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              MetronomeSDK::RecurringCommitSubscriptionConfig::Allocation
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL =
          T.let(
            :INDIVIDUAL,
            MetronomeSDK::RecurringCommitSubscriptionConfig::Allocation::TaggedSymbol
          )
        POOLED =
          T.let(
            :POOLED,
            MetronomeSDK::RecurringCommitSubscriptionConfig::Allocation::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              MetronomeSDK::RecurringCommitSubscriptionConfig::Allocation::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::RecurringCommitSubscriptionConfig::ApplySeatIncreaseConfig,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Indicates whether a mid-period seat increase should be prorated.
        sig { returns(T::Boolean) }
        attr_accessor :is_prorated

        sig { params(is_prorated: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Indicates whether a mid-period seat increase should be prorated.
          is_prorated:
        )
        end

        sig { override.returns({ is_prorated: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
