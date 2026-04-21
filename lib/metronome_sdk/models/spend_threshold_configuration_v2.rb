# frozen_string_literal: true

module MetronomeSDK
  module Models
    class SpendThresholdConfigurationV2 < MetronomeSDK::Internal::Type::BaseModel
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
      #   @return [MetronomeSDK::Models::PaymentGateConfigV2]
      required :payment_gate_config, -> { MetronomeSDK::PaymentGateConfigV2 }

      # @!attribute threshold_amount
      #   Specify the threshold amount for the contract. Each time the contract's usage
      #   hits this amount, a threshold charge will be initiated.
      #
      #   @return [Float]
      required :threshold_amount, Float

      # @!attribute discount_configuration
      #
      #   @return [MetronomeSDK::Models::SpendThresholdConfigurationV2::DiscountConfiguration, nil]
      optional :discount_configuration,
               -> { MetronomeSDK::SpendThresholdConfigurationV2::DiscountConfiguration }

      # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:, discount_configuration: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::SpendThresholdConfigurationV2} for more details.
      #
      #   @param commit [MetronomeSDK::Models::BaseThresholdCommit]
      #
      #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
      #
      #   @param payment_gate_config [MetronomeSDK::Models::PaymentGateConfigV2]
      #
      #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi
      #
      #   @param discount_configuration [MetronomeSDK::Models::SpendThresholdConfigurationV2::DiscountConfiguration]

      # @see MetronomeSDK::Models::SpendThresholdConfigurationV2#discount_configuration
      class DiscountConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute payment_fraction
        #   The fraction of the original amount that the customer pays after applying the
        #   discount. For example, 0.85 means the customer pays 85% of the original amount
        #   (a 15% discount).
        #
        #   @return [Float]
        required :payment_fraction, Float

        # @!method initialize(payment_fraction:)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::SpendThresholdConfigurationV2::DiscountConfiguration} for
        #   more details.
        #
        #   @param payment_fraction [Float] The fraction of the original amount that the customer pays after applying the di
      end
    end
  end
end
