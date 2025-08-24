# frozen_string_literal: true

module MetronomeSDK
  module Models
    class SpendThresholdConfigurationV2 < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute commit
      #
      #   @return [MetronomeSDK::Models::SpendThresholdConfigurationV2::Commit]
      required :commit, -> { MetronomeSDK::SpendThresholdConfigurationV2::Commit }

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

      # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::SpendThresholdConfigurationV2} for more details.
      #
      #   @param commit [MetronomeSDK::Models::SpendThresholdConfigurationV2::Commit]
      #
      #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
      #
      #   @param payment_gate_config [MetronomeSDK::Models::PaymentGateConfigV2]
      #
      #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

      # @see MetronomeSDK::Models::SpendThresholdConfigurationV2#commit
      class Commit < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute product_id
        #   The commit product that will be used to generate the line item for commit
        #   payment.
        #
        #   @return [String]
        required :product_id, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute name
        #   Specify the name of the line item for the threshold charge. If left blank, it
        #   will default to the commit product name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(product_id:, description: nil, name: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::SpendThresholdConfigurationV2::Commit} for more details.
        #
        #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
        #
        #   @param description [String]
        #
        #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
      end
    end
  end
end
