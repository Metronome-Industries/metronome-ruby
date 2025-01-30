# typed: strong

module Metronome
  module Models
    class ContractAmendParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            contract_id: String,
            customer_id: String,
            starting_at: Time,
            commits: T::Array[Metronome::Models::ContractAmendParams::Commit],
            credits: T::Array[Metronome::Models::ContractAmendParams::Credit],
            custom_fields: T::Hash[Symbol, String],
            discounts: T::Array[Metronome::Models::ContractAmendParams::Discount],
            netsuite_sales_order_id: String,
            overrides: T::Array[Metronome::Models::ContractAmendParams::Override],
            professional_services: T::Array[Metronome::Models::ContractAmendParams::ProfessionalService],
            reseller_royalties: T::Array[Metronome::Models::ContractAmendParams::ResellerRoyalty],
            salesforce_opportunity_id: String,
            scheduled_charges: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge],
            total_contract_value: Float
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :contract_id

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(Time) }
      attr_accessor :starting_at

      sig { returns(T::Array[Metronome::Models::ContractAmendParams::Commit]) }
      attr_reader :commits

      sig { params(commits: T::Array[Metronome::Models::ContractAmendParams::Commit]).void }
      attr_writer :commits

      sig { returns(T::Array[Metronome::Models::ContractAmendParams::Credit]) }
      attr_reader :credits

      sig { params(credits: T::Array[Metronome::Models::ContractAmendParams::Credit]).void }
      attr_writer :credits

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T::Array[Metronome::Models::ContractAmendParams::Discount]) }
      attr_reader :discounts

      sig { params(discounts: T::Array[Metronome::Models::ContractAmendParams::Discount]).void }
      attr_writer :discounts

      sig { returns(T.nilable(String)) }
      attr_reader :netsuite_sales_order_id

      sig { params(netsuite_sales_order_id: String).void }
      attr_writer :netsuite_sales_order_id

      sig { returns(T::Array[Metronome::Models::ContractAmendParams::Override]) }
      attr_reader :overrides

      sig { params(overrides: T::Array[Metronome::Models::ContractAmendParams::Override]).void }
      attr_writer :overrides

      sig { returns(T::Array[Metronome::Models::ContractAmendParams::ProfessionalService]) }
      attr_reader :professional_services

      sig do
        params(professional_services: T::Array[Metronome::Models::ContractAmendParams::ProfessionalService]).void
      end
      attr_writer :professional_services

      sig { returns(T::Array[Metronome::Models::ContractAmendParams::ResellerRoyalty]) }
      attr_reader :reseller_royalties

      sig do
        params(reseller_royalties: T::Array[Metronome::Models::ContractAmendParams::ResellerRoyalty]).void
      end
      attr_writer :reseller_royalties

      sig { returns(T.nilable(String)) }
      attr_reader :salesforce_opportunity_id

      sig { params(salesforce_opportunity_id: String).void }
      attr_writer :salesforce_opportunity_id

      sig { returns(T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge]) }
      attr_reader :scheduled_charges

      sig do
        params(scheduled_charges: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge]).void
      end
      attr_writer :scheduled_charges

      sig { returns(T.nilable(Float)) }
      attr_reader :total_contract_value

      sig { params(total_contract_value: Float).void }
      attr_writer :total_contract_value

      sig do
        params(
          contract_id: String,
          customer_id: String,
          starting_at: Time,
          commits: T::Array[Metronome::Models::ContractAmendParams::Commit],
          credits: T::Array[Metronome::Models::ContractAmendParams::Credit],
          custom_fields: T::Hash[Symbol, String],
          discounts: T::Array[Metronome::Models::ContractAmendParams::Discount],
          netsuite_sales_order_id: String,
          overrides: T::Array[Metronome::Models::ContractAmendParams::Override],
          professional_services: T::Array[Metronome::Models::ContractAmendParams::ProfessionalService],
          reseller_royalties: T::Array[Metronome::Models::ContractAmendParams::ResellerRoyalty],
          salesforce_opportunity_id: String,
          scheduled_charges: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge],
          total_contract_value: Float,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(
        contract_id:,
        customer_id:,
        starting_at:,
        commits: nil,
        credits: nil,
        custom_fields: nil,
        discounts: nil,
        netsuite_sales_order_id: nil,
        overrides: nil,
        professional_services: nil,
        reseller_royalties: nil,
        salesforce_opportunity_id: nil,
        scheduled_charges: nil,
        total_contract_value: nil,
        request_options: {}
      ); end

      sig { returns(Metronome::Models::ContractAmendParams::Shape) }
      def to_h; end

      class Commit < Metronome::BaseModel
        Shape = T.type_alias do
          {
            product_id: String,
            type: Symbol,
            access_schedule: Metronome::Models::ContractAmendParams::Commit::AccessSchedule,
            amount: Float,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            invoice_schedule: Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule,
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

        sig { returns(T.nilable(Metronome::Models::ContractAmendParams::Commit::AccessSchedule)) }
        attr_reader :access_schedule

        sig { params(access_schedule: Metronome::Models::ContractAmendParams::Commit::AccessSchedule).void }
        attr_writer :access_schedule

        sig { returns(T.nilable(Float)) }
        attr_reader :amount

        sig { params(amount: Float).void }
        attr_writer :amount

        sig { returns(T::Array[String]) }
        attr_reader :applicable_product_ids

        sig { params(applicable_product_ids: T::Array[String]).void }
        attr_writer :applicable_product_ids

        sig { returns(T::Array[String]) }
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

        sig { returns(T.nilable(Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule)) }
        attr_reader :invoice_schedule

        sig { params(invoice_schedule: Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule).void }
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
            access_schedule: Metronome::Models::ContractAmendParams::Commit::AccessSchedule,
            amount: Float,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            invoice_schedule: Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule,
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

        sig { returns(Metronome::Models::ContractAmendParams::Commit::Shape) }
        def to_h; end

        class Type < Metronome::Enum
          abstract!

          PREPAID = :PREPAID
          POSTPAID = :POSTPAID

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end

        class AccessSchedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            }
          end

          sig do
            returns(T::Array[Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem])
          end
          attr_accessor :schedule_items

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil); end

          sig { returns(Metronome::Models::ContractAmendParams::Commit::AccessSchedule::Shape) }
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
              returns(Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem::Shape)
            end
            def to_h; end
          end
        end

        class InvoiceSchedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem]
            }
          end

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            returns(T.nilable(Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule))
          end
          attr_reader :recurring_schedule

          sig do
            params(
              recurring_schedule: Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule
            ).void
          end
          attr_writer :recurring_schedule

          sig do
            returns(T::Array[Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem])
          end
          attr_reader :schedule_items

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem]
            ).void
          end
          attr_writer :schedule_items

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil); end

          sig { returns(Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::Shape) }
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
              returns(Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule::Shape)
            end
            def to_h; end

            class AmountDistribution < Metronome::Enum
              abstract!

              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH

              sig { returns(T::Array[Symbol]) }
              def self.values; end
            end

            class Frequency < Metronome::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL

              sig { returns(T::Array[Symbol]) }
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
              returns(Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem::Shape)
            end
            def to_h; end
          end
        end

        class RateType < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class Credit < Metronome::BaseModel
        Shape = T.type_alias do
          {
            access_schedule: Metronome::Models::ContractAmendParams::Credit::AccessSchedule,
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

        sig { returns(Metronome::Models::ContractAmendParams::Credit::AccessSchedule) }
        attr_accessor :access_schedule

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(T::Array[String]) }
        attr_reader :applicable_product_ids

        sig { params(applicable_product_ids: T::Array[String]).void }
        attr_writer :applicable_product_ids

        sig { returns(T::Array[String]) }
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
            access_schedule: Metronome::Models::ContractAmendParams::Credit::AccessSchedule,
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

        sig { returns(Metronome::Models::ContractAmendParams::Credit::Shape) }
        def to_h; end

        class AccessSchedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            }
          end

          sig do
            returns(T::Array[Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem])
          end
          attr_accessor :schedule_items

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil); end

          sig { returns(Metronome::Models::ContractAmendParams::Credit::AccessSchedule::Shape) }
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
              returns(Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem::Shape)
            end
            def to_h; end
          end
        end

        class RateType < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class Discount < Metronome::BaseModel
        Shape = T.type_alias do
          {
            product_id: String,
            schedule: Metronome::Models::ContractAmendParams::Discount::Schedule,
            custom_fields: T::Hash[Symbol, String],
            name: String,
            netsuite_sales_order_id: String
          }
        end

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Metronome::Models::ContractAmendParams::Discount::Schedule) }
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
            schedule: Metronome::Models::ContractAmendParams::Discount::Schedule,
            custom_fields: T::Hash[Symbol, String],
            name: String,
            netsuite_sales_order_id: String
          ).void
        end
        def initialize(product_id:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
        end

        sig { returns(Metronome::Models::ContractAmendParams::Discount::Shape) }
        def to_h; end

        class Schedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem]
            }
          end

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            returns(T.nilable(Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule))
          end
          attr_reader :recurring_schedule

          sig do
            params(recurring_schedule: Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule).void
          end
          attr_writer :recurring_schedule

          sig { returns(T::Array[Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem]) }
          attr_reader :schedule_items

          sig do
            params(schedule_items: T::Array[Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem]).void
          end
          attr_writer :schedule_items

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil); end

          sig { returns(Metronome::Models::ContractAmendParams::Discount::Schedule::Shape) }
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
              returns(Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule::Shape)
            end
            def to_h; end

            class AmountDistribution < Metronome::Enum
              abstract!

              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH

              sig { returns(T::Array[Symbol]) }
              def self.values; end
            end

            class Frequency < Metronome::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL

              sig { returns(T::Array[Symbol]) }
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

            sig { returns(Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem::Shape) }
            def to_h; end
          end
        end
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
            override_specifiers: T::Array[Metronome::Models::ContractAmendParams::Override::OverrideSpecifier],
            overwrite_rate: Metronome::Models::ContractAmendParams::Override::OverwriteRate,
            priority: Float,
            product_id: String,
            target: Symbol,
            tiers: T::Array[Metronome::Models::ContractAmendParams::Override::Tier],
            type: Symbol
          }
        end

        sig { returns(Time) }
        attr_accessor :starting_at

        sig { returns(T::Array[String]) }
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

        sig { returns(T::Array[Metronome::Models::ContractAmendParams::Override::OverrideSpecifier]) }
        attr_reader :override_specifiers

        sig do
          params(override_specifiers: T::Array[Metronome::Models::ContractAmendParams::Override::OverrideSpecifier]).void
        end
        attr_writer :override_specifiers

        sig { returns(T.nilable(Metronome::Models::ContractAmendParams::Override::OverwriteRate)) }
        attr_reader :overwrite_rate

        sig { params(overwrite_rate: Metronome::Models::ContractAmendParams::Override::OverwriteRate).void }
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

        sig { returns(T::Array[Metronome::Models::ContractAmendParams::Override::Tier]) }
        attr_reader :tiers

        sig { params(tiers: T::Array[Metronome::Models::ContractAmendParams::Override::Tier]).void }
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
            override_specifiers: T::Array[Metronome::Models::ContractAmendParams::Override::OverrideSpecifier],
            overwrite_rate: Metronome::Models::ContractAmendParams::Override::OverwriteRate,
            priority: Float,
            product_id: String,
            target: Symbol,
            tiers: T::Array[Metronome::Models::ContractAmendParams::Override::Tier],
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

        sig { returns(Metronome::Models::ContractAmendParams::Override::Shape) }
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

          sig { returns(T::Array[String]) }
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

          sig { returns(T::Array[String]) }
          attr_reader :product_tags

          sig { params(product_tags: T::Array[String]).void }
          attr_writer :product_tags

          sig { returns(T::Array[String]) }
          attr_reader :recurring_commit_ids

          sig { params(recurring_commit_ids: T::Array[String]).void }
          attr_writer :recurring_commit_ids

          sig { returns(T::Array[String]) }
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

          sig { returns(Metronome::Models::ContractAmendParams::Override::OverrideSpecifier::Shape) }
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

          sig { returns(T::Array[Metronome::Models::Tier]) }
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

          sig { returns(Metronome::Models::ContractAmendParams::Override::OverwriteRate::Shape) }
          def to_h; end

          class RateType < Metronome::Enum
            abstract!

            FLAT = :FLAT
            PERCENTAGE = :PERCENTAGE
            SUBSCRIPTION = :SUBSCRIPTION
            TIERED = :TIERED
            CUSTOM = :CUSTOM

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class Target < Metronome::Enum
          abstract!

          COMMIT_RATE = :COMMIT_RATE
          LIST_RATE = :LIST_RATE

          sig { returns(T::Array[Symbol]) }
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

          sig { returns(Metronome::Models::ContractAmendParams::Override::Tier::Shape) }
          def to_h; end
        end

        class Type < Metronome::Enum
          abstract!

          OVERWRITE = :OVERWRITE
          MULTIPLIER = :MULTIPLIER
          TIERED = :TIERED

          sig { returns(T::Array[Symbol]) }
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

        sig { returns(Metronome::Models::ContractAmendParams::ProfessionalService::Shape) }
        def to_h; end
      end

      class ResellerRoyalty < Metronome::BaseModel
        Shape = T.type_alias do
          {
            reseller_type: Symbol,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            aws_options: Metronome::Models::ContractAmendParams::ResellerRoyalty::AwsOptions,
            ending_before: T.nilable(Time),
            fraction: Float,
            gcp_options: Metronome::Models::ContractAmendParams::ResellerRoyalty::GcpOptions,
            netsuite_reseller_id: String,
            reseller_contract_value: Float,
            starting_at: Time
          }
        end

        sig { returns(Symbol) }
        attr_accessor :reseller_type

        sig { returns(T::Array[String]) }
        attr_reader :applicable_product_ids

        sig { params(applicable_product_ids: T::Array[String]).void }
        attr_writer :applicable_product_ids

        sig { returns(T::Array[String]) }
        attr_reader :applicable_product_tags

        sig { params(applicable_product_tags: T::Array[String]).void }
        attr_writer :applicable_product_tags

        sig { returns(T.nilable(Metronome::Models::ContractAmendParams::ResellerRoyalty::AwsOptions)) }
        attr_reader :aws_options

        sig { params(aws_options: Metronome::Models::ContractAmendParams::ResellerRoyalty::AwsOptions).void }
        attr_writer :aws_options

        sig { returns(T.nilable(Time)) }
        attr_accessor :ending_before

        sig { returns(T.nilable(Float)) }
        attr_reader :fraction

        sig { params(fraction: Float).void }
        attr_writer :fraction

        sig { returns(T.nilable(Metronome::Models::ContractAmendParams::ResellerRoyalty::GcpOptions)) }
        attr_reader :gcp_options

        sig { params(gcp_options: Metronome::Models::ContractAmendParams::ResellerRoyalty::GcpOptions).void }
        attr_writer :gcp_options

        sig { returns(T.nilable(String)) }
        attr_reader :netsuite_reseller_id

        sig { params(netsuite_reseller_id: String).void }
        attr_writer :netsuite_reseller_id

        sig { returns(T.nilable(Float)) }
        attr_reader :reseller_contract_value

        sig { params(reseller_contract_value: Float).void }
        attr_writer :reseller_contract_value

        sig { returns(T.nilable(Time)) }
        attr_reader :starting_at

        sig { params(starting_at: Time).void }
        attr_writer :starting_at

        sig do
          params(
            reseller_type: Symbol,
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            aws_options: Metronome::Models::ContractAmendParams::ResellerRoyalty::AwsOptions,
            ending_before: T.nilable(Time),
            fraction: Float,
            gcp_options: Metronome::Models::ContractAmendParams::ResellerRoyalty::GcpOptions,
            netsuite_reseller_id: String,
            reseller_contract_value: Float,
            starting_at: Time
          ).void
        end
        def initialize(
          reseller_type:,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          aws_options: nil,
          ending_before: nil,
          fraction: nil,
          gcp_options: nil,
          netsuite_reseller_id: nil,
          reseller_contract_value: nil,
          starting_at: nil
        ); end

        sig { returns(Metronome::Models::ContractAmendParams::ResellerRoyalty::Shape) }
        def to_h; end

        class ResellerType < Metronome::Enum
          abstract!

          AWS = :AWS
          AWS_PRO_SERVICE = :AWS_PRO_SERVICE
          GCP = :GCP
          GCP_PRO_SERVICE = :GCP_PRO_SERVICE

          sig { returns(T::Array[Symbol]) }
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

          sig { returns(Metronome::Models::ContractAmendParams::ResellerRoyalty::AwsOptions::Shape) }
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

          sig { returns(Metronome::Models::ContractAmendParams::ResellerRoyalty::GcpOptions::Shape) }
          def to_h; end
        end
      end

      class ScheduledCharge < Metronome::BaseModel
        Shape = T.type_alias do
          {
            product_id: String,
            schedule: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule,
            name: String,
            netsuite_sales_order_id: String
          }
        end

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule) }
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
            schedule: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule,
            name: String,
            netsuite_sales_order_id: String
          ).void
        end
        def initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil); end

        sig { returns(Metronome::Models::ContractAmendParams::ScheduledCharge::Shape) }
        def to_h; end

        class Schedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem]
            }
          end

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            returns(T.nilable(Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule))
          end
          attr_reader :recurring_schedule

          sig do
            params(
              recurring_schedule: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule
            ).void
          end
          attr_writer :recurring_schedule

          sig do
            returns(T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem])
          end
          attr_reader :schedule_items

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem]
            ).void
          end
          attr_writer :schedule_items

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil); end

          sig { returns(Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::Shape) }
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
              returns(Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule::Shape)
            end
            def to_h; end

            class AmountDistribution < Metronome::Enum
              abstract!

              DIVIDED = :DIVIDED
              DIVIDED_ROUNDED = :DIVIDED_ROUNDED
              EACH = :EACH

              sig { returns(T::Array[Symbol]) }
              def self.values; end
            end

            class Frequency < Metronome::Enum
              abstract!

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              SEMI_ANNUAL = :SEMI_ANNUAL
              ANNUAL = :ANNUAL

              sig { returns(T::Array[Symbol]) }
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
              returns(Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem::Shape)
            end
            def to_h; end
          end
        end
      end
    end
  end
end
