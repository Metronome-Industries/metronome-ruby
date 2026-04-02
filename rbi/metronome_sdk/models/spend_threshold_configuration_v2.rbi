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

      sig { returns(MetronomeSDK::BaseThresholdCommit) }
      attr_reader :commit

      sig { params(commit: MetronomeSDK::BaseThresholdCommit::OrHash).void }
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
        returns(
          T.nilable(
            MetronomeSDK::SpendThresholdConfigurationV2::DiscountConfiguration
          )
        )
      end
      attr_reader :discount_configuration

      sig do
        params(
          discount_configuration:
            MetronomeSDK::SpendThresholdConfigurationV2::DiscountConfiguration::OrHash
        ).void
      end
      attr_writer :discount_configuration

      sig do
        params(
          commit: MetronomeSDK::BaseThresholdCommit::OrHash,
          is_enabled: T::Boolean,
          payment_gate_config: MetronomeSDK::PaymentGateConfigV2::OrHash,
          threshold_amount: Float,
          discount_configuration:
            MetronomeSDK::SpendThresholdConfigurationV2::DiscountConfiguration::OrHash
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
        threshold_amount:,
        discount_configuration: nil
      )
      end

      sig do
        override.returns(
          {
            commit: MetronomeSDK::BaseThresholdCommit,
            is_enabled: T::Boolean,
            payment_gate_config: MetronomeSDK::PaymentGateConfigV2,
            threshold_amount: Float,
            discount_configuration:
              MetronomeSDK::SpendThresholdConfigurationV2::DiscountConfiguration
          }
        )
      end
      def to_hash
      end

      class DiscountConfiguration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::SpendThresholdConfigurationV2::DiscountConfiguration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The fraction of the original amount that the customer pays after applying the
        # discount. For example, 0.85 means the customer pays 85% of the original amount
        # (a 15% discount).
        sig { returns(Float) }
        attr_accessor :payment_fraction

        sig { params(payment_fraction: Float).returns(T.attached_class) }
        def self.new(
          # The fraction of the original amount that the customer pays after applying the
          # discount. For example, 0.85 means the customer pays 85% of the original amount
          # (a 15% discount).
          payment_fraction:
        )
        end

        sig { override.returns({ payment_fraction: Float }) }
        def to_hash
        end
      end
    end
  end
end
