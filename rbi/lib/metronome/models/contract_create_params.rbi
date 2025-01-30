# typed: strong

module Metronome
  module Models
    class ContractCreateParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
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
            usage_statement_schedule: Metronome::Models::ContractCreateParams::UsageStatementSchedule
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(Time) }
      attr_accessor :starting_at

      sig { returns(T.nilable(Metronome::Models::ContractCreateParams::BillingProviderConfiguration)) }
      attr_reader :billing_provider_configuration

      sig do
        params(
          billing_provider_configuration: Metronome::Models::ContractCreateParams::BillingProviderConfiguration
        ).void
      end
      attr_writer :billing_provider_configuration

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Commit])) }
      attr_reader :commits

      sig { params(commits: T::Array[Metronome::Models::ContractCreateParams::Commit]).void }
      attr_writer :commits

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Credit])) }
      attr_reader :credits

      sig { params(credits: T::Array[Metronome::Models::ContractCreateParams::Credit]).void }
      attr_writer :credits

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Discount])) }
      attr_reader :discounts

      sig { params(discounts: T::Array[Metronome::Models::ContractCreateParams::Discount]).void }
      attr_writer :discounts

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      sig { returns(T.nilable(Symbol)) }
      attr_reader :multiplier_override_prioritization

      sig { params(multiplier_override_prioritization: Symbol).void }
      attr_writer :multiplier_override_prioritization

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Float)) }
      attr_reader :net_payment_terms_days

      sig { params(net_payment_terms_days: Float).void }
      attr_writer :net_payment_terms_days

      sig { returns(T.nilable(String)) }
      attr_reader :netsuite_sales_order_id

      sig { params(netsuite_sales_order_id: String).void }
      attr_writer :netsuite_sales_order_id

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Override])) }
      attr_reader :overrides

      sig { params(overrides: T::Array[Metronome::Models::ContractCreateParams::Override]).void }
      attr_writer :overrides

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::ProfessionalService])) }
      attr_reader :professional_services

      sig do
        params(professional_services: T::Array[Metronome::Models::ContractCreateParams::ProfessionalService]).void
      end
      attr_writer :professional_services

      sig { returns(T.nilable(String)) }
      attr_reader :rate_card_alias

      sig { params(rate_card_alias: String).void }
      attr_writer :rate_card_alias

      sig { returns(T.nilable(String)) }
      attr_reader :rate_card_id

      sig { params(rate_card_id: String).void }
      attr_writer :rate_card_id

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::RecurringCommit])) }
      attr_reader :recurring_commits

      sig do
        params(recurring_commits: T::Array[Metronome::Models::ContractCreateParams::RecurringCommit]).void
      end
      attr_writer :recurring_commits

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::RecurringCredit])) }
      attr_reader :recurring_credits

      sig do
        params(recurring_credits: T::Array[Metronome::Models::ContractCreateParams::RecurringCredit]).void
      end
      attr_writer :recurring_credits

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::ResellerRoyalty])) }
      attr_reader :reseller_royalties

      sig do
        params(reseller_royalties: T::Array[Metronome::Models::ContractCreateParams::ResellerRoyalty]).void
      end
      attr_writer :reseller_royalties

      sig { returns(T.nilable(String)) }
      attr_reader :salesforce_opportunity_id

      sig { params(salesforce_opportunity_id: String).void }
      attr_writer :salesforce_opportunity_id

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge])) }
      attr_reader :scheduled_charges

      sig do
        params(scheduled_charges: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge]).void
      end
      attr_writer :scheduled_charges

      sig { returns(T.nilable(Symbol)) }
      attr_reader :scheduled_charges_on_usage_invoices

      sig { params(scheduled_charges_on_usage_invoices: Symbol).void }
      attr_writer :scheduled_charges_on_usage_invoices

      sig { returns(T.nilable(Float)) }
      attr_reader :total_contract_value

      sig { params(total_contract_value: Float).void }
      attr_writer :total_contract_value

      sig { returns(T.nilable(Metronome::Models::ContractCreateParams::Transition)) }
      attr_reader :transition

      sig { params(transition: Metronome::Models::ContractCreateParams::Transition).void }
      attr_writer :transition

      sig { returns(T.nilable(String)) }
      attr_reader :uniqueness_key

      sig { params(uniqueness_key: String).void }
      attr_writer :uniqueness_key

      sig { returns(T.nilable(Metronome::Models::BaseUsageFilter)) }
      attr_reader :usage_filter

      sig { params(usage_filter: Metronome::Models::BaseUsageFilter).void }
      attr_writer :usage_filter

      sig { returns(T.nilable(Metronome::Models::ContractCreateParams::UsageStatementSchedule)) }
      attr_reader :usage_statement_schedule

      sig do
        params(usage_statement_schedule: Metronome::Models::ContractCreateParams::UsageStatementSchedule).void
      end
      attr_writer :usage_statement_schedule

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
          request_options: Metronome::RequestOpts
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
      ); end

      sig { returns(Metronome::Models::ContractCreateParams::Shape) }
      def to_h; end

      class BillingProviderConfiguration < Metronome::BaseModel
        Shape = T.type_alias do
          {billing_provider: Symbol, billing_provider_configuration_id: String, delivery_method: Symbol}
        end

        sig { returns(T.nilable(Symbol)) }
        attr_reader :billing_provider

        sig { params(billing_provider: Symbol).void }
        attr_writer :billing_provider

        sig { returns(T.nilable(String)) }
        attr_reader :billing_provider_configuration_id

        sig { params(billing_provider_configuration_id: String).void }
        attr_writer :billing_provider_configuration_id

        sig { returns(T.nilable(Symbol)) }
        attr_reader :delivery_method

        sig { params(delivery_method: Symbol).void }
        attr_writer :delivery_method

        sig do
          params(
            billing_provider: Symbol,
            billing_provider_configuration_id: String,
            delivery_method: Symbol
          ).void
        end
        def initialize(billing_provider: nil, billing_provider_configuration_id: nil, delivery_method: nil)
        end

        sig { returns(Metronome::Models::ContractCreateParams::BillingProviderConfiguration::Shape) }
        def to_h; end

        class BillingProvider < Metronome::Enum
          abstract!

          AWS_MARKETPLACE = :aws_marketplace
          AZURE_MARKETPLACE = :azure_marketplace
          GCP_MARKETPLACE = :gcp_marketplace
          STRIPE = :stripe
          NETSUITE = :netsuite

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class DeliveryMethod < Metronome::Enum
          abstract!

          DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
          AWS_SQS = :aws_sqs
          TACKLE = :tackle
          AWS_SNS = :aws_sns

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class Commit < Metronome::BaseModel
        Shape = T.type_alias do
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
        end

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::Commit::AccessSchedule)) }
        attr_reader :access_schedule

        sig { params(access_schedule: Metronome::Models::ContractCreateParams::Commit::AccessSchedule).void }
        attr_writer :access_schedule

        sig { returns(T.nilable(Float)) }
        attr_reader :amount

        sig { params(amount: Float).void }
        attr_writer :amount

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_ids

        sig { params(applicable_product_ids: T::Array[String]).void }
        attr_writer :applicable_product_ids

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_tags

        sig { params(applicable_product_tags: T::Array[String]).void }
        attr_writer :applicable_product_tags

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule)) }
        attr_reader :invoice_schedule

        sig do
          params(invoice_schedule: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule).void
        end
        attr_writer :invoice_schedule

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        sig { returns(T.nilable(Float)) }
        attr_reader :priority

        sig { params(priority: Float).void }
        attr_writer :priority

        sig { returns(T.nilable(Symbol)) }
        attr_reader :rate_type

        sig { params(rate_type: Symbol).void }
        attr_writer :rate_type

        sig { returns(T.nilable(Float)) }
        attr_reader :rollover_fraction

        sig { params(rollover_fraction: Float).void }
        attr_writer :rollover_fraction

        sig { returns(T.nilable(String)) }
        attr_reader :temporary_id

        sig { params(temporary_id: String).void }
        attr_writer :temporary_id

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
        ); end

        sig { returns(Metronome::Models::ContractCreateParams::Commit::Shape) }
        def to_h; end

        class Type < Metronome::Enum
          abstract!

          PREPAID = :PREPAID
          POSTPAID = :POSTPAID

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class AccessSchedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            }
          end

          sig do
            returns(T::Array[Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem])
          end
          attr_accessor :schedule_items

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil); end

          sig { returns(Metronome::Models::ContractCreateParams::Commit::AccessSchedule::Shape) }
          def to_h; end

          class ScheduleItem < Metronome::BaseModel
            Shape = T.type_alias { {amount: Float, ending_before: Time, starting_at: Time} }

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :ending_before

            sig { returns(Time) }
            attr_accessor :starting_at

            sig { params(amount: Float, ending_before: Time, starting_at: Time).void }
            def initialize(amount:, ending_before:, starting_at:); end

            sig do
              returns(Metronome::Models::ContractCreateParams::Commit::AccessSchedule::ScheduleItem::Shape)
            end
            def to_h; end
          end
        end

        class InvoiceSchedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem]
            }
          end

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            returns(T.nilable(Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule))
          end
          attr_reader :recurring_schedule

          sig do
            params(
              recurring_schedule: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule
            ).void
          end
          attr_writer :recurring_schedule

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem]))
          end
          attr_reader :schedule_items

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem]
            ).void
          end
          attr_writer :schedule_items

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil); end

          sig { returns(Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::Shape) }
          def to_h; end

          class RecurringSchedule < Metronome::BaseModel
            Shape = T.type_alias do
              {
                amount_distribution: Symbol,
                ending_before: Time,
                frequency: Symbol,
                starting_at: Time,
                amount: Float,
                quantity: Float,
                unit_price: Float
              }
            end

            sig { returns(Symbol) }
            attr_accessor :amount_distribution

            sig { returns(Time) }
            attr_accessor :ending_before

            sig { returns(Symbol) }
            attr_accessor :frequency

            sig { returns(Time) }
            attr_accessor :starting_at

            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

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
            ); end

            sig do
              returns(Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::RecurringSchedule::Shape)
            end
            def to_h; end

            class AmountDistribution < Metronome::Enum
              abstract!

              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class Frequency < Metronome::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end

          class ScheduleItem < Metronome::BaseModel
            Shape = T.type_alias { {timestamp: Time, amount: Float, quantity: Float, unit_price: Float} }

            sig { returns(Time) }
            attr_accessor :timestamp

            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

            sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
            def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil); end

            sig do
              returns(Metronome::Models::ContractCreateParams::Commit::InvoiceSchedule::ScheduleItem::Shape)
            end
            def to_h; end
          end
        end

        class RateType < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class Credit < Metronome::BaseModel
        Shape = T.type_alias do
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
        end

        sig { returns(Metronome::Models::ContractCreateParams::Credit::AccessSchedule) }
        attr_accessor :access_schedule

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_ids

        sig { params(applicable_product_ids: T::Array[String]).void }
        attr_writer :applicable_product_ids

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_tags

        sig { params(applicable_product_tags: T::Array[String]).void }
        attr_writer :applicable_product_tags

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        sig { returns(T.nilable(Float)) }
        attr_reader :priority

        sig { params(priority: Float).void }
        attr_writer :priority

        sig { returns(T.nilable(Symbol)) }
        attr_reader :rate_type

        sig { params(rate_type: Symbol).void }
        attr_writer :rate_type

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
        ); end

        sig { returns(Metronome::Models::ContractCreateParams::Credit::Shape) }
        def to_h; end

        class AccessSchedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            }
          end

          sig do
            returns(T::Array[Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem])
          end
          attr_accessor :schedule_items

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil); end

          sig { returns(Metronome::Models::ContractCreateParams::Credit::AccessSchedule::Shape) }
          def to_h; end

          class ScheduleItem < Metronome::BaseModel
            Shape = T.type_alias { {amount: Float, ending_before: Time, starting_at: Time} }

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :ending_before

            sig { returns(Time) }
            attr_accessor :starting_at

            sig { params(amount: Float, ending_before: Time, starting_at: Time).void }
            def initialize(amount:, ending_before:, starting_at:); end

            sig do
              returns(Metronome::Models::ContractCreateParams::Credit::AccessSchedule::ScheduleItem::Shape)
            end
            def to_h; end
          end
        end

        class RateType < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class Discount < Metronome::BaseModel
        Shape = T.type_alias do
          {
            product_id: String,
            schedule: Metronome::Models::ContractCreateParams::Discount::Schedule,
            custom_fields: T::Hash[Symbol, String],
            name: String,
            netsuite_sales_order_id: String
          }
        end

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Metronome::Models::ContractCreateParams::Discount::Schedule) }
        attr_accessor :schedule

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

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

        sig { returns(Metronome::Models::ContractCreateParams::Discount::Shape) }
        def to_h; end

        class Schedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem]
            }
          end

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            returns(T.nilable(Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule))
          end
          attr_reader :recurring_schedule

          sig do
            params(recurring_schedule: Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule).void
          end
          attr_writer :recurring_schedule

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem]))
          end
          attr_reader :schedule_items

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem]
            ).void
          end
          attr_writer :schedule_items

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil); end

          sig { returns(Metronome::Models::ContractCreateParams::Discount::Schedule::Shape) }
          def to_h; end

          class RecurringSchedule < Metronome::BaseModel
            Shape = T.type_alias do
              {
                amount_distribution: Symbol,
                ending_before: Time,
                frequency: Symbol,
                starting_at: Time,
                amount: Float,
                quantity: Float,
                unit_price: Float
              }
            end

            sig { returns(Symbol) }
            attr_accessor :amount_distribution

            sig { returns(Time) }
            attr_accessor :ending_before

            sig { returns(Symbol) }
            attr_accessor :frequency

            sig { returns(Time) }
            attr_accessor :starting_at

            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

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
            ); end

            sig do
              returns(Metronome::Models::ContractCreateParams::Discount::Schedule::RecurringSchedule::Shape)
            end
            def to_h; end

            class AmountDistribution < Metronome::Enum
              abstract!

              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class Frequency < Metronome::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end

          class ScheduleItem < Metronome::BaseModel
            Shape = T.type_alias { {timestamp: Time, amount: Float, quantity: Float, unit_price: Float} }

            sig { returns(Time) }
            attr_accessor :timestamp

            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

            sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
            def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil); end

            sig { returns(Metronome::Models::ContractCreateParams::Discount::Schedule::ScheduleItem::Shape) }
            def to_h; end
          end
        end
      end

      class MultiplierOverridePrioritization < Metronome::Enum
        abstract!

        LOWEST_MULTIPLIER = :LOWEST_MULTIPLIER
        EXPLICIT = :EXPLICIT

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Override < Metronome::BaseModel
        Shape = T.type_alias do
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
        end

        sig { returns(Time) }
        attr_accessor :starting_at

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_product_tags

        sig { params(applicable_product_tags: T::Array[String]).void }
        attr_writer :applicable_product_tags

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :entitled

        sig { params(entitled: T::Boolean).void }
        attr_writer :entitled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_commit_specific

        sig { params(is_commit_specific: T::Boolean).void }
        attr_writer :is_commit_specific

        sig { returns(T.nilable(Float)) }
        attr_reader :multiplier

        sig { params(multiplier: Float).void }
        attr_writer :multiplier

        sig do
          returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Override::OverrideSpecifier]))
        end
        attr_reader :override_specifiers

        sig do
          params(
            override_specifiers: T::Array[Metronome::Models::ContractCreateParams::Override::OverrideSpecifier]
          ).void
        end
        attr_writer :override_specifiers

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::Override::OverwriteRate)) }
        attr_reader :overwrite_rate

        sig { params(overwrite_rate: Metronome::Models::ContractCreateParams::Override::OverwriteRate).void }
        attr_writer :overwrite_rate

        sig { returns(T.nilable(Float)) }
        attr_reader :priority

        sig { params(priority: Float).void }
        attr_writer :priority

        sig { returns(T.nilable(String)) }
        attr_reader :product_id

        sig { params(product_id: String).void }
        attr_writer :product_id

        sig { returns(T.nilable(Symbol)) }
        attr_reader :target

        sig { params(target: Symbol).void }
        attr_writer :target

        sig { returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::Override::Tier])) }
        attr_reader :tiers

        sig { params(tiers: T::Array[Metronome::Models::ContractCreateParams::Override::Tier]).void }
        attr_writer :tiers

        sig { returns(T.nilable(Symbol)) }
        attr_reader :type

        sig { params(type: Symbol).void }
        attr_writer :type

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
        ); end

        sig { returns(Metronome::Models::ContractCreateParams::Override::Shape) }
        def to_h; end

        class OverrideSpecifier < Metronome::BaseModel
          Shape = T.type_alias do
            {
              commit_ids: T::Array[String],
              presentation_group_values: T::Hash[Symbol, String],
              pricing_group_values: T::Hash[Symbol, String],
              product_id: String,
              product_tags: T::Array[String],
              recurring_commit_ids: T::Array[String],
              recurring_credit_ids: T::Array[String]
            }
          end

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :commit_ids

          sig { params(commit_ids: T::Array[String]).void }
          attr_writer :commit_ids

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :presentation_group_values

          sig { params(presentation_group_values: T::Hash[Symbol, String]).void }
          attr_writer :presentation_group_values

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :pricing_group_values

          sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
          attr_writer :pricing_group_values

          sig { returns(T.nilable(String)) }
          attr_reader :product_id

          sig { params(product_id: String).void }
          attr_writer :product_id

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :product_tags

          sig { params(product_tags: T::Array[String]).void }
          attr_writer :product_tags

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :recurring_commit_ids

          sig { params(recurring_commit_ids: T::Array[String]).void }
          attr_writer :recurring_commit_ids

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :recurring_credit_ids

          sig { params(recurring_credit_ids: T::Array[String]).void }
          attr_writer :recurring_credit_ids

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
          ); end

          sig { returns(Metronome::Models::ContractCreateParams::Override::OverrideSpecifier::Shape) }
          def to_h; end
        end

        class OverwriteRate < Metronome::BaseModel
          Shape = T.type_alias do
            {
              rate_type: Symbol,
              credit_type_id: String,
              custom_rate: T::Hash[Symbol, T.anything],
              is_prorated: T::Boolean,
              price: Float,
              quantity: Float,
              tiers: T::Array[Metronome::Models::Tier]
            }
          end

          sig { returns(Symbol) }
          attr_accessor :rate_type

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :custom_rate

          sig { params(custom_rate: T::Hash[Symbol, T.anything]).void }
          attr_writer :custom_rate

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_prorated

          sig { params(is_prorated: T::Boolean).void }
          attr_writer :is_prorated

          sig { returns(T.nilable(Float)) }
          attr_reader :price

          sig { params(price: Float).void }
          attr_writer :price

          sig { returns(T.nilable(Float)) }
          attr_reader :quantity

          sig { params(quantity: Float).void }
          attr_writer :quantity

          sig { returns(T.nilable(T::Array[Metronome::Models::Tier])) }
          attr_reader :tiers

          sig { params(tiers: T::Array[Metronome::Models::Tier]).void }
          attr_writer :tiers

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

          sig { returns(Metronome::Models::ContractCreateParams::Override::OverwriteRate::Shape) }
          def to_h; end

          class RateType < Metronome::Enum
            abstract!

            FLAT = :FLAT
            PERCENTAGE = :PERCENTAGE
            SUBSCRIPTION = :SUBSCRIPTION
            TIERED = :TIERED
            CUSTOM = :CUSTOM

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class Target < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Tier < Metronome::BaseModel
          Shape = T.type_alias { {multiplier: Float, size: Float} }

          sig { returns(Float) }
          attr_accessor :multiplier

          sig { returns(T.nilable(Float)) }
          attr_reader :size

          sig { params(size: Float).void }
          attr_writer :size

          sig { params(multiplier: Float, size: Float).void }
          def initialize(multiplier:, size: nil); end

          sig { returns(Metronome::Models::ContractCreateParams::Override::Tier::Shape) }
          def to_h; end
        end

        class Type < Metronome::Enum
          abstract!

          OVERWRITE = :OVERWRITE
          MULTIPLIER = :MULTIPLIER
          TIERED = :TIERED

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class ProfessionalService < Metronome::BaseModel
        Shape = T.type_alias do
          {
            max_amount: Float,
            product_id: String,
            quantity: Float,
            unit_price: Float,
            custom_fields: T::Hash[Symbol, String],
            description: String,
            netsuite_sales_order_id: String
          }
        end

        sig { returns(Float) }
        attr_accessor :max_amount

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Float) }
        attr_accessor :quantity

        sig { returns(Float) }
        attr_accessor :unit_price

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

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
        ); end

        sig { returns(Metronome::Models::ContractCreateParams::ProfessionalService::Shape) }
        def to_h; end
      end

      class RecurringCommit < Metronome::BaseModel
        Shape = T.type_alias do
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
        end

        sig { returns(Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount) }
        attr_accessor :access_amount

        sig { returns(Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration) }
        attr_accessor :commit_duration

        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(String) }
        attr_accessor :product_id

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
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount)) }
        attr_reader :invoice_amount

        sig do
          params(invoice_amount: Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount).void
        end
        attr_writer :invoice_amount

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        sig { returns(T.nilable(Symbol)) }
        attr_reader :rate_type

        sig { params(rate_type: Symbol).void }
        attr_writer :rate_type

        sig { returns(T.nilable(Float)) }
        attr_reader :rollover_fraction

        sig { params(rollover_fraction: Float).void }
        attr_writer :rollover_fraction

        sig { returns(T.nilable(String)) }
        attr_reader :temporary_id

        sig { params(temporary_id: String).void }
        attr_writer :temporary_id

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
        ); end

        sig { returns(Metronome::Models::ContractCreateParams::RecurringCommit::Shape) }
        def to_h; end

        class AccessAmount < Metronome::BaseModel
          Shape = T.type_alias { {credit_type_id: String, quantity: Float, unit_price: Float} }

          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Float) }
          attr_accessor :unit_price

          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
          def initialize(credit_type_id:, quantity:, unit_price:); end

          sig { returns(Metronome::Models::ContractCreateParams::RecurringCommit::AccessAmount::Shape) }
          def to_h; end
        end

        class CommitDuration < Metronome::BaseModel
          Shape = T.type_alias { {unit: Symbol, value: Float} }

          sig { returns(Symbol) }
          attr_accessor :unit

          sig { returns(Float) }
          attr_accessor :value

          sig { params(unit: Symbol, value: Float).void }
          def initialize(unit:, value:); end

          sig { returns(Metronome::Models::ContractCreateParams::RecurringCommit::CommitDuration::Shape) }
          def to_h; end

          class Unit < Metronome::Enum
            abstract!

            PERIODS = :PERIODS

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class InvoiceAmount < Metronome::BaseModel
          Shape = T.type_alias { {credit_type_id: String, quantity: Float, unit_price: Float} }

          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Float) }
          attr_accessor :unit_price

          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
          def initialize(credit_type_id:, quantity:, unit_price:); end

          sig { returns(Metronome::Models::ContractCreateParams::RecurringCommit::InvoiceAmount::Shape) }
          def to_h; end
        end

        class RateType < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class RecurringCredit < Metronome::BaseModel
        Shape = T.type_alias do
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
            invoice_amount: Metronome::Models::ContractCreateParams::RecurringCredit::InvoiceAmount,
            name: String,
            netsuite_sales_order_id: String,
            rate_type: Symbol,
            rollover_fraction: Float,
            temporary_id: String
          }
        end

        sig { returns(Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount) }
        attr_accessor :access_amount

        sig { returns(Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration) }
        attr_accessor :commit_duration

        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(String) }
        attr_accessor :product_id

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
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::RecurringCredit::InvoiceAmount)) }
        attr_reader :invoice_amount

        sig do
          params(invoice_amount: Metronome::Models::ContractCreateParams::RecurringCredit::InvoiceAmount).void
        end
        attr_writer :invoice_amount

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        sig { returns(T.nilable(Symbol)) }
        attr_reader :rate_type

        sig { params(rate_type: Symbol).void }
        attr_writer :rate_type

        sig { returns(T.nilable(Float)) }
        attr_reader :rollover_fraction

        sig { params(rollover_fraction: Float).void }
        attr_writer :rollover_fraction

        sig { returns(T.nilable(String)) }
        attr_reader :temporary_id

        sig { params(temporary_id: String).void }
        attr_writer :temporary_id

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
            invoice_amount: Metronome::Models::ContractCreateParams::RecurringCredit::InvoiceAmount,
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
        ); end

        sig { returns(Metronome::Models::ContractCreateParams::RecurringCredit::Shape) }
        def to_h; end

        class AccessAmount < Metronome::BaseModel
          Shape = T.type_alias { {credit_type_id: String, quantity: Float, unit_price: Float} }

          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Float) }
          attr_accessor :unit_price

          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
          def initialize(credit_type_id:, quantity:, unit_price:); end

          sig { returns(Metronome::Models::ContractCreateParams::RecurringCredit::AccessAmount::Shape) }
          def to_h; end
        end

        class CommitDuration < Metronome::BaseModel
          Shape = T.type_alias { {unit: Symbol, value: Float} }

          sig { returns(Symbol) }
          attr_accessor :unit

          sig { returns(Float) }
          attr_accessor :value

          sig { params(unit: Symbol, value: Float).void }
          def initialize(unit:, value:); end

          sig { returns(Metronome::Models::ContractCreateParams::RecurringCredit::CommitDuration::Shape) }
          def to_h; end

          class Unit < Metronome::Enum
            abstract!

            PERIODS = :PERIODS

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class InvoiceAmount < Metronome::BaseModel
          Shape = T.type_alias { {credit_type_id: String, quantity: Float, unit_price: Float} }

          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Float) }
          attr_accessor :unit_price

          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
          def initialize(credit_type_id:, quantity:, unit_price:); end

          sig { returns(Metronome::Models::ContractCreateParams::RecurringCredit::InvoiceAmount::Shape) }
          def to_h; end
        end

        class RateType < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class ResellerRoyalty < Metronome::BaseModel
        Shape = T.type_alias do
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
        end

        sig { returns(Float) }
        attr_accessor :fraction

        sig { returns(String) }
        attr_accessor :netsuite_reseller_id

        sig { returns(Symbol) }
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

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions)) }
        attr_reader :aws_options

        sig { params(aws_options: Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions).void }
        attr_writer :aws_options

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions)) }
        attr_reader :gcp_options

        sig { params(gcp_options: Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions).void }
        attr_writer :gcp_options

        sig { returns(T.nilable(Float)) }
        attr_reader :reseller_contract_value

        sig { params(reseller_contract_value: Float).void }
        attr_writer :reseller_contract_value

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
        ); end

        sig { returns(Metronome::Models::ContractCreateParams::ResellerRoyalty::Shape) }
        def to_h; end

        class ResellerType < Metronome::Enum
          abstract!

          AWS = :AWS
          AWS_PRO_SERVICE = :AWS_PRO_SERVICE
          GCP = :GCP
          GCP_PRO_SERVICE = :GCP_PRO_SERVICE

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class AwsOptions < Metronome::BaseModel
          Shape = T.type_alias do
            {aws_account_number: String, aws_offer_id: String, aws_payer_reference_id: String}
          end

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

          sig do
            params(aws_account_number: String, aws_offer_id: String, aws_payer_reference_id: String).void
          end
          def initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil); end

          sig { returns(Metronome::Models::ContractCreateParams::ResellerRoyalty::AwsOptions::Shape) }
          def to_h; end
        end

        class GcpOptions < Metronome::BaseModel
          Shape = T.type_alias { {gcp_account_id: String, gcp_offer_id: String} }

          sig { returns(T.nilable(String)) }
          attr_reader :gcp_account_id

          sig { params(gcp_account_id: String).void }
          attr_writer :gcp_account_id

          sig { returns(T.nilable(String)) }
          attr_reader :gcp_offer_id

          sig { params(gcp_offer_id: String).void }
          attr_writer :gcp_offer_id

          sig { params(gcp_account_id: String, gcp_offer_id: String).void }
          def initialize(gcp_account_id: nil, gcp_offer_id: nil); end

          sig { returns(Metronome::Models::ContractCreateParams::ResellerRoyalty::GcpOptions::Shape) }
          def to_h; end
        end
      end

      class ScheduledCharge < Metronome::BaseModel
        Shape = T.type_alias do
          {
            product_id: String,
            schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule,
            name: String,
            netsuite_sales_order_id: String
          }
        end

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule) }
        attr_accessor :schedule

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        sig do
          params(
            product_id: String,
            schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule,
            name: String,
            netsuite_sales_order_id: String
          ).void
        end
        def initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil); end

        sig { returns(Metronome::Models::ContractCreateParams::ScheduledCharge::Shape) }
        def to_h; end

        class Schedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem]
            }
          end

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            returns(T.nilable(Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule))
          end
          attr_reader :recurring_schedule

          sig do
            params(
              recurring_schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule
            ).void
          end
          attr_writer :recurring_schedule

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem]))
          end
          attr_reader :schedule_items

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem]
            ).void
          end
          attr_writer :schedule_items

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil); end

          sig { returns(Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::Shape) }
          def to_h; end

          class RecurringSchedule < Metronome::BaseModel
            Shape = T.type_alias do
              {
                amount_distribution: Symbol,
                ending_before: Time,
                frequency: Symbol,
                starting_at: Time,
                amount: Float,
                quantity: Float,
                unit_price: Float
              }
            end

            sig { returns(Symbol) }
            attr_accessor :amount_distribution

            sig { returns(Time) }
            attr_accessor :ending_before

            sig { returns(Symbol) }
            attr_accessor :frequency

            sig { returns(Time) }
            attr_accessor :starting_at

            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

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
            ); end

            sig do
              returns(Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::RecurringSchedule::Shape)
            end
            def to_h; end

            class AmountDistribution < Metronome::Enum
              abstract!

              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class Frequency < Metronome::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end

          class ScheduleItem < Metronome::BaseModel
            Shape = T.type_alias { {timestamp: Time, amount: Float, quantity: Float, unit_price: Float} }

            sig { returns(Time) }
            attr_accessor :timestamp

            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            sig { returns(T.nilable(Float)) }
            attr_reader :quantity

            sig { params(quantity: Float).void }
            attr_writer :quantity

            sig { returns(T.nilable(Float)) }
            attr_reader :unit_price

            sig { params(unit_price: Float).void }
            attr_writer :unit_price

            sig { params(timestamp: Time, amount: Float, quantity: Float, unit_price: Float).void }
            def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil); end

            sig do
              returns(Metronome::Models::ContractCreateParams::ScheduledCharge::Schedule::ScheduleItem::Shape)
            end
            def to_h; end
          end
        end
      end

      class ScheduledChargesOnUsageInvoices < Metronome::Enum
        abstract!

        ALL = :ALL

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Transition < Metronome::BaseModel
        Shape = T.type_alias do
          {
            from_contract_id: String,
            type: Symbol,
            future_invoice_behavior: Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior
          }
        end

        sig { returns(String) }
        attr_accessor :from_contract_id

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior)) }
        attr_reader :future_invoice_behavior

        sig do
          params(
            future_invoice_behavior: Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior
          ).void
        end
        attr_writer :future_invoice_behavior

        sig do
          params(
            from_contract_id: String,
            type: Symbol,
            future_invoice_behavior: Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior
          ).void
        end
        def initialize(from_contract_id:, type:, future_invoice_behavior: nil); end

        sig { returns(Metronome::Models::ContractCreateParams::Transition::Shape) }
        def to_h; end

        class Type < Metronome::Enum
          abstract!

          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class FutureInvoiceBehavior < Metronome::BaseModel
          Shape = T.type_alias { {trueup: T.nilable(Symbol)} }

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :trueup

          sig { params(trueup: T.nilable(Symbol)).void }
          def initialize(trueup: nil); end

          sig { returns(Metronome::Models::ContractCreateParams::Transition::FutureInvoiceBehavior::Shape) }
          def to_h; end

          class Trueup < Metronome::Enum
            abstract!

            REMOVE = T.let(:REMOVE, T.nilable(Symbol))
            AS_IS = T.let(:AS_IS, T.nilable(Symbol))

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end
      end

      class UsageStatementSchedule < Metronome::BaseModel
        Shape = T.type_alias do
          {frequency: Symbol, billing_anchor_date: Time, day: Symbol, invoice_generation_starting_at: Time}
        end

        sig { returns(Symbol) }
        attr_accessor :frequency

        sig { returns(T.nilable(Time)) }
        attr_reader :billing_anchor_date

        sig { params(billing_anchor_date: Time).void }
        attr_writer :billing_anchor_date

        sig { returns(T.nilable(Symbol)) }
        attr_reader :day

        sig { params(day: Symbol).void }
        attr_writer :day

        sig { returns(T.nilable(Time)) }
        attr_reader :invoice_generation_starting_at

        sig { params(invoice_generation_starting_at: Time).void }
        attr_writer :invoice_generation_starting_at

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

        sig { returns(Metronome::Models::ContractCreateParams::UsageStatementSchedule::Shape) }
        def to_h; end

        class Frequency < Metronome::Enum
          abstract!

          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Day < Metronome::Enum
          abstract!

          FIRST_OF_MONTH = :FIRST_OF_MONTH
          CONTRACT_START = :CONTRACT_START
          CUSTOM_DATE = :CUSTOM_DATE

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
