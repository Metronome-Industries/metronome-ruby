# typed: strong

module Metronome
  module Models
    class ContractCreateParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(Time) }
      def starting_at
      end

      sig { params(_: Time).returns(Time) }
      def starting_at=(_)
      end

      sig { returns(T.nilable(Metronome::Models::ContractCreateParams::BillingProviderConfiguration)) }
      def billing_provider_configuration
      end

      sig do
        params(_: Metronome::Models::ContractCreateParams::BillingProviderConfiguration).returns(Metronome::Models::ContractCreateParams::BillingProviderConfiguration)
      end
      def billing_provider_configuration=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Commit])) }
      def commits
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractCreateParams::Commit]).returns(T::Array[Metronome::Models::ContractCreateParams::Commit])
      end
      def commits=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Credit])) }
      def credits
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractCreateParams::Credit]).returns(T::Array[Metronome::Models::ContractCreateParams::Credit])
      end
      def credits=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def custom_fields
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_fields=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Discount])) }
      def discounts
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractCreateParams::Discount]).returns(T::Array[Metronome::Models::ContractCreateParams::Discount])
      end
      def discounts=(_)
      end

      sig { returns(T.nilable(Time)) }
      def ending_before
      end

      sig { params(_: Time).returns(Time) }
      def ending_before=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def multiplier_override_prioritization
      end

      sig { params(_: Symbol).returns(Symbol) }
      def multiplier_override_prioritization=(_)
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

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Override])) }
      def overrides
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractCreateParams::Override]).returns(T::Array[Metronome::Models::ContractCreateParams::Override])
      end
      def overrides=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::ProfessionalService])) }
      def professional_services
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractCreateParams::ProfessionalService]).returns(T::Array[Metronome::Models::ContractCreateParams::ProfessionalService])
      end
      def professional_services=(_)
      end

      sig { returns(T.nilable(String)) }
      def rate_card_alias
      end

      sig { params(_: String).returns(String) }
      def rate_card_alias=(_)
      end

      sig { returns(T.nilable(String)) }
      def rate_card_id
      end

      sig { params(_: String).returns(String) }
      def rate_card_id=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::RecurringCommit])) }
      def recurring_commits
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractCreateParams::RecurringCommit]).returns(T::Array[Metronome::Models::ContractCreateParams::RecurringCommit])
      end
      def recurring_commits=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::RecurringCredit])) }
      def recurring_credits
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractCreateParams::RecurringCredit]).returns(T::Array[Metronome::Models::ContractCreateParams::RecurringCredit])
      end
      def recurring_credits=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::ResellerRoyalty])) }
      def reseller_royalties
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractCreateParams::ResellerRoyalty]).returns(T::Array[Metronome::Models::ContractCreateParams::ResellerRoyalty])
      end
      def reseller_royalties=(_)
      end

      sig { returns(T.nilable(String)) }
      def salesforce_opportunity_id
      end

      sig { params(_: String).returns(String) }
      def salesforce_opportunity_id=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge])) }
      def scheduled_charges
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge]).returns(T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge])
      end
      def scheduled_charges=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def scheduled_charges_on_usage_invoices
      end

      sig { params(_: Symbol).returns(Symbol) }
      def scheduled_charges_on_usage_invoices=(_)
      end

      sig { returns(T.nilable(Float)) }
      def total_contract_value
      end

      sig { params(_: Float).returns(Float) }
      def total_contract_value=(_)
      end

      sig { returns(T.nilable(Metronome::Models::ContractCreateParams::Transition)) }
      def transition
      end

      sig do
        params(_: Metronome::Models::ContractCreateParams::Transition).returns(Metronome::Models::ContractCreateParams::Transition)
      end
      def transition=(_)
      end

      sig { returns(T.nilable(String)) }
      def uniqueness_key
      end

      sig { params(_: String).returns(String) }
      def uniqueness_key=(_)
      end

      sig { returns(T.nilable(Metronome::Models::BaseUsageFilter)) }
      def usage_filter
      end

      sig { params(_: Metronome::Models::BaseUsageFilter).returns(Metronome::Models::BaseUsageFilter) }
      def usage_filter=(_)
      end

      sig { returns(T.nilable(Metronome::Models::ContractCreateParams::UsageStatementSchedule)) }
      def usage_statement_schedule
      end

      sig do
        params(_: Metronome::Models::ContractCreateParams::UsageStatementSchedule).returns(Metronome::Models::ContractCreateParams::UsageStatementSchedule)
      end
      def usage_statement_schedule=(_)
      end

      sig do
        params(
          customer_id: String,
          starting_at: Time,
          billing_provider_configuration: Metronome::Models::ContractCreateParams::BillingProviderConfiguration,
          commits: T::Array[Metronome::Models::ContractCreateParams::Commit],
          credits: T::Array[Metronome::Models::ContractCreateParams::Credit],
          custom_fields: T::Hash[Symbol, String],
          discounts: T::Array[Metronome::Models::ContractCreateParams::Discount],
          ending_before: Time,
          multiplier_override_prioritization: Symbol,
          name: String,
          net_payment_terms_days: Float,
          netsuite_sales_order_id: String,
          overrides: T::Array[Metronome::Models::ContractCreateParams::Override],
          professional_services: T::Array[Metronome::Models::ContractCreateParams::ProfessionalService],
          rate_card_alias: String,
          rate_card_id: String,
          recurring_commits: T::Array[Metronome::Models::ContractCreateParams::RecurringCommit],
          recurring_credits: T::Array[Metronome::Models::ContractCreateParams::RecurringCredit],
          reseller_royalties: T::Array[Metronome::Models::ContractCreateParams::ResellerRoyalty],
          salesforce_opportunity_id: String,
          scheduled_charges: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge],
          scheduled_charges_on_usage_invoices: Symbol,
          total_contract_value: Float,
          transition: Metronome::Models::ContractCreateParams::Transition,
          uniqueness_key: String,
          usage_filter: Metronome::Models::BaseUsageFilter,
          usage_statement_schedule: Metronome::Models::ContractCreateParams::UsageStatementSchedule,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        customer_id:,
        starting_at:,
        billing_provider_configuration: nil,
        commits: nil,
        credits: nil,
        custom_fields: nil,
        discounts: nil,
        ending_before: nil,
        multiplier_override_prioritization: nil,
        name: nil,
        net_payment_terms_days: nil,
        netsuite_sales_order_id: nil,
        overrides: nil,
        professional_services: nil,
        rate_card_alias: nil,
        rate_card_id: nil,
        recurring_commits: nil,
        recurring_credits: nil,
        reseller_royalties: nil,
        salesforce_opportunity_id: nil,
        scheduled_charges: nil,
        scheduled_charges_on_usage_invoices: nil,
        total_contract_value: nil,
        transition: nil,
        uniqueness_key: nil,
        usage_filter: nil,
        usage_statement_schedule: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            starting_at: Time,
            billing_provider_configuration: Metronome::Models::ContractCreateParams::BillingProviderConfiguration,
            commits: T::Array[Metronome::Models::ContractCreateParams::Commit],
            credits: T::Array[Metronome::Models::ContractCreateParams::Credit],
            custom_fields: T::Hash[Symbol, String],
            discounts: T::Array[Metronome::Models::ContractCreateParams::Discount],
            ending_before: Time,
            multiplier_override_prioritization: Symbol,
            name: String,
            net_payment_terms_days: Float,
            netsuite_sales_order_id: String,
            overrides: T::Array[Metronome::Models::ContractCreateParams::Override],
            professional_services: T::Array[Metronome::Models::ContractCreateParams::ProfessionalService],
            rate_card_alias: String,
            rate_card_id: String,
            recurring_commits: T::Array[Metronome::Models::ContractCreateParams::RecurringCommit],
            recurring_credits: T::Array[Metronome::Models::ContractCreateParams::RecurringCredit],
            reseller_royalties: T::Array[Metronome::Models::ContractCreateParams::ResellerRoyalty],
            salesforce_opportunity_id: String,
            scheduled_charges: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge],
            scheduled_charges_on_usage_invoices: Symbol,
            total_contract_value: Float,
            transition: Metronome::Models::ContractCreateParams::Transition,
            uniqueness_key: String,
            usage_filter: Metronome::Models::BaseUsageFilter,
            usage_statement_schedule: Metronome::Models::ContractCreateParams::UsageStatementSchedule,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BillingProviderConfiguration < Metronome::BaseModel
        sig { returns(T.nilable(Symbol)) }
        def billing_provider
        end

        sig { params(_: Symbol).returns(Symbol) }
        def billing_provider=(_)
        end

        sig { returns(T.nilable(String)) }
        def billing_provider_configuration_id
        end

        sig { params(_: String).returns(String) }
        def billing_provider_configuration_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def delivery_method
        end

        sig { params(_: Symbol).returns(Symbol) }
        def delivery_method=(_)
        end

        sig do
          params(
            billing_provider: Symbol,
            billing_provider_configuration_id: String,
            delivery_method: Symbol
          ).void
        end
        def initialize(billing_provider: nil, billing_provider_configuration_id: nil, delivery_method: nil)
        end

        sig do
          override.returns(
            {
              billing_provider: Symbol,
              billing_provider_configuration_id: String,
              delivery_method: Symbol
            }
          )
        end
        def to_hash
        end

        class BillingProvider < Metronome::Enum
          abstract!

          AWS_MARKETPLACE = :aws_marketplace
          AZURE_MARKETPLACE = :azure_marketplace
          GCP_MARKETPLACE = :gcp_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DeliveryMethod < Metronome::Enum
          abstract!

          DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
          AWS_SQS = :aws_sqs
          TACKLE = :tackle
          AWS_SNS = :aws_sns

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Commit < Metronome::BaseModel
        sig { returns(String) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::Commit::AccessSchedule)) }
        def access_schedule
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::Commit::AccessSchedule).returns(Metronome::Models::ContractCreateParams::Commit::AccessSchedule)
        end
        def access_schedule=(_)
        end

        sig { returns(T.nilable(Float)) }
        def amount
        end

        sig { params(_: Float).returns(Float) }
        def amount=(_)
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

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule)) }
        def invoice_schedule
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule).returns(Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule)
        end
        def invoice_schedule=(_)
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

        sig { returns(T.nilable(Float)) }
        def priority
        end

        sig { params(_: Float).returns(Float) }
        def priority=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def rate_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def rate_type=(_)
        end

        sig { returns(T.nilable(Float)) }
        def rollover_fraction
        end

        sig { params(_: Float).returns(Float) }
        def rollover_fraction=(_)
        end

        sig { returns(T.nilable(String)) }
        def temporary_id
        end

        sig { params(_: String).returns(String) }
        def temporary_id=(_)
        end

        sig do
          params(
            product_id: String,
            type: Symbol,
            access_schedule: Metronome::Models::ContractCreateParams::Commit::AccessSchedule,
            amount: Float,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            invoice_schedule: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule,
            name: String,
            netsuite_sales_order_id: String,
            priority: Float,
            rate_type: Symbol,
            rollover_fraction: Float,
            temporary_id: String
          ).void
        end
        def initialize(
          product_id:,
          type:,
          access_schedule: nil,
          amount: nil,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          custom_fields: nil,
          description: nil,
          invoice_schedule: nil,
          name: nil,
          netsuite_sales_order_id: nil,
          priority: nil,
          rate_type: nil,
          rollover_fraction: nil,
          temporary_id: nil
        )
        end

        sig do
          override.returns(
            {
              product_id: String,
              type: Symbol,
              access_schedule: Metronome::Models::ContractCreateParams::Commit::AccessSchedule,
              amount: Float,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              invoice_schedule: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule,
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type: Symbol,
              rollover_fraction: Float,
              temporary_id: String
            }
          )
        end
        def to_hash
        end

        class Type < Metronome::Enum
          abstract!

          PREPAID = :PREPAID
          POSTPAID = :POSTPAID

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class AccessSchedule < Metronome::BaseModel
          sig do
            returns(T::Array[Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem])
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem]).returns(T::Array[Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem])
          end
          def schedule_items=(_)
          end

          sig { returns(T.nilable(String)) }
          def credit_type_id
          end

          sig { params(_: String).returns(String) }
          def credit_type_id=(_)
          end

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil)
          end

          sig do
            override.returns(
              {
                schedule_items: T::Array[Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem], credit_type_id: String
              }
            )
          end
          def to_hash
          end

          class ScheduleItem < Metronome::BaseModel
            sig { returns(Float) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(Time) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { params(amount: Float, ending_before: Time, starting_at: Time).void }
            def initialize(amount:, ending_before:, starting_at:)
            end

            sig { override.returns({amount: Float, ending_before: Time, starting_at: Time}) }
            def to_hash
            end
          end
        end

        class InvoiceSchedule < Metronome::BaseModel
          sig { returns(T.nilable(String)) }
          def credit_type_id
          end

          sig { params(_: String).returns(String) }
          def credit_type_id=(_)
          end

          sig do
            returns(T.nilable(Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule))
          end
          def recurring_schedule
          end

          sig do
            params(_: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule).returns(Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule)
          end
          def recurring_schedule=(_)
          end

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem]))
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem]).returns(T::Array[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem])
          end
          def schedule_items=(_)
          end

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
          end

          sig do
            override.returns(
              {
                credit_type_id: String,
                recurring_schedule: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule,
                schedule_items: T::Array[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem]
              }
            )
          end
          def to_hash
          end

          class RecurringSchedule < Metronome::BaseModel
            sig { returns(Symbol) }
            def amount_distribution
            end

            sig { params(_: Symbol).returns(Symbol) }
            def amount_distribution=(_)
            end

            sig { returns(Time) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(Symbol) }
            def frequency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def frequency=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { returns(T.nilable(Float)) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(T.nilable(Float)) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(T.nilable(Float)) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig do
              params(
                amount_distribution: Symbol,
                ending_before: Time,
                frequency: Symbol,
                starting_at: Time,
                amount: Float,
                quantity: Float,
                unit_price: Float
              ).void
            end
            def initialize(
              amount_distribution:,
              ending_before:,
              frequency:,
              starting_at:,
              amount: nil,
              quantity: nil,
              unit_price: nil
            )
            end

            sig do
              override.returns(
                {
                  amount_distribution: Symbol,
                  ending_before: Time,
                  frequency: Symbol,
                  starting_at: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                }
              )
            end
            def to_hash
            end

            class AmountDistribution < Metronome::Enum
              abstract!

              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Frequency < Metronome::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class ScheduleItem < Metronome::BaseModel
            sig { returns(Time) }
            def timestamp
            end

            sig { params(_: Time).returns(Time) }
            def timestamp=(_)
            end

            sig { returns(T.nilable(Float)) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(T.nilable(Float)) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(T.nilable(Float)) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
            def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
            end

            sig { override.returns({timestamp: Time, amount: Float, quantity: Float, unit_price: Float}) }
            def to_hash
            end
          end
        end

        class RateType < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Credit < Metronome::BaseModel
        sig { returns(Metronome::Models::ContractCreateParams::Credit::AccessSchedule) }
        def access_schedule
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::Credit::AccessSchedule).returns(Metronome::Models::ContractCreateParams::Credit::AccessSchedule)
        end
        def access_schedule=(_)
        end

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

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
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

        sig { returns(T.nilable(String)) }
        def netsuite_sales_order_id
        end

        sig { params(_: String).returns(String) }
        def netsuite_sales_order_id=(_)
        end

        sig { returns(T.nilable(Float)) }
        def priority
        end

        sig { params(_: Float).returns(Float) }
        def priority=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def rate_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def rate_type=(_)
        end

        sig do
          params(
            access_schedule: Metronome::Models::ContractCreateParams::Credit::AccessSchedule,
            product_id: String,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            name: String,
            netsuite_sales_order_id: String,
            priority: Float,
            rate_type: Symbol
          ).void
        end
        def initialize(
          access_schedule:,
          product_id:,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          custom_fields: nil,
          description: nil,
          name: nil,
          netsuite_sales_order_id: nil,
          priority: nil,
          rate_type: nil
        )
        end

        sig do
          override.returns(
            {
              access_schedule: Metronome::Models::ContractCreateParams::Credit::AccessSchedule,
              product_id: String,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type: Symbol
            }
          )
        end
        def to_hash
        end

        class AccessSchedule < Metronome::BaseModel
          sig do
            returns(T::Array[Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem])
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem]).returns(T::Array[Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem])
          end
          def schedule_items=(_)
          end

          sig { returns(T.nilable(String)) }
          def credit_type_id
          end

          sig { params(_: String).returns(String) }
          def credit_type_id=(_)
          end

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil)
          end

          sig do
            override.returns(
              {
                schedule_items: T::Array[Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem], credit_type_id: String
              }
            )
          end
          def to_hash
          end

          class ScheduleItem < Metronome::BaseModel
            sig { returns(Float) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(Time) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { params(amount: Float, ending_before: Time, starting_at: Time).void }
            def initialize(amount:, ending_before:, starting_at:)
            end

            sig { override.returns({amount: Float, ending_before: Time, starting_at: Time}) }
            def to_hash
            end
          end
        end

        class RateType < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Discount < Metronome::BaseModel
        sig { returns(String) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
        end

        sig { returns(Metronome::Models::ContractCreateParams::Discount::Schedule) }
        def schedule
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::Discount::Schedule).returns(Metronome::Models::ContractCreateParams::Discount::Schedule)
        end
        def schedule=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
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

        sig do
          params(
            product_id: String,
            schedule: Metronome::Models::ContractCreateParams::Discount::Schedule,
            custom_fields: T::Hash[Symbol, String],
            name: String,
            netsuite_sales_order_id: String
          ).void
        end
        def initialize(product_id:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
        end

        sig do
          override.returns(
            {
              product_id: String,
              schedule: Metronome::Models::ContractCreateParams::Discount::Schedule,
              custom_fields: T::Hash[Symbol, String],
              name: String,
              netsuite_sales_order_id: String
            }
          )
        end
        def to_hash
        end

        class Schedule < Metronome::BaseModel
          sig { returns(T.nilable(String)) }
          def credit_type_id
          end

          sig { params(_: String).returns(String) }
          def credit_type_id=(_)
          end

          sig do
            returns(T.nilable(Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule))
          end
          def recurring_schedule
          end

          sig do
            params(_: Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule).returns(Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule)
          end
          def recurring_schedule=(_)
          end

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem]))
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem]).returns(T::Array[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem])
          end
          def schedule_items=(_)
          end

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
          end

          sig do
            override.returns(
              {
                credit_type_id: String,
                recurring_schedule: Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule,
                schedule_items: T::Array[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem]
              }
            )
          end
          def to_hash
          end

          class RecurringSchedule < Metronome::BaseModel
            sig { returns(Symbol) }
            def amount_distribution
            end

            sig { params(_: Symbol).returns(Symbol) }
            def amount_distribution=(_)
            end

            sig { returns(Time) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(Symbol) }
            def frequency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def frequency=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { returns(T.nilable(Float)) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(T.nilable(Float)) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(T.nilable(Float)) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig do
              params(
                amount_distribution: Symbol,
                ending_before: Time,
                frequency: Symbol,
                starting_at: Time,
                amount: Float,
                quantity: Float,
                unit_price: Float
              ).void
            end
            def initialize(
              amount_distribution:,
              ending_before:,
              frequency:,
              starting_at:,
              amount: nil,
              quantity: nil,
              unit_price: nil
            )
            end

            sig do
              override.returns(
                {
                  amount_distribution: Symbol,
                  ending_before: Time,
                  frequency: Symbol,
                  starting_at: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                }
              )
            end
            def to_hash
            end

            class AmountDistribution < Metronome::Enum
              abstract!

              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Frequency < Metronome::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class ScheduleItem < Metronome::BaseModel
            sig { returns(Time) }
            def timestamp
            end

            sig { params(_: Time).returns(Time) }
            def timestamp=(_)
            end

            sig { returns(T.nilable(Float)) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(T.nilable(Float)) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(T.nilable(Float)) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
            def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
            end

            sig { override.returns({timestamp: Time, amount: Float, quantity: Float, unit_price: Float}) }
            def to_hash
            end
          end
        end
      end

      class MultiplierOverridePrioritization < Metronome::Enum
        abstract!

        LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
        EXPLICIT = :EXPLICIT

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Override < Metronome::BaseModel
        sig { returns(Time) }
        def starting_at
        end

        sig { params(_: Time).returns(Time) }
        def starting_at=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def applicable_product_tags
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applicable_product_tags=(_)
        end

        sig { returns(T.nilable(Time)) }
        def ending_before
        end

        sig { params(_: Time).returns(Time) }
        def ending_before=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def entitled
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def entitled=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def is_commit_specific
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_commit_specific=(_)
        end

        sig { returns(T.nilable(Float)) }
        def multiplier
        end

        sig { params(_: Float).returns(Float) }
        def multiplier=(_)
        end

        sig do
          returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Override::OverrideSpecifier]))
        end
        def override_specifiers
        end

        sig do
          params(_: T::Array[Metronome::Models::ContractCreateParams::Override::OverrideSpecifier]).returns(T::Array[Metronome::Models::ContractCreateParams::Override::OverrideSpecifier])
        end
        def override_specifiers=(_)
        end

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::Override::OverwriteRate)) }
        def overwrite_rate
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::Override::OverwriteRate).returns(Metronome::Models::ContractCreateParams::Override::OverwriteRate)
        end
        def overwrite_rate=(_)
        end

        sig { returns(T.nilable(Float)) }
        def priority
        end

        sig { params(_: Float).returns(Float) }
        def priority=(_)
        end

        sig { returns(T.nilable(String)) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def target
        end

        sig { params(_: Symbol).returns(Symbol) }
        def target=(_)
        end

        sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Override::Tier])) }
        def tiers
        end

        sig do
          params(_: T::Array[Metronome::Models::ContractCreateParams::Override::Tier]).returns(T::Array[Metronome::Models::ContractCreateParams::Override::Tier])
        end
        def tiers=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(
            starting_at: Time,
            applicable_product_tags: T::Array[String],
            ending_before: Time,
            entitled: T::Boolean,
            is_commit_specific: T::Boolean,
            multiplier: Float,
            override_specifiers: T::Array[Metronome::Models::ContractCreateParams::Override::OverrideSpecifier],
            overwrite_rate: Metronome::Models::ContractCreateParams::Override::OverwriteRate,
            priority: Float,
            product_id: String,
            target: Symbol,
            tiers: T::Array[Metronome::Models::ContractCreateParams::Override::Tier],
            type: Symbol
          ).void
        end
        def initialize(
          starting_at:,
          applicable_product_tags: nil,
          ending_before: nil,
          entitled: nil,
          is_commit_specific: nil,
          multiplier: nil,
          override_specifiers: nil,
          overwrite_rate: nil,
          priority: nil,
          product_id: nil,
          target: nil,
          tiers: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              starting_at: Time,
              applicable_product_tags: T::Array[String],
              ending_before: Time,
              entitled: T::Boolean,
              is_commit_specific: T::Boolean,
              multiplier: Float,
              override_specifiers: T::Array[Metronome::Models::ContractCreateParams::Override::OverrideSpecifier],
              overwrite_rate: Metronome::Models::ContractCreateParams::Override::OverwriteRate,
              priority: Float,
              product_id: String,
              target: Symbol,
              tiers: T::Array[Metronome::Models::ContractCreateParams::Override::Tier],
              type: Symbol
            }
          )
        end
        def to_hash
        end

        class OverrideSpecifier < Metronome::BaseModel
          sig { returns(T.nilable(T::Array[String])) }
          def commit_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def commit_ids=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def presentation_group_values
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def presentation_group_values=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          def pricing_group_values
          end

          sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
          def pricing_group_values=(_)
          end

          sig { returns(T.nilable(String)) }
          def product_id
          end

          sig { params(_: String).returns(String) }
          def product_id=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def product_tags
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def product_tags=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def recurring_commit_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def recurring_commit_ids=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def recurring_credit_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def recurring_credit_ids=(_)
          end

          sig do
            params(
              commit_ids: T::Array[String],
              presentation_group_values: T::Hash[Symbol, String],
              pricing_group_values: T::Hash[Symbol, String],
              product_id: String,
              product_tags: T::Array[String],
              recurring_commit_ids: T::Array[String],
              recurring_credit_ids: T::Array[String]
            ).void
          end
          def initialize(
            commit_ids: nil,
            presentation_group_values: nil,
            pricing_group_values: nil,
            product_id: nil,
            product_tags: nil,
            recurring_commit_ids: nil,
            recurring_credit_ids: nil
          )
          end

          sig do
            override.returns(
              {
                commit_ids: T::Array[String],
                presentation_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String],
                recurring_commit_ids: T::Array[String],
                recurring_credit_ids: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end

        class OverwriteRate < Metronome::BaseModel
          sig { returns(Symbol) }
          def rate_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def rate_type=(_)
          end

          sig { returns(T.nilable(String)) }
          def credit_type_id
          end

          sig { params(_: String).returns(String) }
          def credit_type_id=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          def custom_rate
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def custom_rate=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def is_prorated
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_prorated=(_)
          end

          sig { returns(T.nilable(Float)) }
          def price
          end

          sig { params(_: Float).returns(Float) }
          def price=(_)
          end

          sig { returns(T.nilable(Float)) }
          def quantity
          end

          sig { params(_: Float).returns(Float) }
          def quantity=(_)
          end

          sig { returns(T.nilable(T::Array[Metronome::Models::Tier])) }
          def tiers
          end

          sig { params(_: T::Array[Metronome::Models::Tier]).returns(T::Array[Metronome::Models::Tier]) }
          def tiers=(_)
          end

          sig do
            params(
              rate_type: Symbol,
              credit_type_id: String,
              custom_rate: T::Hash[Symbol, T.anything],
              is_prorated: T::Boolean,
              price: Float,
              quantity: Float,
              tiers: T::Array[Metronome::Models::Tier]
            ).void
          end
          def initialize(
            rate_type:,
            credit_type_id: nil,
            custom_rate: nil,
            is_prorated: nil,
            price: nil,
            quantity: nil,
            tiers: nil
          )
          end

          sig do
            override.returns(
              {
                rate_type: Symbol,
                credit_type_id: String,
                custom_rate: T::Hash[Symbol, T.anything],
                is_prorated: T::Boolean,
                price: Float,
                quantity: Float,
                tiers: T::Array[Metronome::Models::Tier]
              }
            )
          end
          def to_hash
          end

          class RateType < Metronome::Enum
            abstract!

            FLAT = :FLAT
            PERCENTAGE = :PERCENTAGE
            SUBSCRIPTION = :SUBSCRIPTION
            TIERED = :TIERED
            CUSTOM = :CUSTOM

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class Target < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Tier < Metronome::BaseModel
          sig { returns(Float) }
          def multiplier
          end

          sig { params(_: Float).returns(Float) }
          def multiplier=(_)
          end

          sig { returns(T.nilable(Float)) }
          def size
          end

          sig { params(_: Float).returns(Float) }
          def size=(_)
          end

          sig { params(multiplier: Float, size: Float).void }
          def initialize(multiplier:, size: nil)
          end

          sig { override.returns({multiplier: Float, size: Float}) }
          def to_hash
          end
        end

        class Type < Metronome::Enum
          abstract!

          OVERWRITE = :OVERWRITE
          MULTIPLIER = :MULTIPLIER
          TIERED = :TIERED

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class ProfessionalService < Metronome::BaseModel
        sig { returns(Float) }
        def max_amount
        end

        sig { params(_: Float).returns(Float) }
        def max_amount=(_)
        end

        sig { returns(String) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
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

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(String)) }
        def netsuite_sales_order_id
        end

        sig { params(_: String).returns(String) }
        def netsuite_sales_order_id=(_)
        end

        sig do
          params(
            max_amount: Float,
            product_id: String,
            quantity: Float,
            unit_price: Float,
            custom_fields: T::Hash[Symbol, String],
            description: String,
            netsuite_sales_order_id: String
          ).void
        end
        def initialize(
          max_amount:,
          product_id:,
          quantity:,
          unit_price:,
          custom_fields: nil,
          description: nil,
          netsuite_sales_order_id: nil
        )
        end

        sig do
          override.returns(
            {
              max_amount: Float,
              product_id: String,
              quantity: Float,
              unit_price: Float,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              netsuite_sales_order_id: String
            }
          )
        end
        def to_hash
        end
      end

      class RecurringCommit < Metronome::BaseModel
        sig { returns(Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount) }
        def access_amount
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount).returns(Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount)
        end
        def access_amount=(_)
        end

        sig { returns(Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration) }
        def commit_duration
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration).returns(Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration)
        end
        def commit_duration=(_)
        end

        sig { returns(Float) }
        def priority
        end

        sig { params(_: Float).returns(Float) }
        def priority=(_)
        end

        sig { returns(String) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
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

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount)) }
        def invoice_amount
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount).returns(Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount)
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
        def rate_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def rate_type=(_)
        end

        sig { returns(T.nilable(Float)) }
        def rollover_fraction
        end

        sig { params(_: Float).returns(Float) }
        def rollover_fraction=(_)
        end

        sig { returns(T.nilable(String)) }
        def temporary_id
        end

        sig { params(_: String).returns(String) }
        def temporary_id=(_)
        end

        sig do
          params(
            access_amount: Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount,
            commit_duration: Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration,
            priority: Float,
            product_id: String,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            description: String,
            ending_before: Time,
            invoice_amount: Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount,
            name: String,
            netsuite_sales_order_id: String,
            rate_type: Symbol,
            rollover_fraction: Float,
            temporary_id: String
          ).void
        end
        def initialize(
          access_amount:,
          commit_duration:,
          priority:,
          product_id:,
          starting_at:,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          description: nil,
          ending_before: nil,
          invoice_amount: nil,
          name: nil,
          netsuite_sales_order_id: nil,
          rate_type: nil,
          rollover_fraction: nil,
          temporary_id: nil
        )
        end

        sig do
          override.returns(
            {
              access_amount: Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount,
              commit_duration: Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration,
              priority: Float,
              product_id: String,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              ending_before: Time,
              invoice_amount: Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount,
              name: String,
              netsuite_sales_order_id: String,
              rate_type: Symbol,
              rollover_fraction: Float,
              temporary_id: String
            }
          )
        end
        def to_hash
        end

        class AccessAmount < Metronome::BaseModel
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

        class CommitDuration < Metronome::BaseModel
          sig { returns(Symbol) }
          def unit
          end

          sig { params(_: Symbol).returns(Symbol) }
          def unit=(_)
          end

          sig { returns(Float) }
          def value
          end

          sig { params(_: Float).returns(Float) }
          def value=(_)
          end

          sig { params(unit: Symbol, value: Float).void }
          def initialize(unit:, value:)
          end

          sig { override.returns({unit: Symbol, value: Float}) }
          def to_hash
          end

          class Unit < Metronome::Enum
            abstract!

            PERIODS = :PERIODS

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class InvoiceAmount < Metronome::BaseModel
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

        class RateType < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class RecurringCredit < Metronome::BaseModel
        sig { returns(Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount) }
        def access_amount
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount).returns(Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount)
        end
        def access_amount=(_)
        end

        sig { returns(Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration) }
        def commit_duration
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration).returns(Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration)
        end
        def commit_duration=(_)
        end

        sig { returns(Float) }
        def priority
        end

        sig { params(_: Float).returns(Float) }
        def priority=(_)
        end

        sig { returns(String) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
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
        def rate_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def rate_type=(_)
        end

        sig { returns(T.nilable(Float)) }
        def rollover_fraction
        end

        sig { params(_: Float).returns(Float) }
        def rollover_fraction=(_)
        end

        sig { returns(T.nilable(String)) }
        def temporary_id
        end

        sig { params(_: String).returns(String) }
        def temporary_id=(_)
        end

        sig do
          params(
            access_amount: Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount,
            commit_duration: Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration,
            priority: Float,
            product_id: String,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            description: String,
            ending_before: Time,
            name: String,
            netsuite_sales_order_id: String,
            rate_type: Symbol,
            rollover_fraction: Float,
            temporary_id: String
          ).void
        end
        def initialize(
          access_amount:,
          commit_duration:,
          priority:,
          product_id:,
          starting_at:,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          description: nil,
          ending_before: nil,
          name: nil,
          netsuite_sales_order_id: nil,
          rate_type: nil,
          rollover_fraction: nil,
          temporary_id: nil
        )
        end

        sig do
          override.returns(
            {
              access_amount: Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount,
              commit_duration: Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration,
              priority: Float,
              product_id: String,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              description: String,
              ending_before: Time,
              name: String,
              netsuite_sales_order_id: String,
              rate_type: Symbol,
              rollover_fraction: Float,
              temporary_id: String
            }
          )
        end
        def to_hash
        end

        class AccessAmount < Metronome::BaseModel
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

        class CommitDuration < Metronome::BaseModel
          sig { returns(Symbol) }
          def unit
          end

          sig { params(_: Symbol).returns(Symbol) }
          def unit=(_)
          end

          sig { returns(Float) }
          def value
          end

          sig { params(_: Float).returns(Float) }
          def value=(_)
          end

          sig { params(unit: Symbol, value: Float).void }
          def initialize(unit:, value:)
          end

          sig { override.returns({unit: Symbol, value: Float}) }
          def to_hash
          end

          class Unit < Metronome::Enum
            abstract!

            PERIODS = :PERIODS

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class RateType < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class ResellerRoyalty < Metronome::BaseModel
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

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions)) }
        def aws_options
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions).returns(Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions)
        end
        def aws_options=(_)
        end

        sig { returns(T.nilable(Time)) }
        def ending_before
        end

        sig { params(_: Time).returns(Time) }
        def ending_before=(_)
        end

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions)) }
        def gcp_options
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions).returns(Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions)
        end
        def gcp_options=(_)
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
            aws_options: Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions,
            ending_before: Time,
            gcp_options: Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions,
            reseller_contract_value: Float
          ).void
        end
        def initialize(
          fraction:,
          netsuite_reseller_id:,
          reseller_type:,
          starting_at:,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          aws_options: nil,
          ending_before: nil,
          gcp_options: nil,
          reseller_contract_value: nil
        )
        end

        sig do
          override.returns(
            {
              fraction: Float,
              netsuite_reseller_id: String,
              reseller_type: Symbol,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              aws_options: Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions,
              ending_before: Time,
              gcp_options: Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions,
              reseller_contract_value: Float
            }
          )
        end
        def to_hash
        end

        class ResellerType < Metronome::Enum
          abstract!

          AWS = :AWS
          AWS_PRO_SERVICE = :AWS_PRO_SERVICE
          GCP = :GCP
          GCP_PRO_SERVICE = :GCP_PRO_SERVICE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class AwsOptions < Metronome::BaseModel
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

          sig do
            params(aws_account_number: String, aws_offer_id: String, aws_payer_reference_id: String).void
          end
          def initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil)
          end

          sig do
            override.returns(
              {
                aws_account_number: String,
                aws_offer_id: String,
                aws_payer_reference_id: String
              }
            )
          end
          def to_hash
          end
        end

        class GcpOptions < Metronome::BaseModel
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

          sig { params(gcp_account_id: String, gcp_offer_id: String).void }
          def initialize(gcp_account_id: nil, gcp_offer_id: nil)
          end

          sig { override.returns({gcp_account_id: String, gcp_offer_id: String}) }
          def to_hash
          end
        end
      end

      class ScheduledCharge < Metronome::BaseModel
        sig { returns(String) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
        end

        sig { returns(Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule) }
        def schedule
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule).returns(Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule)
        end
        def schedule=(_)
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

        sig do
          params(
            product_id: String,
            schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule,
            name: String,
            netsuite_sales_order_id: String
          ).void
        end
        def initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil)
        end

        sig do
          override.returns(
            {
              product_id: String,
              schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule,
              name: String,
              netsuite_sales_order_id: String
            }
          )
        end
        def to_hash
        end

        class Schedule < Metronome::BaseModel
          sig { returns(T.nilable(String)) }
          def credit_type_id
          end

          sig { params(_: String).returns(String) }
          def credit_type_id=(_)
          end

          sig do
            returns(T.nilable(Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule))
          end
          def recurring_schedule
          end

          sig do
            params(_: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule).returns(Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule)
          end
          def recurring_schedule=(_)
          end

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem]))
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem]).returns(T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem])
          end
          def schedule_items=(_)
          end

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
          end

          sig do
            override.returns(
              {
                credit_type_id: String,
                recurring_schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule,
                schedule_items: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem]
              }
            )
          end
          def to_hash
          end

          class RecurringSchedule < Metronome::BaseModel
            sig { returns(Symbol) }
            def amount_distribution
            end

            sig { params(_: Symbol).returns(Symbol) }
            def amount_distribution=(_)
            end

            sig { returns(Time) }
            def ending_before
            end

            sig { params(_: Time).returns(Time) }
            def ending_before=(_)
            end

            sig { returns(Symbol) }
            def frequency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def frequency=(_)
            end

            sig { returns(Time) }
            def starting_at
            end

            sig { params(_: Time).returns(Time) }
            def starting_at=(_)
            end

            sig { returns(T.nilable(Float)) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(T.nilable(Float)) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(T.nilable(Float)) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig do
              params(
                amount_distribution: Symbol,
                ending_before: Time,
                frequency: Symbol,
                starting_at: Time,
                amount: Float,
                quantity: Float,
                unit_price: Float
              ).void
            end
            def initialize(
              amount_distribution:,
              ending_before:,
              frequency:,
              starting_at:,
              amount: nil,
              quantity: nil,
              unit_price: nil
            )
            end

            sig do
              override.returns(
                {
                  amount_distribution: Symbol,
                  ending_before: Time,
                  frequency: Symbol,
                  starting_at: Time,
                  amount: Float,
                  quantity: Float,
                  unit_price: Float
                }
              )
            end
            def to_hash
            end

            class AmountDistribution < Metronome::Enum
              abstract!

              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Frequency < Metronome::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class ScheduleItem < Metronome::BaseModel
            sig { returns(Time) }
            def timestamp
            end

            sig { params(_: Time).returns(Time) }
            def timestamp=(_)
            end

            sig { returns(T.nilable(Float)) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(T.nilable(Float)) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(T.nilable(Float)) }
            def unit_price
            end

            sig { params(_: Float).returns(Float) }
            def unit_price=(_)
            end

            sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
            def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
            end

            sig { override.returns({timestamp: Time, amount: Float, quantity: Float, unit_price: Float}) }
            def to_hash
            end
          end
        end
      end

      class ScheduledChargesOnUsageInvoices < Metronome::Enum
        abstract!

        ALL = :ALL

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Transition < Metronome::BaseModel
        sig { returns(String) }
        def from_contract_id
        end

        sig { params(_: String).returns(String) }
        def from_contract_id=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior)) }
        def future_invoice_behavior
        end

        sig do
          params(_: Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior).returns(Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior)
        end
        def future_invoice_behavior=(_)
        end

        sig do
          params(
            from_contract_id: String,
            type: Symbol,
            future_invoice_behavior: Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior
          ).void
        end
        def initialize(from_contract_id:, type:, future_invoice_behavior: nil)
        end

        sig do
          override.returns(
            {
              from_contract_id: String,
              type: Symbol,
              future_invoice_behavior: Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior
            }
          )
        end
        def to_hash
        end

        class Type < Metronome::Enum
          abstract!

          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class FutureInvoiceBehavior < Metronome::BaseModel
          sig { returns(T.nilable(Symbol)) }
          def trueup
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def trueup=(_)
          end

          sig { params(trueup: T.nilable(Symbol)).void }
          def initialize(trueup: nil)
          end

          sig { override.returns({trueup: T.nilable(Symbol)}) }
          def to_hash
          end

          class Trueup < Metronome::Enum
            abstract!

            REMOVE = T.let(:REMOVE, T.nilable(Symbol))
            AS_IS = T.let(:AS_IS, T.nilable(Symbol))

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class UsageStatementSchedule < Metronome::BaseModel
        sig { returns(Symbol) }
        def frequency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def frequency=(_)
        end

        sig { returns(T.nilable(Time)) }
        def billing_anchor_date
        end

        sig { params(_: Time).returns(Time) }
        def billing_anchor_date=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def day
        end

        sig { params(_: Symbol).returns(Symbol) }
        def day=(_)
        end

        sig { returns(T.nilable(Time)) }
        def invoice_generation_starting_at
        end

        sig { params(_: Time).returns(Time) }
        def invoice_generation_starting_at=(_)
        end

        sig do
          params(
            frequency: Symbol,
            billing_anchor_date: Time,
            day: Symbol,
            invoice_generation_starting_at: Time
          ).void
        end
        def initialize(frequency:, billing_anchor_date: nil, day: nil, invoice_generation_starting_at: nil)
        end

        sig do
          override.returns(
            {
              frequency: Symbol,
              billing_anchor_date: Time,
              day: Symbol,
              invoice_generation_starting_at: Time
            }
          )
        end
        def to_hash
        end

        class Frequency < Metronome::Enum
          abstract!

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Day < Metronome::Enum
          abstract!

          FIRST_OF_MONTH = :FIRST_OF_MONTH
          CONTRACT_START = :CONTRACT_START
          CUSTOM_DATE = :CUSTOM_DATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
