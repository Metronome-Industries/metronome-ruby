# frozen_string_literal: true

module MetronomeSDK
  module Models
    class PrepaidBalanceThresholdConfigurationV2 < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute commit
      #
      #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2::Commit]
      required :commit, -> { MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::Commit }

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

      # @!attribute recharge_to_amount
      #   Specify the amount the balance should be recharged to.
      #
      #   @return [Float]
      required :recharge_to_amount, Float

      # @!attribute threshold_amount
      #   Specify the threshold amount for the contract. Each time the contract's balance
      #   lowers to this amount, a threshold charge will be initiated.
      #
      #   @return [Float]
      required :threshold_amount, Float

      # @!attribute custom_credit_type_id
      #   If provided, the threshold, recharge-to amount, and the resulting threshold
      #   commit amount will be in terms of this credit type instead of the fiat currency.
      #
      #   @return [String, nil]
      optional :custom_credit_type_id, String

      # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:, custom_credit_type_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2} for more details.
      #
      #   @param commit [MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2::Commit]
      #
      #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
      #
      #   @param payment_gate_config [MetronomeSDK::Models::PaymentGateConfigV2]
      #
      #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
      #
      #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's balance
      #
      #   @param custom_credit_type_id [String] If provided, the threshold, recharge-to amount, and the resulting threshold comm

      # @see MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2#commit
      class Commit < MetronomeSDK::Models::UpdateBaseThresholdCommit
        # @!attribute applicable_product_ids
        #   Which products the threshold commit applies to. If applicable_product_ids,
        #   applicable_product_tags or specifiers are not provided, the commit applies to
        #   all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute applicable_product_tags
        #   Which tags the threshold commit applies to. If applicable_product_ids,
        #   applicable_product_tags or specifiers are not provided, the commit applies to
        #   all products.
        #
        #   @return [Array<String>, nil]
        optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute specifiers
        #   List of filters that determine what kind of customer usage draws down a commit
        #   or credit. A customer's usage needs to meet the condition of at least one of the
        #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
        #   be used together with `applicable_product_ids` or `applicable_product_tags`.
        #   Instead, to target usage by product or product tag, pass those values in the
        #   body of `specifiers`.
        #
        #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
        optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] }

        # @!method initialize(applicable_product_ids: nil, applicable_product_tags: nil, specifiers: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2::Commit} for more
        #   details.
        #
        #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If applicable_product_ids, appli
        #
        #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If applicable_product_ids, applicabl
        #
        #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o
      end
    end
  end
end
