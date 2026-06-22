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
        returns(
          T.nilable(
            MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::DiscountConfiguration
          )
        )
      end
      attr_reader :discount_configuration

      sig do
        params(
          discount_configuration:
            MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::DiscountConfiguration::OrHash
        ).void
      end
      attr_writer :discount_configuration

      # Determines which balances are excluded from remaining balance calculation for
      # threshold billing.
      sig do
        returns(
          T.nilable(
            T::Array[
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier
            ]
          )
        )
      end
      attr_reader :threshold_balance_specifiers

      sig do
        params(
          threshold_balance_specifiers:
            T::Array[
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::OrHash
            ]
        ).void
      end
      attr_writer :threshold_balance_specifiers

      sig do
        params(
          commit:
            MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::Commit::OrHash,
          is_enabled: T::Boolean,
          payment_gate_config: MetronomeSDK::PaymentGateConfigV2::OrHash,
          recharge_to_amount: Float,
          threshold_amount: Float,
          custom_credit_type_id: String,
          discount_configuration:
            MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::DiscountConfiguration::OrHash,
          threshold_balance_specifiers:
            T::Array[
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::OrHash
            ]
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
        custom_credit_type_id: nil,
        discount_configuration: nil,
        # Determines which balances are excluded from remaining balance calculation for
        # threshold billing.
        threshold_balance_specifiers: nil
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
            custom_credit_type_id: String,
            discount_configuration:
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::DiscountConfiguration,
            threshold_balance_specifiers:
              T::Array[
                MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier
              ]
          }
        )
      end
      def to_hash
      end

      class Commit < MetronomeSDK::Models::BaseThresholdCommit
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::Commit,
              MetronomeSDK::Internal::AnyHash
            )
          end

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
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            specifiers: T::Array[MetronomeSDK::CommitSpecifierInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Which products the threshold commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          applicable_product_ids: nil,
          # Which tags the threshold commit applies to. If applicable_product_ids,
          # applicable_product_tags or specifiers are not provided, the commit applies to
          # all products.
          applicable_product_tags: nil,
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
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              specifiers: T::Array[MetronomeSDK::CommitSpecifierInput]
            }
          )
        end
        def to_hash
        end
      end

      class DiscountConfiguration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::DiscountConfiguration,
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
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::DiscountConfiguration::Cap
            )
          )
        end
        attr_reader :cap

        sig do
          params(
            cap:
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::DiscountConfiguration::Cap::OrHash
          ).void
        end
        attr_writer :cap

        sig do
          params(
            payment_fraction: Float,
            cap:
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::DiscountConfiguration::Cap::OrHash
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
                MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::DiscountConfiguration::Cap
            }
          )
        end
        def to_hash
        end

        class Cap < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::DiscountConfiguration::Cap,
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

      class ThresholdBalanceSpecifier < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude
            ]
          )
        end
        attr_accessor :exclude

        sig do
          params(
            exclude:
              T::Array[
                MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(exclude:)
        end

        sig do
          override.returns(
            {
              exclude:
                T::Array[
                  MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude
                ]
            }
          )
        end
        def to_hash
        end

        class Exclude < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter
              ]
            )
          end
          attr_accessor :custom_field_filters

          sig do
            params(
              custom_field_filters:
                T::Array[
                  MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(custom_field_filters:)
          end

          sig do
            override.returns(
              {
                custom_field_filters:
                  T::Array[
                    MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter
                  ]
              }
            )
          end
          def to_hash
          end

          class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::OrSymbol
              )
            end
            attr_accessor :entity

            sig { returns(String) }
            attr_accessor :key

            sig { returns(String) }
            attr_accessor :value

            sig do
              params(
                entity:
                  MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::OrSymbol,
                key: String,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(entity:, key:, value:)
            end

            sig do
              override.returns(
                {
                  entity:
                    MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::OrSymbol,
                  key: String,
                  value: String
                }
              )
            end
            def to_hash
            end

            module Entity
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMIT =
                T.let(
                  :Commit,
                  MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                )
              CONTRACT_CREDIT =
                T.let(
                  :ContractCredit,
                  MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                )
              CONTRACT_CREDIT_OR_COMMIT =
                T.let(
                  :ContractCreditOrCommit,
                  MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::PrepaidBalanceThresholdConfigurationV2::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
