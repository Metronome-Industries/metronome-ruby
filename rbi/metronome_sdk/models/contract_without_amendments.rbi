# typed: strong

module MetronomeSDK
  module Models
    class ContractWithoutAmendments < MetronomeSDK::Internal::Type::BaseModel
      sig { returns(T::Array[MetronomeSDK::Models::Commit]) }
      attr_accessor :commits

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :created_by

      sig { returns(T::Array[MetronomeSDK::Models::Override]) }
      attr_accessor :overrides

      sig { returns(T::Array[MetronomeSDK::Models::ScheduledCharge]) }
      attr_accessor :scheduled_charges

      sig { returns(Time) }
      attr_accessor :starting_at

      sig { returns(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::Transition]) }
      attr_accessor :transitions

      sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule) }
      attr_reader :usage_statement_schedule

      sig do
        params(
          usage_statement_schedule: T.any(
            MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule,
            MetronomeSDK::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :usage_statement_schedule

      sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration)) }
      attr_reader :credit_balance_threshold_configuration

      sig do
        params(
          credit_balance_threshold_configuration: T.any(
            MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration,
            MetronomeSDK::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :credit_balance_threshold_configuration

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Credit])) }
      attr_reader :credits

      sig { params(credits: T::Array[T.any(MetronomeSDK::Models::Credit, MetronomeSDK::Internal::AnyHash)]).void }
      attr_writer :credits

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Discount])) }
      attr_reader :discounts

      sig { params(discounts: T::Array[T.any(MetronomeSDK::Models::Discount, MetronomeSDK::Internal::AnyHash)]).void }
      attr_writer :discounts

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Float)) }
      attr_reader :net_payment_terms_days

      sig { params(net_payment_terms_days: Float).void }
      attr_writer :net_payment_terms_days

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :netsuite_sales_order_id

      sig { params(netsuite_sales_order_id: String).void }
      attr_writer :netsuite_sales_order_id

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::ProService])) }
      attr_reader :professional_services

      sig do
        params(
          professional_services: T::Array[T.any(MetronomeSDK::Models::ProService, MetronomeSDK::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :professional_services

      sig { returns(T.nilable(String)) }
      attr_reader :rate_card_id

      sig { params(rate_card_id: String).void }
      attr_writer :rate_card_id

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit])) }
      attr_reader :recurring_commits

      sig do
        params(
          recurring_commits: T::Array[T.any(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit, MetronomeSDK::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :recurring_commits

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit])) }
      attr_reader :recurring_credits

      sig do
        params(
          recurring_credits: T::Array[T.any(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit, MetronomeSDK::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :recurring_credits

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty])) }
      attr_reader :reseller_royalties

      sig do
        params(
          reseller_royalties: T::Array[T.any(MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty, MetronomeSDK::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :reseller_royalties

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :salesforce_opportunity_id

      sig { params(salesforce_opportunity_id: String).void }
      attr_writer :salesforce_opportunity_id

      # Determines which scheduled and commit charges to consolidate onto the Contract's
      # usage invoice. The charge's `timestamp` must match the usage invoice's
      # `ending_before` date for consolidation to occur. This field cannot be modified
      # after a Contract has been created. If this field is omitted, charges will appear
      # on a separate invoice from usage charges.
      sig do
        returns(
          T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::TaggedSymbol)
        )
      end
      attr_reader :scheduled_charges_on_usage_invoices

      sig do
        params(
          scheduled_charges_on_usage_invoices: MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::OrSymbol
        )
          .void
      end
      attr_writer :scheduled_charges_on_usage_invoices

      sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration)) }
      attr_reader :spend_threshold_configuration

      sig do
        params(
          spend_threshold_configuration: T.any(
            MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration,
            MetronomeSDK::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :spend_threshold_configuration

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(Float)) }
      attr_reader :total_contract_value

      sig { params(total_contract_value: Float).void }
      attr_writer :total_contract_value

      sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter)) }
      attr_reader :usage_filter

      sig do
        params(
          usage_filter: T.any(MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter, MetronomeSDK::Internal::AnyHash)
        )
          .void
      end
      attr_writer :usage_filter

      sig do
        params(
          commits: T::Array[T.any(MetronomeSDK::Models::Commit, MetronomeSDK::Internal::AnyHash)],
          created_at: Time,
          created_by: String,
          overrides: T::Array[T.any(MetronomeSDK::Models::Override, MetronomeSDK::Internal::AnyHash)],
          scheduled_charges: T::Array[T.any(MetronomeSDK::Models::ScheduledCharge, MetronomeSDK::Internal::AnyHash)],
          starting_at: Time,
          transitions: T::Array[T.any(MetronomeSDK::Models::ContractWithoutAmendments::Transition, MetronomeSDK::Internal::AnyHash)],
          usage_statement_schedule: T.any(
            MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule,
            MetronomeSDK::Internal::AnyHash
          ),
          credit_balance_threshold_configuration: T.any(
            MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration,
            MetronomeSDK::Internal::AnyHash
          ),
          credits: T::Array[T.any(MetronomeSDK::Models::Credit, MetronomeSDK::Internal::AnyHash)],
          discounts: T::Array[T.any(MetronomeSDK::Models::Discount, MetronomeSDK::Internal::AnyHash)],
          ending_before: Time,
          name: String,
          net_payment_terms_days: Float,
          netsuite_sales_order_id: String,
          professional_services: T::Array[T.any(MetronomeSDK::Models::ProService, MetronomeSDK::Internal::AnyHash)],
          rate_card_id: String,
          recurring_commits: T::Array[T.any(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit, MetronomeSDK::Internal::AnyHash)],
          recurring_credits: T::Array[T.any(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit, MetronomeSDK::Internal::AnyHash)],
          reseller_royalties: T::Array[T.any(MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty, MetronomeSDK::Internal::AnyHash)],
          salesforce_opportunity_id: String,
          scheduled_charges_on_usage_invoices: MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::OrSymbol,
          spend_threshold_configuration: T.any(
            MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration,
            MetronomeSDK::Internal::AnyHash
          ),
          total_contract_value: Float,
          usage_filter: T.any(MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter, MetronomeSDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        commits:,
        created_at:,
        created_by:,
        overrides:,
        scheduled_charges:,
        starting_at:,
        transitions:,
        usage_statement_schedule:,
        credit_balance_threshold_configuration: nil,
        credits: nil,
        # This field's availability is dependent on your client's configuration.
        discounts: nil,
        ending_before: nil,
        name: nil,
        net_payment_terms_days: nil,
        # This field's availability is dependent on your client's configuration.
        netsuite_sales_order_id: nil,
        # This field's availability is dependent on your client's configuration.
        professional_services: nil,
        rate_card_id: nil,
        recurring_commits: nil,
        recurring_credits: nil,
        # This field's availability is dependent on your client's configuration.
        reseller_royalties: nil,
        # This field's availability is dependent on your client's configuration.
        salesforce_opportunity_id: nil,
        # Determines which scheduled and commit charges to consolidate onto the Contract's
        # usage invoice. The charge's `timestamp` must match the usage invoice's
        # `ending_before` date for consolidation to occur. This field cannot be modified
        # after a Contract has been created. If this field is omitted, charges will appear
        # on a separate invoice from usage charges.
        scheduled_charges_on_usage_invoices: nil,
        spend_threshold_configuration: nil,
        # This field's availability is dependent on your client's configuration.
        total_contract_value: nil,
        usage_filter: nil
      ); end
      sig do
        override
          .returns(
            {
              commits: T::Array[MetronomeSDK::Models::Commit],
              created_at: Time,
              created_by: String,
              overrides: T::Array[MetronomeSDK::Models::Override],
              scheduled_charges: T::Array[MetronomeSDK::Models::ScheduledCharge],
              starting_at: Time,
              transitions: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::Transition],
              usage_statement_schedule: MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule,
              credit_balance_threshold_configuration: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration,
              credits: T::Array[MetronomeSDK::Models::Credit],
              discounts: T::Array[MetronomeSDK::Models::Discount],
              ending_before: Time,
              name: String,
              net_payment_terms_days: Float,
              netsuite_sales_order_id: String,
              professional_services: T::Array[MetronomeSDK::Models::ProService],
              rate_card_id: String,
              recurring_commits: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit],
              recurring_credits: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit],
              reseller_royalties: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty],
              salesforce_opportunity_id: String,
              scheduled_charges_on_usage_invoices: MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::TaggedSymbol,
              spend_threshold_configuration: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration,
              total_contract_value: Float,
              usage_filter: MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter
            }
          )
      end
      def to_hash; end

      class Transition < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :from_contract_id

        sig { returns(String) }
        attr_accessor :to_contract_id

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type::TaggedSymbol) }
        attr_accessor :type

        sig do
          params(
            from_contract_id: String,
            to_contract_id: String,
            type: MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(from_contract_id:, to_contract_id:, type:); end

        sig do
          override
            .returns(
              {
                from_contract_id: String,
                to_contract_id: String,
                type: MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type::TaggedSymbol
              }
            )
        end
        def to_hash; end

        module Type
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUPERSEDE =
            T.let(:SUPERSEDE, MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type::TaggedSymbol)
          RENEWAL =
            T.let(:RENEWAL, MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type::TaggedSymbol)

          sig do
            override.returns(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::Transition::Type::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
        # Contract usage statements follow a selected cadence based on this date.
        sig { returns(Time) }
        attr_accessor :billing_anchor_date

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol) }
        attr_accessor :frequency

        sig do
          params(
            billing_anchor_date: Time,
            frequency: MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          # Contract usage statements follow a selected cadence based on this date.
          billing_anchor_date:,
          frequency:
        ); end
        sig do
          override
            .returns(
              {
                billing_anchor_date: Time,
                frequency: MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
              }
            )
        end
        def to_hash; end

        module Frequency
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end

      class CreditBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit) }
        attr_reader :commit

        sig do
          params(
            commit: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :commit

        # When set to false, the contract will not be evaluated against the
        # threshold_amount. Toggling to true will result an immediate evaluation,
        # regardless of prior state.
        sig { returns(T::Boolean) }
        attr_accessor :is_enabled

        sig do
          returns(
            MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig
          )
        end
        attr_reader :payment_gate_config

        sig do
          params(
            payment_gate_config: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :payment_gate_config

        # Specify the amount the balance should be recharged to.
        sig { returns(Float) }
        attr_accessor :recharge_to_amount

        # Specify the threshold amount for the contract. Each time the contract's balance
        # lowers to this amount, a threshold charge will be initiated.
        sig { returns(Float) }
        attr_accessor :threshold_amount

        sig do
          params(
            commit: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit,
              MetronomeSDK::Internal::AnyHash
            ),
            is_enabled: T::Boolean,
            payment_gate_config: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig,
              MetronomeSDK::Internal::AnyHash
            ),
            recharge_to_amount: Float,
            threshold_amount: Float
          )
            .returns(T.attached_class)
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
          threshold_amount:
        ); end
        sig do
          override
            .returns(
              {
                commit: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit,
                is_enabled: T::Boolean,
                payment_gate_config: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig,
                recharge_to_amount: Float,
                threshold_amount: Float
              }
            )
        end
        def to_hash; end

        class Commit < MetronomeSDK::Internal::Type::BaseModel
          # The commit product that will be used to generate the line item for commit
          # payment.
          sig { returns(String) }
          attr_accessor :product_id

          # Which products the threshold commit applies to. If both applicable_product_ids
          # and applicable_product_tags are not provided, the commit applies to all
          # products.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :applicable_product_ids

          sig { params(applicable_product_ids: T::Array[String]).void }
          attr_writer :applicable_product_ids

          # Which tags the threshold commit applies to. If both applicable_product_ids and
          # applicable_product_tags are not provided, the commit applies to all products.
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

          sig do
            params(
              product_id: String,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              name: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The commit product that will be used to generate the line item for commit
            # payment.
            product_id:,
            # Which products the threshold commit applies to. If both applicable_product_ids
            # and applicable_product_tags are not provided, the commit applies to all
            # products.
            applicable_product_ids: nil,
            # Which tags the threshold commit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the commit applies to all products.
            applicable_product_tags: nil,
            description: nil,
            # Specify the name of the line item for the threshold charge. If left blank, it
            # will default to the commit product name.
            name: nil
          ); end
          sig do
            override
              .returns(
                {
                  product_id: String,
                  applicable_product_ids: T::Array[String],
                  applicable_product_tags: T::Array[String],
                  description: String,
                  name: String
                }
              )
          end
          def to_hash; end
        end

        class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          sig do
            returns(
              MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
            )
          end
          attr_accessor :payment_gate_type

          # Only applicable if using Stripe as your payment gateway through Metronome.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
              )
            )
          end
          attr_reader :stripe_config

          sig do
            params(
              stripe_config: T.any(
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                MetronomeSDK::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :stripe_config

          # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          # not wish Metronome to calculate tax on your behalf. Leaving this field blank
          # will default to NONE.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            )
          end
          attr_reader :tax_type

          sig do
            params(
              tax_type: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
            )
              .void
          end
          attr_writer :tax_type

          sig do
            params(
              payment_gate_type: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
              stripe_config: T.any(
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                MetronomeSDK::Internal::AnyHash
              ),
              tax_type: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            payment_gate_type:,
            # Only applicable if using Stripe as your payment gateway through Metronome.
            stripe_config: nil,
            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            tax_type: nil
          ); end
          sig do
            override
              .returns(
                {
                  payment_gate_type: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                  stripe_config: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                }
              )
          end
          def to_hash; end

          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          module PaymentGateType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )
            EXTERNAL =
              T.let(
                :EXTERNAL,
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end

          class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
            # If left blank, will default to INVOICE
            sig do
              returns(
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
              )
            end
            attr_accessor :payment_type

            # Only applicable if using Stripe as your payment gateway through Metronome.
            sig do
              params(
                payment_type: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # If left blank, will default to INVOICE
              payment_type:
            ); end
            sig do
              override
                .returns(
                  {
                    payment_type: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  }
                )
            end
            def to_hash; end

            # If left blank, will default to INVOICE
            module PaymentType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INVOICE =
                T.let(
                  :INVOICE,
                  MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                )
              PAYMENT_INTENT =
                T.let(
                  :PAYMENT_INTENT,
                  MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end

          # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          # not wish Metronome to calculate tax on your behalf. Leaving this field blank
          # will default to NONE.
          module TaxType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end
        end
      end

      class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # The amount of commit to grant.
        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount) }
        attr_reader :access_amount

        sig do
          params(
            access_amount: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :access_amount

        # The amount of time the created commits will be valid for
        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration) }
        attr_reader :commit_duration

        sig do
          params(
            commit_duration: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :commit_duration

        # Will be passed down to the individual commits
        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product) }
        attr_reader :product

        sig do
          params(
            product: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :product

        # Whether the created commits will use the commit rate or list rate
        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType::TaggedSymbol) }
        attr_accessor :rate_type

        # Determines the start time for the first commit
        sig { returns(Time) }
        attr_accessor :starting_at

        # Will be passed down to the individual commits
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_ids

        sig { params(applicable_product_ids: T::Array[String]).void }
        attr_writer :applicable_product_ids

        # Will be passed down to the individual commits
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_tags

        sig { params(applicable_product_tags: T::Array[String]).void }
        attr_writer :applicable_product_tags

        sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract)) }
        attr_reader :contract

        sig do
          params(
            contract: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :contract

        # Will be passed down to the individual commits
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Determines when the contract will stop creating recurring commits. Optional
        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        # The amount the customer should be billed for the commit. Not required.
        sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount)) }
        attr_reader :invoice_amount

        sig do
          params(
            invoice_amount: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :invoice_amount

        # Displayed on invoices. Will be passed through to the individual commits
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Will be passed down to the individual commits
        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        # Determines whether the first and last commit will be prorated. If not provided,
        # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        sig do
          returns(
            T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol)
          )
        end
        attr_reader :proration

        sig do
          params(proration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration::OrSymbol)
            .void
        end
        attr_writer :proration

        # The frequency at which the recurring commits will be created. If not provided: -
        # The commits will be created on the usage invoice frequency. If provided: - The
        # period defined in the duration will correspond to this frequency. - Commits will
        # be created aligned with the recurring commit's start_date rather than the usage
        # invoice dates.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          )
        end
        attr_reader :recurrence_frequency

        sig do
          params(
            recurrence_frequency: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::OrSymbol
          )
            .void
        end
        attr_writer :recurrence_frequency

        # Will be passed down to the individual commits. This controls how much of an
        # individual unexpired commit will roll over upon contract transition. Must be
        # between 0 and 1.
        sig { returns(T.nilable(Float)) }
        attr_reader :rollover_fraction

        sig { params(rollover_fraction: Float).void }
        attr_writer :rollover_fraction

        sig do
          params(
            id: String,
            access_amount: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount,
              MetronomeSDK::Internal::AnyHash
            ),
            commit_duration: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration,
              MetronomeSDK::Internal::AnyHash
            ),
            priority: Float,
            product: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product,
              MetronomeSDK::Internal::AnyHash
            ),
            rate_type: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType::OrSymbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            contract: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract,
              MetronomeSDK::Internal::AnyHash
            ),
            description: String,
            ending_before: Time,
            invoice_amount: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount,
              MetronomeSDK::Internal::AnyHash
            ),
            name: String,
            netsuite_sales_order_id: String,
            proration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration::OrSymbol,
            recurrence_frequency: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::OrSymbol,
            rollover_fraction: Float
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          # The amount of commit to grant.
          access_amount:,
          # The amount of time the created commits will be valid for
          commit_duration:,
          # Will be passed down to the individual commits
          priority:,
          product:,
          # Whether the created commits will use the commit rate or list rate
          rate_type:,
          # Determines the start time for the first commit
          starting_at:,
          # Will be passed down to the individual commits
          applicable_product_ids: nil,
          # Will be passed down to the individual commits
          applicable_product_tags: nil,
          contract: nil,
          # Will be passed down to the individual commits
          description: nil,
          # Determines when the contract will stop creating recurring commits. Optional
          ending_before: nil,
          # The amount the customer should be billed for the commit. Not required.
          invoice_amount: nil,
          # Displayed on invoices. Will be passed through to the individual commits
          name: nil,
          # Will be passed down to the individual commits
          netsuite_sales_order_id: nil,
          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          proration: nil,
          # The frequency at which the recurring commits will be created. If not provided: -
          # The commits will be created on the usage invoice frequency. If provided: - The
          # period defined in the duration will correspond to this frequency. - Commits will
          # be created aligned with the recurring commit's start_date rather than the usage
          # invoice dates.
          recurrence_frequency: nil,
          # Will be passed down to the individual commits. This controls how much of an
          # individual unexpired commit will roll over upon contract transition. Must be
          # between 0 and 1.
          rollover_fraction: nil
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                access_amount: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount,
                commit_duration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration,
                priority: Float,
                product: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product,
                rate_type: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType::TaggedSymbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract,
                description: String,
                ending_before: Time,
                invoice_amount: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount,
                name: String,
                netsuite_sales_order_id: String,
                proration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol,
                recurrence_frequency: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol,
                rollover_fraction: Float
              }
            )
        end
        def to_hash; end

        class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Float) }
          attr_accessor :unit_price

          # The amount of commit to grant.
          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).returns(T.attached_class) }
          def self.new(credit_type_id:, quantity:, unit_price:); end

          sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
          def to_hash; end
        end

        class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(Float) }
          attr_accessor :value

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::TaggedSymbol
              )
            )
          end
          attr_reader :unit

          sig do
            params(
              unit: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::OrSymbol
            )
              .void
          end
          attr_writer :unit

          # The amount of time the created commits will be valid for
          sig do
            params(
              value: Float,
              unit: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(value:, unit: nil); end

          sig do
            override
              .returns(
                {
                  value: Float,
                  unit: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERIODS =
              T.let(
                :PERIODS,
                MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration::Unit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Product < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        # Whether the created commits will use the commit rate or list rate
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RateType::TaggedSymbol]
              )
          end
          def self.values; end
        end

        class Contract < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Float) }
          attr_accessor :unit_price

          # The amount the customer should be billed for the commit. Not required.
          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).returns(T.attached_class) }
          def self.new(credit_type_id:, quantity:, unit_price:); end

          sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
          def to_hash; end
        end

        # Determines whether the first and last commit will be prorated. If not provided,
        # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        module Proration
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(:NONE, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol)
          FIRST =
            T.let(:FIRST, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol)
          LAST =
            T.let(:LAST, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol)
          FIRST_AND_LAST =
            T.let(
              :FIRST_AND_LAST,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Proration::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # The frequency at which the recurring commits will be created. If not provided: -
        # The commits will be created on the usage invoice frequency. If provided: - The
        # period defined in the duration will correspond to this frequency. - Commits will
        # be created aligned with the recurring commit's start_date rather than the usage
        # invoice dates.
        module RecurrenceFrequency
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::RecurrenceFrequency::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end

      class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # The amount of commit to grant.
        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount) }
        attr_reader :access_amount

        sig do
          params(
            access_amount: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :access_amount

        # The amount of time the created commits will be valid for
        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration) }
        attr_reader :commit_duration

        sig do
          params(
            commit_duration: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :commit_duration

        # Will be passed down to the individual commits
        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product) }
        attr_reader :product

        sig do
          params(
            product: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :product

        # Whether the created commits will use the commit rate or list rate
        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType::TaggedSymbol) }
        attr_accessor :rate_type

        # Determines the start time for the first commit
        sig { returns(Time) }
        attr_accessor :starting_at

        # Will be passed down to the individual commits
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_ids

        sig { params(applicable_product_ids: T::Array[String]).void }
        attr_writer :applicable_product_ids

        # Will be passed down to the individual commits
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_tags

        sig { params(applicable_product_tags: T::Array[String]).void }
        attr_writer :applicable_product_tags

        sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract)) }
        attr_reader :contract

        sig do
          params(
            contract: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :contract

        # Will be passed down to the individual commits
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Determines when the contract will stop creating recurring commits. Optional
        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        # Displayed on invoices. Will be passed through to the individual commits
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Will be passed down to the individual commits
        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        # Determines whether the first and last commit will be prorated. If not provided,
        # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        sig do
          returns(
            T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol)
          )
        end
        attr_reader :proration

        sig do
          params(proration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration::OrSymbol)
            .void
        end
        attr_writer :proration

        # The frequency at which the recurring commits will be created. If not provided: -
        # The commits will be created on the usage invoice frequency. If provided: - The
        # period defined in the duration will correspond to this frequency. - Commits will
        # be created aligned with the recurring commit's start_date rather than the usage
        # invoice dates.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          )
        end
        attr_reader :recurrence_frequency

        sig do
          params(
            recurrence_frequency: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::OrSymbol
          )
            .void
        end
        attr_writer :recurrence_frequency

        # Will be passed down to the individual commits. This controls how much of an
        # individual unexpired commit will roll over upon contract transition. Must be
        # between 0 and 1.
        sig { returns(T.nilable(Float)) }
        attr_reader :rollover_fraction

        sig { params(rollover_fraction: Float).void }
        attr_writer :rollover_fraction

        sig do
          params(
            id: String,
            access_amount: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount,
              MetronomeSDK::Internal::AnyHash
            ),
            commit_duration: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration,
              MetronomeSDK::Internal::AnyHash
            ),
            priority: Float,
            product: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product,
              MetronomeSDK::Internal::AnyHash
            ),
            rate_type: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType::OrSymbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            contract: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract,
              MetronomeSDK::Internal::AnyHash
            ),
            description: String,
            ending_before: Time,
            name: String,
            netsuite_sales_order_id: String,
            proration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration::OrSymbol,
            recurrence_frequency: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::OrSymbol,
            rollover_fraction: Float
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          # The amount of commit to grant.
          access_amount:,
          # The amount of time the created commits will be valid for
          commit_duration:,
          # Will be passed down to the individual commits
          priority:,
          product:,
          # Whether the created commits will use the commit rate or list rate
          rate_type:,
          # Determines the start time for the first commit
          starting_at:,
          # Will be passed down to the individual commits
          applicable_product_ids: nil,
          # Will be passed down to the individual commits
          applicable_product_tags: nil,
          contract: nil,
          # Will be passed down to the individual commits
          description: nil,
          # Determines when the contract will stop creating recurring commits. Optional
          ending_before: nil,
          # Displayed on invoices. Will be passed through to the individual commits
          name: nil,
          # Will be passed down to the individual commits
          netsuite_sales_order_id: nil,
          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          proration: nil,
          # The frequency at which the recurring commits will be created. If not provided: -
          # The commits will be created on the usage invoice frequency. If provided: - The
          # period defined in the duration will correspond to this frequency. - Commits will
          # be created aligned with the recurring commit's start_date rather than the usage
          # invoice dates.
          recurrence_frequency: nil,
          # Will be passed down to the individual commits. This controls how much of an
          # individual unexpired commit will roll over upon contract transition. Must be
          # between 0 and 1.
          rollover_fraction: nil
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                access_amount: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount,
                commit_duration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration,
                priority: Float,
                product: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product,
                rate_type: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType::TaggedSymbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract,
                description: String,
                ending_before: Time,
                name: String,
                netsuite_sales_order_id: String,
                proration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol,
                recurrence_frequency: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol,
                rollover_fraction: Float
              }
            )
        end
        def to_hash; end

        class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Float) }
          attr_accessor :unit_price

          # The amount of commit to grant.
          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).returns(T.attached_class) }
          def self.new(credit_type_id:, quantity:, unit_price:); end

          sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
          def to_hash; end
        end

        class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(Float) }
          attr_accessor :value

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::TaggedSymbol
              )
            )
          end
          attr_reader :unit

          sig do
            params(
              unit: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::OrSymbol
            )
              .void
          end
          attr_writer :unit

          # The amount of time the created commits will be valid for
          sig do
            params(
              value: Float,
              unit: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(value:, unit: nil); end

          sig do
            override
              .returns(
                {
                  value: Float,
                  unit: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module Unit
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERIODS =
              T.let(
                :PERIODS,
                MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration::Unit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Product < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        # Whether the created commits will use the commit rate or list rate
        module RateType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMIT_RATE =
            T.let(
              :COMMIT_RATE,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType::TaggedSymbol
            )
          LIST_RATE =
            T.let(
              :LIST_RATE,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RateType::TaggedSymbol]
              )
          end
          def self.values; end
        end

        class Contract < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        # Determines whether the first and last commit will be prorated. If not provided,
        # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
        module Proration
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(:NONE, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol)
          FIRST =
            T.let(:FIRST, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol)
          LAST =
            T.let(:LAST, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol)
          FIRST_AND_LAST =
            T.let(
              :FIRST_AND_LAST,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Proration::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # The frequency at which the recurring commits will be created. If not provided: -
        # The commits will be created on the usage invoice frequency. If provided: - The
        # period defined in the duration will correspond to this frequency. - Commits will
        # be created aligned with the recurring commit's start_date rather than the usage
        # invoice dates.
        module RecurrenceFrequency
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :QUARTERLY,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :ANNUAL,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )
          WEEKLY =
            T.let(
              :WEEKLY,
              MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::RecurrenceFrequency::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end

      class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(Float) }
        attr_accessor :fraction

        sig { returns(String) }
        attr_accessor :netsuite_reseller_id

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol) }
        attr_accessor :reseller_type

        sig { returns(Time) }
        attr_accessor :starting_at

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_ids

        sig { params(applicable_product_ids: T::Array[String]).void }
        attr_writer :applicable_product_ids

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_tags

        sig { params(applicable_product_tags: T::Array[String]).void }
        attr_writer :applicable_product_tags

        sig { returns(T.nilable(String)) }
        attr_reader :aws_account_number

        sig { params(aws_account_number: String).void }
        attr_writer :aws_account_number

        sig { returns(T.nilable(String)) }
        attr_reader :aws_offer_id

        sig { params(aws_offer_id: String).void }
        attr_writer :aws_offer_id

        sig { returns(T.nilable(String)) }
        attr_reader :aws_payer_reference_id

        sig { params(aws_payer_reference_id: String).void }
        attr_writer :aws_payer_reference_id

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig { returns(T.nilable(String)) }
        attr_reader :gcp_account_id

        sig { params(gcp_account_id: String).void }
        attr_writer :gcp_account_id

        sig { returns(T.nilable(String)) }
        attr_reader :gcp_offer_id

        sig { params(gcp_offer_id: String).void }
        attr_writer :gcp_offer_id

        sig { returns(T.nilable(Float)) }
        attr_reader :reseller_contract_value

        sig { params(reseller_contract_value: Float).void }
        attr_writer :reseller_contract_value

        sig do
          params(
            fraction: Float,
            netsuite_reseller_id: String,
            reseller_type: MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType::OrSymbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            aws_account_number: String,
            aws_offer_id: String,
            aws_payer_reference_id: String,
            ending_before: Time,
            gcp_account_id: String,
            gcp_offer_id: String,
            reseller_contract_value: Float
          )
            .returns(T.attached_class)
        end
        def self.new(
          fraction:,
          netsuite_reseller_id:,
          reseller_type:,
          starting_at:,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          aws_account_number: nil,
          aws_offer_id: nil,
          aws_payer_reference_id: nil,
          ending_before: nil,
          gcp_account_id: nil,
          gcp_offer_id: nil,
          reseller_contract_value: nil
        ); end
        sig do
          override
            .returns(
              {
                fraction: Float,
                netsuite_reseller_id: String,
                reseller_type: MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                aws_account_number: String,
                aws_offer_id: String,
                aws_payer_reference_id: String,
                ending_before: Time,
                gcp_account_id: String,
                gcp_offer_id: String,
                reseller_contract_value: Float
              }
            )
        end
        def to_hash; end

        module ResellerType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS =
            T.let(:AWS, MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol)
          AWS_PRO_SERVICE =
            T.let(
              :AWS_PRO_SERVICE,
              MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol
            )
          GCP =
            T.let(:GCP, MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol)
          GCP_PRO_SERVICE =
            T.let(
              :GCP_PRO_SERVICE,
              MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end

      # Determines which scheduled and commit charges to consolidate onto the Contract's
      # usage invoice. The charge's `timestamp` must match the usage invoice's
      # `ending_before` date for consolidation to occur. This field cannot be modified
      # after a Contract has been created. If this field is omitted, charges will appear
      # on a separate invoice from usage charges.
      module ScheduledChargesOnUsageInvoices
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(
            :ALL,
            MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::TaggedSymbol
          )

        sig do
          override
            .returns(
              T::Array[MetronomeSDK::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices::TaggedSymbol]
            )
        end
        def self.values; end
      end

      class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit) }
        attr_reader :commit

        sig do
          params(
            commit: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :commit

        # When set to false, the contract will not be evaluated against the
        # threshold_amount. Toggling to true will result an immediate evaluation,
        # regardless of prior state.
        sig { returns(T::Boolean) }
        attr_accessor :is_enabled

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig) }
        attr_reader :payment_gate_config

        sig do
          params(
            payment_gate_config: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig,
              MetronomeSDK::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :payment_gate_config

        # Specify the threshold amount for the contract. Each time the contract's usage
        # hits this amount, a threshold charge will be initiated.
        sig { returns(Float) }
        attr_accessor :threshold_amount

        sig do
          params(
            commit: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit,
              MetronomeSDK::Internal::AnyHash
            ),
            is_enabled: T::Boolean,
            payment_gate_config: T.any(
              MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig,
              MetronomeSDK::Internal::AnyHash
            ),
            threshold_amount: Float
          )
            .returns(T.attached_class)
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
        ); end
        sig do
          override
            .returns(
              {
                commit: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit,
                is_enabled: T::Boolean,
                payment_gate_config: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig,
                threshold_amount: Float
              }
            )
        end
        def to_hash; end

        class Commit < MetronomeSDK::Internal::Type::BaseModel
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

          sig { params(product_id: String, description: String, name: String).returns(T.attached_class) }
          def self.new(
            # The commit product that will be used to generate the line item for commit
            # payment.
            product_id:,
            description: nil,
            # Specify the name of the line item for the threshold charge. If left blank, it
            # will default to the commit product name.
            name: nil
          ); end
          sig { override.returns({product_id: String, description: String, name: String}) }
          def to_hash; end
        end

        class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          sig do
            returns(
              MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
            )
          end
          attr_accessor :payment_gate_type

          # Only applicable if using Stripe as your payment gateway through Metronome.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
              )
            )
          end
          attr_reader :stripe_config

          sig do
            params(
              stripe_config: T.any(
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                MetronomeSDK::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :stripe_config

          # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          # not wish Metronome to calculate tax on your behalf. Leaving this field blank
          # will default to NONE.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            )
          end
          attr_reader :tax_type

          sig do
            params(
              tax_type: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
            )
              .void
          end
          attr_writer :tax_type

          sig do
            params(
              payment_gate_type: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::OrSymbol,
              stripe_config: T.any(
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                MetronomeSDK::Internal::AnyHash
              ),
              tax_type: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            payment_gate_type:,
            # Only applicable if using Stripe as your payment gateway through Metronome.
            stripe_config: nil,
            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            tax_type: nil
          ); end
          sig do
            override
              .returns(
                {
                  payment_gate_type: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol,
                  stripe_config: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                }
              )
          end
          def to_hash; end

          # Gate access to the commit balance based on successful collection of payment.
          # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
          # facilitate payment using your own payment integration. Select NONE if you do not
          # wish to payment gate the commit balance.
          module PaymentGateType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )
            EXTERNAL =
              T.let(
                :EXTERNAL,
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end

          class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
            # If left blank, will default to INVOICE
            sig do
              returns(
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
              )
            end
            attr_accessor :payment_type

            # Only applicable if using Stripe as your payment gateway through Metronome.
            sig do
              params(
                payment_type: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::OrSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # If left blank, will default to INVOICE
              payment_type:
            ); end
            sig do
              override
                .returns(
                  {
                    payment_type: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                  }
                )
            end
            def to_hash; end

            # If left blank, will default to INVOICE
            module PaymentType
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INVOICE =
                T.let(
                  :INVOICE,
                  MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                )
              PAYMENT_INTENT =
                T.let(
                  :PAYMENT_INTENT,
                  MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end

          # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
          # not wish Metronome to calculate tax on your behalf. Leaving this field blank
          # will default to NONE.
          module TaxType
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::TaxType::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end
        end
      end

      class UsageFilter < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(T.nilable(MetronomeSDK::Models::BaseUsageFilter)) }
        attr_reader :current

        sig do
          params(current: T.nilable(T.any(MetronomeSDK::Models::BaseUsageFilter, MetronomeSDK::Internal::AnyHash)))
            .void
        end
        attr_writer :current

        sig { returns(MetronomeSDK::Models::BaseUsageFilter) }
        attr_reader :initial

        sig { params(initial: T.any(MetronomeSDK::Models::BaseUsageFilter, MetronomeSDK::Internal::AnyHash)).void }
        attr_writer :initial

        sig { returns(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update]) }
        attr_accessor :updates

        sig do
          params(
            current: T.nilable(T.any(MetronomeSDK::Models::BaseUsageFilter, MetronomeSDK::Internal::AnyHash)),
            initial: T.any(MetronomeSDK::Models::BaseUsageFilter, MetronomeSDK::Internal::AnyHash),
            updates: T::Array[
              T.any(
                MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update,
                MetronomeSDK::Internal::AnyHash
              )
            ]
          )
            .returns(T.attached_class)
        end
        def self.new(current:, initial:, updates:); end

        sig do
          override
            .returns(
              {
                current: T.nilable(MetronomeSDK::Models::BaseUsageFilter),
                initial: MetronomeSDK::Models::BaseUsageFilter,
                updates: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update]
              }
            )
        end
        def to_hash; end

        class Update < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :group_key

          sig { returns(T::Array[String]) }
          attr_accessor :group_values

          sig { returns(Time) }
          attr_accessor :starting_at

          sig do
            params(
              group_key: String,
              group_values: T::Array[String],
              starting_at: Time
            ).returns(T.attached_class)
          end
          def self.new(group_key:, group_values:, starting_at:); end

          sig { override.returns({group_key: String, group_values: T::Array[String], starting_at: Time}) }
          def to_hash; end
        end
      end
    end
  end
end
