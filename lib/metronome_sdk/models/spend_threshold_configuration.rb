# frozen_string_literal: true

module MetronomeSDK
  module Models
    class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute commit
      #
      #   @return [MetronomeSDK::Models::BaseThresholdCommit]
      required :commit, -> { MetronomeSDK::BaseThresholdCommit }

      # @!attribute is_enabled
      #   When set to false, the contract will not be evaluated against the
      #   threshold_amount. Toggling to true will result an immediate evaluation,
      #   regardless of prior state.
      #
      #   @return [Boolean]
      required :is_enabled, MetronomeSDK::Internal::Type::Boolean

      # @!attribute payment_gate_config
      #
      #   @return [MetronomeSDK::Models::PaymentGateConfig]
      required :payment_gate_config, -> { MetronomeSDK::PaymentGateConfig }

      # @!attribute threshold_amount
      #   Specify the threshold amount for the contract. Each time the contract's usage
      #   hits this amount, a threshold charge will be initiated.
      #
      #   @return [Float]
      required :threshold_amount, Float

      # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::SpendThresholdConfiguration} for more details.
      #
      #   @param commit [MetronomeSDK::Models::BaseThresholdCommit]
      #
      #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
      #
      #   @param payment_gate_config [MetronomeSDK::Models::PaymentGateConfig]
      #
      #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi
    end
  end
end
