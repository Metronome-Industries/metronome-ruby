# typed: strong

module MetronomeSDK
  module Models
    class SpendThresholdConfigurationV2 < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::SpendThresholdConfigurationV2,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig { returns(MetronomeSDK::UpdateBaseThresholdCommit) }
      attr_reader :commit

      sig do
        params(commit: MetronomeSDK::UpdateBaseThresholdCommit::OrHash).void
      end
      attr_writer :commit

      # When set to false, the contract will not be evaluated against the
      # threshold_amount. Toggling to true will result an immediate evaluation,
      # regardless of prior state.
      sig { returns(T::Boolean) }
      attr_accessor :is_enabled

      sig { returns(MetronomeSDK::PaymentGateConfigV2) }
      attr_reader :payment_gate_config

      sig do
        params(
          payment_gate_config: MetronomeSDK::PaymentGateConfigV2::OrHash
        ).void
      end
      attr_writer :payment_gate_config

      # Specify the threshold amount for the contract. Each time the contract's usage
      # hits this amount, a threshold charge will be initiated.
      sig { returns(Float) }
      attr_accessor :threshold_amount

      sig do
        params(
          commit: MetronomeSDK::UpdateBaseThresholdCommit::OrHash,
          is_enabled: T::Boolean,
          payment_gate_config: MetronomeSDK::PaymentGateConfigV2::OrHash,
          threshold_amount: Float
        ).returns(T.attached_class)
      end
      def self.new(
        commit:,
        # When set to false, the contract will not be evaluated against the
        # threshold_amount. Toggling to true will result an immediate evaluation,
        # regardless of prior state.
        is_enabled:,
        payment_gate_config:,
        # Specify the threshold amount for the contract. Each time the contract's usage
        # hits this amount, a threshold charge will be initiated.
        threshold_amount:
      )
      end

      sig do
        override.returns(
          {
            commit: MetronomeSDK::UpdateBaseThresholdCommit,
            is_enabled: T::Boolean,
            payment_gate_config: MetronomeSDK::PaymentGateConfigV2,
            threshold_amount: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
