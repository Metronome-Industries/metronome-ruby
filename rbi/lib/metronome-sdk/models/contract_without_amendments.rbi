# typed: strong

module MetronomeSDK
  module Models
    class ContractWithoutAmendments < MetronomeSDK::BaseModel
      sig { returns(T::Array[MetronomeSDK::Models::Commit]) }
      def commits
      end

      sig { params(_: T::Array[MetronomeSDK::Models::Commit]).returns(T::Array[MetronomeSDK::Models::Commit]) }
      def commits=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def created_by
      end

      sig { params(_: String).returns(String) }
      def created_by=(_)
      end

      sig { returns(T::Array[MetronomeSDK::Models::Override]) }
      def overrides
      end

      sig { params(_: T::Array[MetronomeSDK::Models::Override]).returns(T::Array[MetronomeSDK::Models::Override]) }
      def overrides=(_)
      end

      sig { returns(T::Array[MetronomeSDK::Models::ScheduledCharge]) }
      def scheduled_charges
      end

      sig do
        params(_: T::Array[MetronomeSDK::Models::ScheduledCharge])
          .returns(T::Array[MetronomeSDK::Models::ScheduledCharge])
      end
      def scheduled_charges=(_)
      end

      sig { returns(Time) }
      def starting_at
      end

      sig { params(_: Time).returns(Time) }
      def starting_at=(_)
      end

      sig { returns(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::Transition]) }
      def transitions
      end

      sig do
        params(_: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::Transition])
          .returns(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::Transition])
      end
      def transitions=(_)
      end

      sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule) }
      def usage_statement_schedule
      end

      sig do
        params(_: MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule)
          .returns(MetronomeSDK::Models::ContractWithoutAmendments::UsageStatementSchedule)
      end
      def usage_statement_schedule=(_)
      end

      sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration)) }
      def credit_balance_threshold_configuration
      end

      sig do
        params(_: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration)
          .returns(MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration)
      end
      def credit_balance_threshold_configuration=(_)
      end

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Credit])) }
      def credits
      end

      sig { params(_: T::Array[MetronomeSDK::Models::Credit]).returns(T::Array[MetronomeSDK::Models::Credit]) }
      def credits=(_)
      end

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::Discount])) }
      def discounts
      end

      sig { params(_: T::Array[MetronomeSDK::Models::Discount]).returns(T::Array[MetronomeSDK::Models::Discount]) }
      def discounts=(_)
      end

      sig { returns(T.nilable(Time)) }
      def ending_before
      end

      sig { params(_: Time).returns(Time) }
      def ending_before=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(Float)) }
      def net_payment_terms_days
      end

      sig { params(_: Float).returns(Float) }
      def net_payment_terms_days=(_)
      end

      sig { returns(T.nilable(String)) }
      def netsuite_sales_order_id
      end

      sig { params(_: String).returns(String) }
      def netsuite_sales_order_id=(_)
      end

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::ProService])) }
      def professional_services
      end

      sig { params(_: T::Array[MetronomeSDK::Models::ProService]).returns(T::Array[MetronomeSDK::Models::ProService]) }
      def professional_services=(_)
      end

      sig { returns(T.nilable(String)) }
      def rate_card_id
      end

      sig { params(_: String).returns(String) }
      def rate_card_id=(_)
      end

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit])) }
      def recurring_commits
      end

      sig do
        params(_: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit])
          .returns(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit])
      end
      def recurring_commits=(_)
      end

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit])) }
      def recurring_credits
      end

      sig do
        params(_: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit])
          .returns(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit])
      end
      def recurring_credits=(_)
      end

      sig { returns(T.nilable(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty])) }
      def reseller_royalties
      end

      sig do
        params(_: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty])
          .returns(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::ResellerRoyalty])
      end
      def reseller_royalties=(_)
      end

      sig { returns(T.nilable(String)) }
      def salesforce_opportunity_id
      end

      sig { params(_: String).returns(String) }
      def salesforce_opportunity_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def scheduled_charges_on_usage_invoices
      end

      sig { params(_: Symbol).returns(Symbol) }
      def scheduled_charges_on_usage_invoices=(_)
      end

      sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration)) }
      def spend_threshold_configuration
      end

      sig do
        params(_: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration)
          .returns(MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration)
      end
      def spend_threshold_configuration=(_)
      end

      sig { returns(T.nilable(Float)) }
      def total_contract_value
      end

      sig { params(_: Float).returns(Float) }
      def total_contract_value=(_)
      end

      sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter)) }
      def usage_filter
      end

      sig do
        params(_: MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter)
          .returns(MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter)
      end
      def usage_filter=(_)
      end

      sig do
        params(
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
          scheduled_charges_on_usage_invoices: Symbol,
          spend_threshold_configuration: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration,
          total_contract_value: Float,
          usage_filter: MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter
        )
          .void
      end
      def initialize(
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
        discounts: nil,
        ending_before: nil,
        name: nil,
        net_payment_terms_days: nil,
        netsuite_sales_order_id: nil,
        professional_services: nil,
        rate_card_id: nil,
        recurring_commits: nil,
        recurring_credits: nil,
        reseller_royalties: nil,
        salesforce_opportunity_id: nil,
        scheduled_charges_on_usage_invoices: nil,
        spend_threshold_configuration: nil,
        total_contract_value: nil,
        usage_filter: nil
      )
      end

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
              scheduled_charges_on_usage_invoices: Symbol,
              spend_threshold_configuration: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration,
              total_contract_value: Float,
              usage_filter: MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter
            }
          )
      end
      def to_hash
      end

      class Transition < MetronomeSDK::BaseModel
        sig { returns(String) }
        def from_contract_id
        end

        sig { params(_: String).returns(String) }
        def from_contract_id=(_)
        end

        sig { returns(String) }
        def to_contract_id
        end

        sig { params(_: String).returns(String) }
        def to_contract_id=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { params(from_contract_id: String, to_contract_id: String, type: Symbol).void }
        def initialize(from_contract_id:, to_contract_id:, type:)
        end

        sig { override.returns({from_contract_id: String, to_contract_id: String, type: Symbol}) }
        def to_hash
        end

        class Type < MetronomeSDK::Enum
          abstract!

          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class UsageStatementSchedule < MetronomeSDK::BaseModel
        sig { returns(Time) }
        def billing_anchor_date
        end

        sig { params(_: Time).returns(Time) }
        def billing_anchor_date=(_)
        end

        sig { returns(Symbol) }
        def frequency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def frequency=(_)
        end

        sig { params(billing_anchor_date: Time, frequency: Symbol).void }
        def initialize(billing_anchor_date:, frequency:)
        end

        sig { override.returns({billing_anchor_date: Time, frequency: Symbol}) }
        def to_hash
        end

        class Frequency < MetronomeSDK::Enum
          abstract!

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
          WEEKLY = :WEEKLY

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class CreditBalanceThresholdConfiguration < MetronomeSDK::BaseModel
        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit) }
        def commit
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit)
        end
        def commit=(_)
        end

        sig { returns(T::Boolean) }
        def is_enabled
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_enabled=(_)
        end

        sig do
          returns(
            MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig
          )
        end
        def payment_gate_config
        end

        sig do
          params(
            _: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig
          )
            .returns(
              MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig
            )
        end
        def payment_gate_config=(_)
        end

        sig { returns(Float) }
        def recharge_to_amount
        end

        sig { params(_: Float).returns(Float) }
        def recharge_to_amount=(_)
        end

        sig { returns(Float) }
        def threshold_amount
        end

        sig { params(_: Float).returns(Float) }
        def threshold_amount=(_)
        end

        sig do
          params(
            commit: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::Commit,
            is_enabled: T::Boolean,
            payment_gate_config: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig,
            recharge_to_amount: Float,
            threshold_amount: Float
          )
            .void
        end
        def initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:)
        end

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
        def to_hash
        end

        class Commit < MetronomeSDK::BaseModel
          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_ids=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def applicable_product_tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applicable_product_tags=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig do
            params(
              product_id: String,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              name: String
            )
              .void
          end
          def initialize(
            product_id:,
            applicable_product_ids: nil,
            applicable_product_tags: nil,
            description: nil,
            name: nil
          )
          end

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
          def to_hash
          end
        end

        class PaymentGateConfig < MetronomeSDK::BaseModel
          sig { returns(Symbol) }
          def payment_gate_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def payment_gate_type=(_)
          end

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
              )
            )
          end
          def stripe_config
          end

          sig do
            params(
              _: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
            )
              .returns(
                MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
              )
          end
          def stripe_config=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def tax_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def tax_type=(_)
          end

          sig do
            params(
              payment_gate_type: Symbol,
              stripe_config: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
              tax_type: Symbol
            )
              .void
          end
          def initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
          end

          sig do
            override
              .returns(
                {
                  payment_gate_type: Symbol,
                  stripe_config: MetronomeSDK::Models::ContractWithoutAmendments::CreditBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type: Symbol
                }
              )
          end
          def to_hash
          end

          class PaymentGateType < MetronomeSDK::Enum
            abstract!

            NONE = :NONE
            STRIPE = :STRIPE
            EXTERNAL = :EXTERNAL

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class StripeConfig < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def payment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def payment_type=(_)
            end

            sig { params(payment_type: Symbol).void }
            def initialize(payment_type:)
            end

            sig { override.returns({payment_type: Symbol}) }
            def to_hash
            end

            class PaymentType < MetronomeSDK::Enum
              abstract!

              INVOICE = :INVOICE
              PAYMENT_INTENT = :PAYMENT_INTENT

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class TaxType < MetronomeSDK::Enum
            abstract!

            NONE = :NONE
            STRIPE = :STRIPE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class RecurringCommit < MetronomeSDK::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount) }
        def access_amount
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount)
        end
        def access_amount=(_)
        end

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration) }
        def commit_duration
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration)
        end
        def commit_duration=(_)
        end

        sig { returns(Float) }
        def priority
        end

        sig { params(_: Float).returns(Float) }
        def priority=(_)
        end

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product) }
        def product
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product)
        end
        def product=(_)
        end

        sig { returns(Symbol) }
        def rate_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def rate_type=(_)
        end

        sig { returns(Time) }
        def starting_at
        end

        sig { params(_: Time).returns(Time) }
        def starting_at=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def applicable_product_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applicable_product_ids=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def applicable_product_tags
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applicable_product_tags=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract)) }
        def contract
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract)
        end
        def contract=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(Time)) }
        def ending_before
        end

        sig { params(_: Time).returns(Time) }
        def ending_before=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount)) }
        def invoice_amount
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount)
        end
        def invoice_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(String)) }
        def netsuite_sales_order_id
        end

        sig { params(_: String).returns(String) }
        def netsuite_sales_order_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def proration
        end

        sig { params(_: Symbol).returns(Symbol) }
        def proration=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def recurrence_frequency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def recurrence_frequency=(_)
        end

        sig { returns(T.nilable(Float)) }
        def rollover_fraction
        end

        sig { params(_: Float).returns(Float) }
        def rollover_fraction=(_)
        end

        sig do
          params(
            id: String,
            access_amount: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount,
            commit_duration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration,
            priority: Float,
            product: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product,
            rate_type: Symbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            contract: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract,
            description: String,
            ending_before: Time,
            invoice_amount: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount,
            name: String,
            netsuite_sales_order_id: String,
            proration: Symbol,
            recurrence_frequency: Symbol,
            rollover_fraction: Float
          )
            .void
        end
        def initialize(
          id:,
          access_amount:,
          commit_duration:,
          priority:,
          product:,
          rate_type:,
          starting_at:,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          contract: nil,
          description: nil,
          ending_before: nil,
          invoice_amount: nil,
          name: nil,
          netsuite_sales_order_id: nil,
          proration: nil,
          recurrence_frequency: nil,
          rollover_fraction: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                access_amount: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount,
                commit_duration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration,
                priority: Float,
                product: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Product,
                rate_type: Symbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::Contract,
                description: String,
                ending_before: Time,
                invoice_amount: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount,
                name: String,
                netsuite_sales_order_id: String,
                proration: Symbol,
                recurrence_frequency: Symbol,
                rollover_fraction: Float
              }
            )
        end
        def to_hash
        end

        class AccessAmount < MetronomeSDK::BaseModel
          sig { returns(String) }
          def credit_type_id
          end

          sig { params(_: String).returns(String) }
          def credit_type_id=(_)
          end

          sig { returns(Float) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig { returns(Float) }
          def unit_price
          end

          sig { params(_: Float).returns(Float) }
          def unit_price=(_)
          end

          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
          def initialize(credit_type_id:, quantity:, unit_price:)
          end

          sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
          def to_hash
          end
        end

        class CommitDuration < MetronomeSDK::BaseModel
          sig { returns(Float) }
          def value
          end

          sig { params(_: Float).returns(Float) }
          def value=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def unit
          end

          sig { params(_: Symbol).returns(Symbol) }
          def unit=(_)
          end

          sig { params(value: Float, unit: Symbol).void }
          def initialize(value:, unit: nil)
          end

          sig { override.returns({value: Float, unit: Symbol}) }
          def to_hash
          end

          class Unit < MetronomeSDK::Enum
            abstract!

            PERIODS = :PERIODS

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class Product < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class RateType < MetronomeSDK::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Contract < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class InvoiceAmount < MetronomeSDK::BaseModel
          sig { returns(String) }
          def credit_type_id
          end

          sig { params(_: String).returns(String) }
          def credit_type_id=(_)
          end

          sig { returns(Float) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig { returns(Float) }
          def unit_price
          end

          sig { params(_: Float).returns(Float) }
          def unit_price=(_)
          end

          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
          def initialize(credit_type_id:, quantity:, unit_price:)
          end

          sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
          def to_hash
          end
        end

        class Proration < MetronomeSDK::Enum
          abstract!

          NONE = :NONE
          FIRST = :FIRST
          LAST = :LAST
          FIRST_AND_LAST = :FIRST_AND_LAST

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class RecurrenceFrequency < MetronomeSDK::Enum
          abstract!

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
          WEEKLY = :WEEKLY

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class RecurringCredit < MetronomeSDK::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount) }
        def access_amount
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount)
        end
        def access_amount=(_)
        end

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration) }
        def commit_duration
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration)
        end
        def commit_duration=(_)
        end

        sig { returns(Float) }
        def priority
        end

        sig { params(_: Float).returns(Float) }
        def priority=(_)
        end

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product) }
        def product
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product)
        end
        def product=(_)
        end

        sig { returns(Symbol) }
        def rate_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def rate_type=(_)
        end

        sig { returns(Time) }
        def starting_at
        end

        sig { params(_: Time).returns(Time) }
        def starting_at=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def applicable_product_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applicable_product_ids=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def applicable_product_tags
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applicable_product_tags=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract)) }
        def contract
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract)
        end
        def contract=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(Time)) }
        def ending_before
        end

        sig { params(_: Time).returns(Time) }
        def ending_before=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(String)) }
        def netsuite_sales_order_id
        end

        sig { params(_: String).returns(String) }
        def netsuite_sales_order_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def proration
        end

        sig { params(_: Symbol).returns(Symbol) }
        def proration=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def recurrence_frequency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def recurrence_frequency=(_)
        end

        sig { returns(T.nilable(Float)) }
        def rollover_fraction
        end

        sig { params(_: Float).returns(Float) }
        def rollover_fraction=(_)
        end

        sig do
          params(
            id: String,
            access_amount: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount,
            commit_duration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration,
            priority: Float,
            product: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product,
            rate_type: Symbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            contract: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract,
            description: String,
            ending_before: Time,
            name: String,
            netsuite_sales_order_id: String,
            proration: Symbol,
            recurrence_frequency: Symbol,
            rollover_fraction: Float
          )
            .void
        end
        def initialize(
          id:,
          access_amount:,
          commit_duration:,
          priority:,
          product:,
          rate_type:,
          starting_at:,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          contract: nil,
          description: nil,
          ending_before: nil,
          name: nil,
          netsuite_sales_order_id: nil,
          proration: nil,
          recurrence_frequency: nil,
          rollover_fraction: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                access_amount: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount,
                commit_duration: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration,
                priority: Float,
                product: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Product,
                rate_type: Symbol,
                starting_at: Time,
                applicable_product_ids: T::Array[String],
                applicable_product_tags: T::Array[String],
                contract: MetronomeSDK::Models::ContractWithoutAmendments::RecurringCredit::Contract,
                description: String,
                ending_before: Time,
                name: String,
                netsuite_sales_order_id: String,
                proration: Symbol,
                recurrence_frequency: Symbol,
                rollover_fraction: Float
              }
            )
        end
        def to_hash
        end

        class AccessAmount < MetronomeSDK::BaseModel
          sig { returns(String) }
          def credit_type_id
          end

          sig { params(_: String).returns(String) }
          def credit_type_id=(_)
          end

          sig { returns(Float) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig { returns(Float) }
          def unit_price
          end

          sig { params(_: Float).returns(Float) }
          def unit_price=(_)
          end

          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
          def initialize(credit_type_id:, quantity:, unit_price:)
          end

          sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
          def to_hash
          end
        end

        class CommitDuration < MetronomeSDK::BaseModel
          sig { returns(Float) }
          def value
          end

          sig { params(_: Float).returns(Float) }
          def value=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def unit
          end

          sig { params(_: Symbol).returns(Symbol) }
          def unit=(_)
          end

          sig { params(value: Float, unit: Symbol).void }
          def initialize(value:, unit: nil)
          end

          sig { override.returns({value: Float, unit: Symbol}) }
          def to_hash
          end

          class Unit < MetronomeSDK::Enum
            abstract!

            PERIODS = :PERIODS

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class Product < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class RateType < MetronomeSDK::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Contract < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class Proration < MetronomeSDK::Enum
          abstract!

          NONE = :NONE
          FIRST = :FIRST
          LAST = :LAST
          FIRST_AND_LAST = :FIRST_AND_LAST

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class RecurrenceFrequency < MetronomeSDK::Enum
          abstract!

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
          WEEKLY = :WEEKLY

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class ResellerRoyalty < MetronomeSDK::BaseModel
        sig { returns(Float) }
        def fraction
        end

        sig { params(_: Float).returns(Float) }
        def fraction=(_)
        end

        sig { returns(String) }
        def netsuite_reseller_id
        end

        sig { params(_: String).returns(String) }
        def netsuite_reseller_id=(_)
        end

        sig { returns(Symbol) }
        def reseller_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reseller_type=(_)
        end

        sig { returns(Time) }
        def starting_at
        end

        sig { params(_: Time).returns(Time) }
        def starting_at=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def applicable_product_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applicable_product_ids=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def applicable_product_tags
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applicable_product_tags=(_)
        end

        sig { returns(T.nilable(String)) }
        def aws_account_number
        end

        sig { params(_: String).returns(String) }
        def aws_account_number=(_)
        end

        sig { returns(T.nilable(String)) }
        def aws_offer_id
        end

        sig { params(_: String).returns(String) }
        def aws_offer_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def aws_payer_reference_id
        end

        sig { params(_: String).returns(String) }
        def aws_payer_reference_id=(_)
        end

        sig { returns(T.nilable(Time)) }
        def ending_before
        end

        sig { params(_: Time).returns(Time) }
        def ending_before=(_)
        end

        sig { returns(T.nilable(String)) }
        def gcp_account_id
        end

        sig { params(_: String).returns(String) }
        def gcp_account_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def gcp_offer_id
        end

        sig { params(_: String).returns(String) }
        def gcp_offer_id=(_)
        end

        sig { returns(T.nilable(Float)) }
        def reseller_contract_value
        end

        sig { params(_: Float).returns(Float) }
        def reseller_contract_value=(_)
        end

        sig do
          params(
            fraction: Float,
            netsuite_reseller_id: String,
            reseller_type: Symbol,
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
            .void
        end
        def initialize(
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
        )
        end

        sig do
          override
            .returns(
              {
                fraction: Float,
                netsuite_reseller_id: String,
                reseller_type: Symbol,
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
        def to_hash
        end

        class ResellerType < MetronomeSDK::Enum
          abstract!

          AWS = :AWS
          AWS_PRO_SERVICE = :AWS_PRO_SERVICE
          GCP = :GCP
          GCP_PRO_SERVICE = :GCP_PRO_SERVICE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class ScheduledChargesOnUsageInvoices < MetronomeSDK::Enum
        abstract!

        ALL = :ALL

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class SpendThresholdConfiguration < MetronomeSDK::BaseModel
        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit) }
        def commit
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit)
        end
        def commit=(_)
        end

        sig { returns(T::Boolean) }
        def is_enabled
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_enabled=(_)
        end

        sig { returns(MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig) }
        def payment_gate_config
        end

        sig do
          params(_: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig)
            .returns(MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig)
        end
        def payment_gate_config=(_)
        end

        sig { returns(Float) }
        def threshold_amount
        end

        sig { params(_: Float).returns(Float) }
        def threshold_amount=(_)
        end

        sig do
          params(
            commit: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::Commit,
            is_enabled: T::Boolean,
            payment_gate_config: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig,
            threshold_amount: Float
          )
            .void
        end
        def initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
        end

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
        def to_hash
        end

        class Commit < MetronomeSDK::BaseModel
          sig { returns(String) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(product_id: String, description: String, name: String).void }
          def initialize(product_id:, description: nil, name: nil)
          end

          sig { override.returns({product_id: String, description: String, name: String}) }
          def to_hash
          end
        end

        class PaymentGateConfig < MetronomeSDK::BaseModel
          sig { returns(Symbol) }
          def payment_gate_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def payment_gate_type=(_)
          end

          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
              )
            )
          end
          def stripe_config
          end

          sig do
            params(
              _: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
            )
              .returns(
                MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig
              )
          end
          def stripe_config=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def tax_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def tax_type=(_)
          end

          sig do
            params(
              payment_gate_type: Symbol,
              stripe_config: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
              tax_type: Symbol
            )
              .void
          end
          def initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
          end

          sig do
            override
              .returns(
                {
                  payment_gate_type: Symbol,
                  stripe_config: MetronomeSDK::Models::ContractWithoutAmendments::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig,
                  tax_type: Symbol
                }
              )
          end
          def to_hash
          end

          class PaymentGateType < MetronomeSDK::Enum
            abstract!

            NONE = :NONE
            STRIPE = :STRIPE
            EXTERNAL = :EXTERNAL

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class StripeConfig < MetronomeSDK::BaseModel
            sig { returns(Symbol) }
            def payment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def payment_type=(_)
            end

            sig { params(payment_type: Symbol).void }
            def initialize(payment_type:)
            end

            sig { override.returns({payment_type: Symbol}) }
            def to_hash
            end

            class PaymentType < MetronomeSDK::Enum
              abstract!

              INVOICE = :INVOICE
              PAYMENT_INTENT = :PAYMENT_INTENT

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class TaxType < MetronomeSDK::Enum
            abstract!

            NONE = :NONE
            STRIPE = :STRIPE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class UsageFilter < MetronomeSDK::BaseModel
        sig { returns(T.nilable(MetronomeSDK::Models::BaseUsageFilter)) }
        def current
        end

        sig do
          params(_: T.nilable(MetronomeSDK::Models::BaseUsageFilter))
            .returns(T.nilable(MetronomeSDK::Models::BaseUsageFilter))
        end
        def current=(_)
        end

        sig { returns(MetronomeSDK::Models::BaseUsageFilter) }
        def initial
        end

        sig { params(_: MetronomeSDK::Models::BaseUsageFilter).returns(MetronomeSDK::Models::BaseUsageFilter) }
        def initial=(_)
        end

        sig { returns(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update]) }
        def updates
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update])
            .returns(T::Array[MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update])
        end
        def updates=(_)
        end

        sig do
          params(
            current: T.nilable(MetronomeSDK::Models::BaseUsageFilter),
            initial: MetronomeSDK::Models::BaseUsageFilter,
            updates: T::Array[MetronomeSDK::Models::ContractWithoutAmendments::UsageFilter::Update]
          )
            .void
        end
        def initialize(current:, initial:, updates:)
        end

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
        def to_hash
        end

        class Update < MetronomeSDK::BaseModel
          sig { returns(String) }
          def group_key
          end

          sig { params(_: String).returns(String) }
          def group_key=(_)
          end

          sig { returns(T::Array[String]) }
          def group_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def group_values=(_)
          end

          sig { returns(Time) }
          def starting_at
          end

          sig { params(_: Time).returns(Time) }
          def starting_at=(_)
          end

          sig { params(group_key: String, group_values: T::Array[String], starting_at: Time).void }
          def initialize(group_key:, group_values:, starting_at:)
          end

          sig { override.returns({group_key: String, group_values: T::Array[String], starting_at: Time}) }
          def to_hash
          end
        end
      end
    end
  end
end
