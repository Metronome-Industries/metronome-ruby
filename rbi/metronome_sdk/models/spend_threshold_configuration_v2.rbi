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

      sig { returns(MetronomeSDK::SpendThresholdConfigurationV2::Commit) }
      attr_reader :commit

      sig do
        params(
          commit: MetronomeSDK::SpendThresholdConfigurationV2::Commit::OrHash
        ).void
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
          commit: MetronomeSDK::SpendThresholdConfigurationV2::Commit::OrHash,
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
            commit: MetronomeSDK::SpendThresholdConfigurationV2::Commit,
            is_enabled: T::Boolean,
            payment_gate_config: MetronomeSDK::PaymentGateConfigV2,
            threshold_amount: Float
          }
        )
      end
      def to_hash
      end

      class Commit < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::SpendThresholdConfigurationV2::Commit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The commit product that will be used to generate the line item for commit
        # payment.
        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Specify the name of the line item for the threshold charge. If left blank, it
        # will default to the commit product name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(product_id: String, description: String, name: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The commit product that will be used to generate the line item for commit
          # payment.
          product_id:,
          description: nil,
          # Specify the name of the line item for the threshold charge. If left blank, it
          # will default to the commit product name.
          name: nil
        )
        end

        sig do
          override.returns(
            { product_id: String, description: String, name: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
