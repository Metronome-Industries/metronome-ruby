# frozen_string_literal: true

module MetronomeSDK
  module Models
    class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute commit
      #
      #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::Commit]
      required :commit, -> { MetronomeSDK::PrepaidBalanceThresholdConfiguration::Commit }

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

      # @!attribute recharge_to_amount
      #   Specify the amount the balance should be recharged to.
      #
      #   @return [Float]
      required :recharge_to_amount, Float

      # @!attribute threshold_amount
      #   Specify the threshold amount for the contract. Each time the contract's prepaid
      #   balance lowers to this amount, a threshold charge will be initiated.
      #
      #   @return [Float]
      required :threshold_amount, Float

      # @!attribute custom_credit_type_id
      #   If provided, the threshold, recharge-to amount, and the resulting threshold
      #   commit amount will be in terms of this credit type instead of the fiat currency.
      #
      #   @return [String, nil]
      optional :custom_credit_type_id, String

      # @!attribute discount_configuration
      #
      #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::DiscountConfiguration, nil]
      optional :discount_configuration,
               -> { MetronomeSDK::PrepaidBalanceThresholdConfiguration::DiscountConfiguration }

      # @!attribute threshold_balance_specifiers
      #   Determines which balances are excluded from remaining balance calculation for
      #   threshold billing.
      #
      #   @return [Array<MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier>, nil]
      optional :threshold_balance_specifiers,
               -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier] }

      # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:, custom_credit_type_id: nil, discount_configuration: nil, threshold_balance_specifiers: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration} for more details.
      #
      #   @param commit [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::Commit]
      #
      #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
      #
      #   @param payment_gate_config [MetronomeSDK::Models::PaymentGateConfig]
      #
      #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
      #
      #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's prepaid
      #
      #   @param custom_credit_type_id [String] If provided, the threshold, recharge-to amount, and the resulting threshold comm
      #
      #   @param discount_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::DiscountConfiguration]
      #
      #   @param threshold_balance_specifiers [Array<MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier>] Determines which balances are excluded from remaining balance calculation for th

      # @see MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration#commit
      class Commit < MetronomeSDK::Models::BaseThresholdCommit
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
        #
        #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
        optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] }

        # @!method initialize(applicable_product_ids: nil, applicable_product_tags: nil, specifiers: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::Commit} for more
        #   details.
        #
        #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If applicable_product_ids, appli
        #
        #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If applicable_product_ids, applicabl
        #
        #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o
      end

      # @see MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration#discount_configuration
      class DiscountConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute payment_fraction
        #   The fraction of the original amount that the customer pays after applying the
        #   discount. For example, 0.85 means the customer pays 85% of the original amount
        #   (a 15% discount).
        #
        #   @return [Float]
        required :payment_fraction, Float

        # @!attribute cap
        #   If provided, the discount stops applying once the spend tracker has accumulated
        #   this much spend in the billing period.
        #
        #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap, nil]
        optional :cap, -> { MetronomeSDK::PrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap }

        # @!method initialize(payment_fraction:, cap: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::DiscountConfiguration}
        #   for more details.
        #
        #   @param payment_fraction [Float] The fraction of the original amount that the customer pays after applying the di
        #
        #   @param cap [MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap] If provided, the discount stops applying once the spend tracker has accumulated

        # @see MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::DiscountConfiguration#cap
        class Cap < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute amount
          #   Accumulated spend ceiling above which the discount stops applying.
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute spend_tracker_alias
          #   Alias of the spend tracker this cap is measured against.
          #
          #   @return [String]
          required :spend_tracker_alias, String

          # @!method initialize(amount:, spend_tracker_alias:)
          #   If provided, the discount stops applying once the spend tracker has accumulated
          #   this much spend in the billing period.
          #
          #   @param amount [Float] Accumulated spend ceiling above which the discount stops applying.
          #
          #   @param spend_tracker_alias [String] Alias of the spend tracker this cap is measured against.
        end
      end

      class ThresholdBalanceSpecifier < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute exclude
        #   If any of the exclude specifier is met, the balance is not considered when
        #   evaluating threshold billing
        #
        #   @return [Array<MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude>]
        required :exclude,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude] }

        # @!method initialize(exclude:)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier}
        #   for more details.
        #
        #   @param exclude [Array<MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude>] If any of the exclude specifier is met, the balance is not considered when evalu

        class Exclude < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute custom_field_filters
          #   If provided, balances with all the custom fields will not be considered when
          #   evaluating threshold billing
          #
          #   @return [Array<MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter>]
          required :custom_field_filters,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter] }

          # @!method initialize(custom_field_filters:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude}
          #   for more details.
          #
          #   @param custom_field_filters [Array<MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter>] If provided, balances with all the custom fields will not be considered when eva

          class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute entity
            #
            #   @return [Symbol, MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity]
            required :entity,
                     enum: -> { MetronomeSDK::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity }

            # @!attribute key
            #
            #   @return [String]
            required :key, String

            # @!attribute value
            #
            #   @return [String]
            required :value, String

            # @!method initialize(entity:, key:, value:)
            #   @param entity [Symbol, MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity]
            #   @param key [String]
            #   @param value [String]

            # @see MetronomeSDK::Models::PrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter#entity
            module Entity
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT = :Commit
              CONTRACT_CREDIT = :ContractCredit
              CONTRACT_CREDIT_OR_COMMIT = :ContractCreditOrCommit

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
