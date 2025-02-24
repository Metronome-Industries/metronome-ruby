# typed: strong

module Metronome
  module Models
    class ContractWithoutAmendments < Metronome::BaseModel
      sig { returns(T::Array[Metronome::Models::Commit]) }
      attr_accessor :commits

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :created_by

      sig { returns(T::Array[Metronome::Models::Override]) }
      attr_accessor :overrides

      sig { returns(T::Array[Metronome::Models::ScheduledCharge]) }
      attr_accessor :scheduled_charges

      sig { returns(Time) }
      attr_accessor :starting_at

      sig { returns(T::Array[Metronome::Models::ContractWithoutAmendments::Transition]) }
      attr_accessor :transitions

      sig { returns(Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule) }
      attr_accessor :usage_statement_schedule

      sig { returns(T.nilable(T::Array[Metronome::Models::Credit])) }
      attr_reader :credits

      sig { params(credits: T::Array[Metronome::Models::Credit]).void }
      attr_writer :credits

      sig { returns(T.nilable(T::Array[Metronome::Models::Discount])) }
      attr_reader :discounts

      sig { params(discounts: T::Array[Metronome::Models::Discount]).void }
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

      sig { returns(T.nilable(String)) }
      attr_reader :netsuite_sales_order_id

      sig { params(netsuite_sales_order_id: String).void }
      attr_writer :netsuite_sales_order_id

      sig { returns(T.nilable(T::Array[Metronome::Models::ProService])) }
      attr_reader :professional_services

      sig { params(professional_services: T::Array[Metronome::Models::ProService]).void }
      attr_writer :professional_services

      sig { returns(T.nilable(String)) }
      attr_reader :rate_card_id

      sig { params(rate_card_id: String).void }
      attr_writer :rate_card_id

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractWithoutAmendments::RecurringCommit])) }
      attr_reader :recurring_commits

      sig do
        params(recurring_commits: T::Array[Metronome::Models::ContractWithoutAmendments::RecurringCommit]).void
      end
      attr_writer :recurring_commits

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractWithoutAmendments::RecurringCredit])) }
      attr_reader :recurring_credits

      sig do
        params(recurring_credits: T::Array[Metronome::Models::ContractWithoutAmendments::RecurringCredit]).void
      end
      attr_writer :recurring_credits

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractWithoutAmendments::ResellerRoyalty])) }
      attr_reader :reseller_royalties

      sig do
        params(reseller_royalties: T::Array[Metronome::Models::ContractWithoutAmendments::ResellerRoyalty]).void
      end
      attr_writer :reseller_royalties

      sig { returns(T.nilable(String)) }
      attr_reader :salesforce_opportunity_id

      sig { params(salesforce_opportunity_id: String).void }
      attr_writer :salesforce_opportunity_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :scheduled_charges_on_usage_invoices

      sig { params(scheduled_charges_on_usage_invoices: Symbol).void }
      attr_writer :scheduled_charges_on_usage_invoices

      sig { returns(T.nilable(Float)) }
      attr_reader :total_contract_value

      sig { params(total_contract_value: Float).void }
      attr_writer :total_contract_value

      sig { returns(T.nilable(Metronome::Models::ContractWithoutAmendments::UsageFilter)) }
      attr_reader :usage_filter

      sig { params(usage_filter: Metronome::Models::ContractWithoutAmendments::UsageFilter).void }
      attr_writer :usage_filter

      sig do
        params(
          commits: T::Array[Metronome::Models::Commit],
          created_at: Time,
          created_by: String,
          overrides: T::Array[Metronome::Models::Override],
          scheduled_charges: T::Array[Metronome::Models::ScheduledCharge],
          starting_at: Time,
          transitions: T::Array[Metronome::Models::ContractWithoutAmendments::Transition],
          usage_statement_schedule: Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule,
          credits: T::Array[Metronome::Models::Credit],
          discounts: T::Array[Metronome::Models::Discount],
          ending_before: Time,
          name: String,
          net_payment_terms_days: Float,
          netsuite_sales_order_id: String,
          professional_services: T::Array[Metronome::Models::ProService],
          rate_card_id: String,
          recurring_commits: T::Array[Metronome::Models::ContractWithoutAmendments::RecurringCommit],
          recurring_credits: T::Array[Metronome::Models::ContractWithoutAmendments::RecurringCredit],
          reseller_royalties: T::Array[Metronome::Models::ContractWithoutAmendments::ResellerRoyalty],
          salesforce_opportunity_id: String,
          scheduled_charges_on_usage_invoices: Symbol,
          total_contract_value: Float,
          usage_filter: Metronome::Models::ContractWithoutAmendments::UsageFilter
        ).void
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
        total_contract_value: nil,
        usage_filter: nil
      )
      end

      sig do
        override.returns(
          {
            commits: T::Array[Metronome::Models::Commit],
            created_at: Time,
            created_by: String,
            overrides: T::Array[Metronome::Models::Override],
            scheduled_charges: T::Array[Metronome::Models::ScheduledCharge],
            starting_at: Time,
            transitions: T::Array[Metronome::Models::ContractWithoutAmendments::Transition],
            usage_statement_schedule: Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule,
            credits: T::Array[Metronome::Models::Credit],
            discounts: T::Array[Metronome::Models::Discount],
            ending_before: Time,
            name: String,
            net_payment_terms_days: Float,
            netsuite_sales_order_id: String,
            professional_services: T::Array[Metronome::Models::ProService],
            rate_card_id: String,
            recurring_commits: T::Array[Metronome::Models::ContractWithoutAmendments::RecurringCommit],
            recurring_credits: T::Array[Metronome::Models::ContractWithoutAmendments::RecurringCredit],
            reseller_royalties: T::Array[Metronome::Models::ContractWithoutAmendments::ResellerRoyalty],
            salesforce_opportunity_id: String,
            scheduled_charges_on_usage_invoices: Symbol,
            total_contract_value: Float,
            usage_filter: Metronome::Models::ContractWithoutAmendments::UsageFilter
          }
        )
      end
      def to_hash
      end

      class Transition < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :from_contract_id

        sig { returns(String) }
        attr_accessor :to_contract_id

        sig { returns(Symbol) }
        attr_accessor :type

        sig { params(from_contract_id: String, to_contract_id: String, type: Symbol).void }
        def initialize(from_contract_id:, to_contract_id:, type:)
        end

        sig { override.returns({from_contract_id: String, to_contract_id: String, type: Symbol}) }
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
      end

      class UsageStatementSchedule < Metronome::BaseModel
        sig { returns(Time) }
        attr_accessor :billing_anchor_date

        sig { returns(Symbol) }
        attr_accessor :frequency

        sig { params(billing_anchor_date: Time, frequency: Symbol).void }
        def initialize(billing_anchor_date:, frequency:)
        end

        sig { override.returns({billing_anchor_date: Time, frequency: Symbol}) }
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
      end

      class RecurringCommit < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Metronome::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount) }
        attr_accessor :access_amount

        sig { returns(Metronome::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration) }
        attr_accessor :commit_duration

        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(Metronome::Models::ContractWithoutAmendments::RecurringCommit::Product) }
        attr_accessor :product

        sig { returns(Symbol) }
        attr_accessor :rate_type

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

        sig { returns(T.nilable(Metronome::Models::ContractWithoutAmendments::RecurringCommit::Contract)) }
        attr_reader :contract

        sig { params(contract: Metronome::Models::ContractWithoutAmendments::RecurringCommit::Contract).void }
        attr_writer :contract

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig do
          returns(T.nilable(Metronome::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount))
        end
        attr_reader :invoice_amount

        sig do
          params(invoice_amount: Metronome::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount).void
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

        sig { returns(T.nilable(Float)) }
        attr_reader :rollover_fraction

        sig { params(rollover_fraction: Float).void }
        attr_writer :rollover_fraction

        sig do
          params(
            id: String,
            access_amount: Metronome::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount,
            commit_duration: Metronome::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration,
            priority: Float,
            product: Metronome::Models::ContractWithoutAmendments::RecurringCommit::Product,
            rate_type: Symbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            contract: Metronome::Models::ContractWithoutAmendments::RecurringCommit::Contract,
            description: String,
            ending_before: Time,
            invoice_amount: Metronome::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount,
            name: String,
            netsuite_sales_order_id: String,
            rollover_fraction: Float
          ).void
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
          rollover_fraction: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              access_amount: Metronome::Models::ContractWithoutAmendments::RecurringCommit::AccessAmount,
              commit_duration: Metronome::Models::ContractWithoutAmendments::RecurringCommit::CommitDuration,
              priority: Float,
              product: Metronome::Models::ContractWithoutAmendments::RecurringCommit::Product,
              rate_type: Symbol,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              contract: Metronome::Models::ContractWithoutAmendments::RecurringCommit::Contract,
              description: String,
              ending_before: Time,
              invoice_amount: Metronome::Models::ContractWithoutAmendments::RecurringCommit::InvoiceAmount,
              name: String,
              netsuite_sales_order_id: String,
              rollover_fraction: Float
            }
          )
        end
        def to_hash
        end

        class AccessAmount < Metronome::BaseModel
          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Float) }
          attr_accessor :unit_price

          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
          def initialize(credit_type_id:, quantity:, unit_price:)
          end

          sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
          def to_hash
          end
        end

        class CommitDuration < Metronome::BaseModel
          sig { returns(Float) }
          attr_accessor :value

          sig { returns(T.nilable(Symbol)) }
          attr_reader :unit

          sig { params(unit: Symbol).void }
          attr_writer :unit

          sig { params(value: Float, unit: Symbol).void }
          def initialize(value:, unit: nil)
          end

          sig { override.returns({value: Float, unit: Symbol}) }
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

        class Product < Metronome::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
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

        class Contract < Metronome::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class InvoiceAmount < Metronome::BaseModel
          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Float) }
          attr_accessor :unit_price

          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
          def initialize(credit_type_id:, quantity:, unit_price:)
          end

          sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
          def to_hash
          end
        end
      end

      class RecurringCredit < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Metronome::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount) }
        attr_accessor :access_amount

        sig { returns(Metronome::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration) }
        attr_accessor :commit_duration

        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(Metronome::Models::ContractWithoutAmendments::RecurringCredit::Product) }
        attr_accessor :product

        sig { returns(Symbol) }
        attr_accessor :rate_type

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

        sig { returns(T.nilable(Metronome::Models::ContractWithoutAmendments::RecurringCredit::Contract)) }
        attr_reader :contract

        sig { params(contract: Metronome::Models::ContractWithoutAmendments::RecurringCredit::Contract).void }
        attr_writer :contract

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_sales_order_id

        sig { params(netsuite_sales_order_id: String).void }
        attr_writer :netsuite_sales_order_id

        sig { returns(T.nilable(Float)) }
        attr_reader :rollover_fraction

        sig { params(rollover_fraction: Float).void }
        attr_writer :rollover_fraction

        sig do
          params(
            id: String,
            access_amount: Metronome::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount,
            commit_duration: Metronome::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration,
            priority: Float,
            product: Metronome::Models::ContractWithoutAmendments::RecurringCredit::Product,
            rate_type: Symbol,
            starting_at: Time,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            contract: Metronome::Models::ContractWithoutAmendments::RecurringCredit::Contract,
            description: String,
            ending_before: Time,
            name: String,
            netsuite_sales_order_id: String,
            rollover_fraction: Float
          ).void
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
          rollover_fraction: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              access_amount: Metronome::Models::ContractWithoutAmendments::RecurringCredit::AccessAmount,
              commit_duration: Metronome::Models::ContractWithoutAmendments::RecurringCredit::CommitDuration,
              priority: Float,
              product: Metronome::Models::ContractWithoutAmendments::RecurringCredit::Product,
              rate_type: Symbol,
              starting_at: Time,
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              contract: Metronome::Models::ContractWithoutAmendments::RecurringCredit::Contract,
              description: String,
              ending_before: Time,
              name: String,
              netsuite_sales_order_id: String,
              rollover_fraction: Float
            }
          )
        end
        def to_hash
        end

        class AccessAmount < Metronome::BaseModel
          sig { returns(String) }
          attr_accessor :credit_type_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Float) }
          attr_accessor :unit_price

          sig { params(credit_type_id: String, quantity: Float, unit_price: Float).void }
          def initialize(credit_type_id:, quantity:, unit_price:)
          end

          sig { override.returns({credit_type_id: String, quantity: Float, unit_price: Float}) }
          def to_hash
          end
        end

        class CommitDuration < Metronome::BaseModel
          sig { returns(Float) }
          attr_accessor :value

          sig { returns(T.nilable(Symbol)) }
          attr_reader :unit

          sig { params(unit: Symbol).void }
          attr_writer :unit

          sig { params(value: Float, unit: Symbol).void }
          def initialize(value:, unit: nil)
          end

          sig { override.returns({value: Float, unit: Symbol}) }
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

        class Product < Metronome::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
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

        class Contract < Metronome::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end
      end

      class ResellerRoyalty < Metronome::BaseModel
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
          ).void
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
          override.returns(
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
      end

      class ScheduledChargesOnUsageInvoices < Metronome::Enum
        abstract!

        ALL = :ALL

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class UsageFilter < Metronome::BaseModel
        sig { returns(T.nilable(Metronome::Models::BaseUsageFilter)) }
        attr_accessor :current

        sig { returns(Metronome::Models::BaseUsageFilter) }
        attr_accessor :initial

        sig { returns(T::Array[Metronome::Models::ContractWithoutAmendments::UsageFilter::Update]) }
        attr_accessor :updates

        sig do
          params(
            current: T.nilable(Metronome::Models::BaseUsageFilter),
            initial: Metronome::Models::BaseUsageFilter,
            updates: T::Array[Metronome::Models::ContractWithoutAmendments::UsageFilter::Update]
          ).void
        end
        def initialize(current:, initial:, updates:)
        end

        sig do
          override.returns(
            {
              current: T.nilable(Metronome::Models::BaseUsageFilter),
              initial: Metronome::Models::BaseUsageFilter,
              updates: T::Array[Metronome::Models::ContractWithoutAmendments::UsageFilter::Update]
            }
          )
        end
        def to_hash
        end

        class Update < Metronome::BaseModel
          sig { returns(String) }
          attr_accessor :group_key

          sig { returns(T::Array[String]) }
          attr_accessor :group_values

          sig { returns(Time) }
          attr_accessor :starting_at

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
