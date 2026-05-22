# typed: strong

module MetronomeSDK
  module Models
    class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::SpendThresholdConfiguration,
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

      sig { returns(MetronomeSDK::PaymentGateConfig) }
      attr_reader :payment_gate_config

      sig do
        params(
          payment_gate_config: MetronomeSDK::PaymentGateConfig::OrHash
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
            MetronomeSDK::SpendThresholdConfiguration::DiscountConfiguration
          )
        )
      end
      attr_reader :discount_configuration

      sig do
        params(
          discount_configuration:
            MetronomeSDK::SpendThresholdConfiguration::DiscountConfiguration::OrHash
        ).void
      end
      attr_writer :discount_configuration

      sig do
        params(
          commit: MetronomeSDK::BaseThresholdCommit::OrHash,
          is_enabled: T::Boolean,
          payment_gate_config: MetronomeSDK::PaymentGateConfig::OrHash,
          threshold_amount: Float,
          discount_configuration:
            MetronomeSDK::SpendThresholdConfiguration::DiscountConfiguration::OrHash
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
            payment_gate_config: MetronomeSDK::PaymentGateConfig,
            threshold_amount: Float,
            discount_configuration:
              MetronomeSDK::SpendThresholdConfiguration::DiscountConfiguration
          }
        )
      end
      def to_hash
      end

      class DiscountConfiguration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::SpendThresholdConfiguration::DiscountConfiguration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The fraction of the original amount that the customer pays after applying the
        # discount. For example, 0.85 means the customer pays 85% of the original amount
        # (a 15% discount).
        sig { returns(Float) }
        attr_accessor :payment_fraction

        # If provided, the discount stops applying once the spend tracker has accumulated
        # this much spend in the billing period.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::SpendThresholdConfiguration::DiscountConfiguration::Cap
            )
          )
        end
        attr_reader :cap

        sig do
          params(
            cap:
              MetronomeSDK::SpendThresholdConfiguration::DiscountConfiguration::Cap::OrHash
          ).void
        end
        attr_writer :cap

        sig do
          params(
            payment_fraction: Float,
            cap:
              MetronomeSDK::SpendThresholdConfiguration::DiscountConfiguration::Cap::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The fraction of the original amount that the customer pays after applying the
          # discount. For example, 0.85 means the customer pays 85% of the original amount
          # (a 15% discount).
          payment_fraction:,
          # If provided, the discount stops applying once the spend tracker has accumulated
          # this much spend in the billing period.
          cap: nil
        )
        end

        sig do
          override.returns(
            {
              payment_fraction: Float,
              cap:
                MetronomeSDK::SpendThresholdConfiguration::DiscountConfiguration::Cap
            }
          )
        end
        def to_hash
        end

        class Cap < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::SpendThresholdConfiguration::DiscountConfiguration::Cap,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Accumulated spend ceiling above which the discount stops applying.
          sig { returns(Float) }
          attr_accessor :amount

          # Alias of the spend tracker this cap is measured against.
          sig { returns(String) }
          attr_accessor :spend_tracker_alias

          # If provided, the discount stops applying once the spend tracker has accumulated
          # this much spend in the billing period.
          sig do
            params(amount: Float, spend_tracker_alias: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Accumulated spend ceiling above which the discount stops applying.
            amount:,
            # Alias of the spend tracker this cap is measured against.
            spend_tracker_alias:
          )
          end

          sig do
            override.returns({ amount: Float, spend_tracker_alias: String })
          end
          def to_hash
          end
        end
      end
    end
  end
end
