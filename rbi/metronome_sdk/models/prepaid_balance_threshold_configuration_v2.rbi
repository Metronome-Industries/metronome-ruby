# typed: strong

module MetronomeSDK
  module Models
    class PrepaidBalanceThresholdConfigurationV2 < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            MetronomeSDK::PrepaidBalanceThresholdConfigurationV2,
            MetronomeSDK::Internal::AnyHash
          )
        end

      sig do
        returns(MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::Commit)
      end
      attr_reader :commit

      sig do
        params(
          commit:
            MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::Commit::OrHash
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

      # Specify the amount the balance should be recharged to.
      sig { returns(Float) }
      attr_accessor :recharge_to_amount

      # Specify the threshold amount for the contract. Each time the contract's balance
      # lowers to this amount, a threshold charge will be initiated.
      sig { returns(Float) }
      attr_accessor :threshold_amount

      # If provided, the threshold, recharge-to amount, and the resulting threshold
      # commit amount will be in terms of this credit type instead of the fiat currency.
      sig { returns(T.nilable(String)) }
      attr_reader :custom_credit_type_id

      sig { params(custom_credit_type_id: String).void }
      attr_writer :custom_credit_type_id

      sig do
        params(
          commit:
            MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::Commit::OrHash,
          is_enabled: T::Boolean,
          payment_gate_config: MetronomeSDK::PaymentGateConfigV2::OrHash,
          recharge_to_amount: Float,
          threshold_amount: Float,
          custom_credit_type_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        commit:,
        # When set to false, the contract will not be evaluated against the
        # threshold_amount. Toggling to true will result an immediate evaluation,
        # regardless of prior state.
        is_enabled:,
        payment_gate_config:,
        # Specify the amount the balance should be recharged to.
        recharge_to_amount:,
        # Specify the threshold amount for the contract. Each time the contract's balance
        # lowers to this amount, a threshold charge will be initiated.
        threshold_amount:,
        # If provided, the threshold, recharge-to amount, and the resulting threshold
        # commit amount will be in terms of this credit type instead of the fiat currency.
        custom_credit_type_id: nil
      )
      end

      sig do
        override.returns(
          {
            commit:
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::Commit,
            is_enabled: T::Boolean,
            payment_gate_config: MetronomeSDK::PaymentGateConfigV2,
            recharge_to_amount: Float,
            threshold_amount: Float,
            custom_credit_type_id: String
          }
        )
      end
      def to_hash
      end

      class Commit < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::Commit,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The commit product that will be used to generate the line item for commit
        # payment.
        sig { returns(String) }
        attr_accessor :product_id

        # Which products the threshold commit applies to. If applicable_product_ids,
        # applicable_product_tags or specifiers are not provided, the commit applies to
        # all products.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_ids

        sig { params(applicable_product_ids: T::Array[String]).void }
        attr_writer :applicable_product_ids

        # Which tags the threshold commit applies to. If applicable_product_ids,
        # applicable_product_tags or specifiers are not provided, the commit applies to
        # all products.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_tags

        sig { params(applicable_product_tags: T::Array[String]).void }
        attr_writer :applicable_product_tags

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

        # List of filters that determine what kind of customer usage draws down a commit
        # or credit. A customer's usage needs to meet the condition of at least one of the
        # specifiers to contribute to a commit's or credit's drawdown. This field cannot
        # be used together with `applicable_product_ids` or `applicable_product_tags`.
        # Instead, to target usage by product or product tag, pass those values in the
        # body of `specifiers`.
        sig { returns(T.nilable(T::Array[MetronomeSDK::CommitSpecifierInput])) }
        attr_reader :specifiers

        sig do
          params(
            specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
          ).void
        end
        attr_writer :specifiers

        sig do
          params(
            product_id: String,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            description: String,
            name: String,
            specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The commit product that will be used to generate the line item for commit
          # payment.
          product_id:,
          # Which products the threshold commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          applicable_product_ids: nil,
          # Which tags the threshold commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          applicable_product_tags: nil,
          description: nil,
          # Specify the name of the line item for the threshold charge. If left blank, it
          # will default to the commit product name.
          name: nil,
          # List of filters that determine what kind of customer usage draws down a commit
          # or credit. A customer's usage needs to meet the condition of at least one of the
          # specifiers to contribute to a commit's or credit's drawdown. This field cannot
          # be used together with `applicable_product_ids` or `applicable_product_tags`.
          # Instead, to target usage by product or product tag, pass those values in the
          # body of `specifiers`.
          specifiers: nil
        )
        end

        sig do
          override.returns(
            {
              product_id: String,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              name: String,
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
