# frozen_string_literal: true

module MetronomeSDK
  module Models
    class RecurringCommitSubscriptionConfig < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute allocation
      #
      #   @return [Symbol, MetronomeSDK::Models::RecurringCommitSubscriptionConfig::Allocation]
      required :allocation, enum: -> { MetronomeSDK::RecurringCommitSubscriptionConfig::Allocation }

      # @!attribute apply_seat_increase_config
      #
      #   @return [MetronomeSDK::Models::RecurringCommitSubscriptionConfig::ApplySeatIncreaseConfig]
      required :apply_seat_increase_config,
               -> { MetronomeSDK::RecurringCommitSubscriptionConfig::ApplySeatIncreaseConfig }

      # @!attribute subscription_id
      #
      #   @return [String]
      required :subscription_id, String

      # @!method initialize(allocation:, apply_seat_increase_config:, subscription_id:)
      #   @param allocation [Symbol, MetronomeSDK::Models::RecurringCommitSubscriptionConfig::Allocation]
      #   @param apply_seat_increase_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig::ApplySeatIncreaseConfig]
      #   @param subscription_id [String]

      # @see MetronomeSDK::Models::RecurringCommitSubscriptionConfig#allocation
      module Allocation
        extend MetronomeSDK::Internal::Type::Enum

        INDIVIDUAL = :INDIVIDUAL
        POOLED = :POOLED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Models::RecurringCommitSubscriptionConfig#apply_seat_increase_config
      class ApplySeatIncreaseConfig < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute is_prorated
        #   Indicates whether a mid-period seat increase should be prorated.
        #
        #   @return [Boolean]
        required :is_prorated, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(is_prorated:)
        #   @param is_prorated [Boolean] Indicates whether a mid-period seat increase should be prorated.
      end
    end
  end
end
