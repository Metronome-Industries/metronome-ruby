# typed: strong

module Metronome
  module Models
    class ContractAmendParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def contract_id
      end

      sig { params(_: String).returns(String) }
      def contract_id=(_)
      end

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

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::Commit])) }
      def commits
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractAmendParams::Commit]).returns(T::Array[Metronome::Models::ContractAmendParams::Commit])
      end
      def commits=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::Credit])) }
      def credits
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractAmendParams::Credit]).returns(T::Array[Metronome::Models::ContractAmendParams::Credit])
      end
      def credits=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def custom_fields
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_fields=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::Discount])) }
      def discounts
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractAmendParams::Discount]).returns(T::Array[Metronome::Models::ContractAmendParams::Discount])
      end
      def discounts=(_)
      end

      sig { returns(T.nilable(String)) }
      def netsuite_sales_order_id
      end

      sig { params(_: String).returns(String) }
      def netsuite_sales_order_id=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::Override])) }
      def overrides
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractAmendParams::Override]).returns(T::Array[Metronome::Models::ContractAmendParams::Override])
      end
      def overrides=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::ProfessionalService])) }
      def professional_services
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractAmendParams::ProfessionalService]).returns(T::Array[Metronome::Models::ContractAmendParams::ProfessionalService])
      end
      def professional_services=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::ResellerRoyalty])) }
      def reseller_royalties
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractAmendParams::ResellerRoyalty]).returns(T::Array[Metronome::Models::ContractAmendParams::ResellerRoyalty])
      end
      def reseller_royalties=(_)
      end

      sig { returns(T.nilable(String)) }
      def salesforce_opportunity_id
      end

      sig { params(_: String).returns(String) }
      def salesforce_opportunity_id=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge])) }
      def scheduled_charges
      end

      sig do
        params(_: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge]).returns(T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge])
      end
      def scheduled_charges=(_)
      end

      sig { returns(T.nilable(Float)) }
      def total_contract_value
      end

      sig { params(_: Float).returns(Float) }
      def total_contract_value=(_)
      end

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
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

      sig do
        override.returns(
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
            total_contract_value: Float,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
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

        sig { returns(T.nilable(Metronome::Models::ContractAmendParams::Commit::AccessSchedule)) }
        def access_schedule
        end

        sig do
          params(_: Metronome::Models::ContractAmendParams::Commit::AccessSchedule).returns(Metronome::Models::ContractAmendParams::Commit::AccessSchedule)
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

        sig { returns(T.nilable(Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule)) }
        def invoice_schedule
        end

        sig do
          params(_: Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule).returns(Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule)
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
        )
        end

        sig do
          override.returns(
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
            returns(T::Array[Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem])
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem]).returns(T::Array[Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem])
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
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil)
          end

          sig do
            override.returns(
              {
                schedule_items: T::Array[Metronome::Models::ContractAmendParams::Commit::AccessSchedule::ScheduleItem], credit_type_id: String
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
            returns(T.nilable(Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule))
          end
          def recurring_schedule
          end

          sig do
            params(_: Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule).returns(Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule)
          end
          def recurring_schedule=(_)
          end

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem]))
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem]).returns(T::Array[Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem])
          end
          def schedule_items=(_)
          end

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
          end

          sig do
            override.returns(
              {
                credit_type_id: String,
                recurring_schedule: Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::RecurringSchedule,
                schedule_items: T::Array[Metronome::Models::ContractAmendParams::Commit::InvoiceSchedule::ScheduleItem]
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
        sig { returns(Metronome::Models::ContractAmendParams::Credit::AccessSchedule) }
        def access_schedule
        end

        sig do
          params(_: Metronome::Models::ContractAmendParams::Credit::AccessSchedule).returns(Metronome::Models::ContractAmendParams::Credit::AccessSchedule)
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
        )
        end

        sig do
          override.returns(
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
          )
        end
        def to_hash
        end

        class AccessSchedule < Metronome::BaseModel
          sig do
            returns(T::Array[Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem])
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem]).returns(T::Array[Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem])
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
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil)
          end

          sig do
            override.returns(
              {
                schedule_items: T::Array[Metronome::Models::ContractAmendParams::Credit::AccessSchedule::ScheduleItem], credit_type_id: String
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

        sig { returns(Metronome::Models::ContractAmendParams::Discount::Schedule) }
        def schedule
        end

        sig do
          params(_: Metronome::Models::ContractAmendParams::Discount::Schedule).returns(Metronome::Models::ContractAmendParams::Discount::Schedule)
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
            schedule: Metronome::Models::ContractAmendParams::Discount::Schedule,
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
              schedule: Metronome::Models::ContractAmendParams::Discount::Schedule,
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
            returns(T.nilable(Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule))
          end
          def recurring_schedule
          end

          sig do
            params(_: Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule).returns(Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule)
          end
          def recurring_schedule=(_)
          end

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem]))
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem]).returns(T::Array[Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem])
          end
          def schedule_items=(_)
          end

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
          end

          sig do
            override.returns(
              {
                credit_type_id: String,
                recurring_schedule: Metronome::Models::ContractAmendParams::Discount::Schedule::RecurringSchedule,
                schedule_items: T::Array[Metronome::Models::ContractAmendParams::Discount::Schedule::ScheduleItem]
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
          returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::Override::OverrideSpecifier]))
        end
        def override_specifiers
        end

        sig do
          params(_: T::Array[Metronome::Models::ContractAmendParams::Override::OverrideSpecifier]).returns(T::Array[Metronome::Models::ContractAmendParams::Override::OverrideSpecifier])
        end
        def override_specifiers=(_)
        end

        sig { returns(T.nilable(Metronome::Models::ContractAmendParams::Override::OverwriteRate)) }
        def overwrite_rate
        end

        sig do
          params(_: Metronome::Models::ContractAmendParams::Override::OverwriteRate).returns(Metronome::Models::ContractAmendParams::Override::OverwriteRate)
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

        sig { returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::Override::Tier])) }
        def tiers
        end

        sig do
          params(_: T::Array[Metronome::Models::ContractAmendParams::Override::Tier]).returns(T::Array[Metronome::Models::ContractAmendParams::Override::Tier])
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
              override_specifiers: T::Array[Metronome::Models::ContractAmendParams::Override::OverrideSpecifier],
              overwrite_rate: Metronome::Models::ContractAmendParams::Override::OverwriteRate,
              priority: Float,
              product_id: String,
              target: Symbol,
              tiers: T::Array[Metronome::Models::ContractAmendParams::Override::Tier],
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

      class ResellerRoyalty < Metronome::BaseModel
        sig { returns(Symbol) }
        def reseller_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reseller_type=(_)
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

        sig { returns(T.nilable(Metronome::Models::ContractAmendParams::ResellerRoyalty::AwsOptions)) }
        def aws_options
        end

        sig do
          params(_: Metronome::Models::ContractAmendParams::ResellerRoyalty::AwsOptions).returns(Metronome::Models::ContractAmendParams::ResellerRoyalty::AwsOptions)
        end
        def aws_options=(_)
        end

        sig { returns(T.nilable(Time)) }
        def ending_before
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def ending_before=(_)
        end

        sig { returns(T.nilable(Float)) }
        def fraction
        end

        sig { params(_: Float).returns(Float) }
        def fraction=(_)
        end

        sig { returns(T.nilable(Metronome::Models::ContractAmendParams::ResellerRoyalty::GcpOptions)) }
        def gcp_options
        end

        sig do
          params(_: Metronome::Models::ContractAmendParams::ResellerRoyalty::GcpOptions).returns(Metronome::Models::ContractAmendParams::ResellerRoyalty::GcpOptions)
        end
        def gcp_options=(_)
        end

        sig { returns(T.nilable(String)) }
        def netsuite_reseller_id
        end

        sig { params(_: String).returns(String) }
        def netsuite_reseller_id=(_)
        end

        sig { returns(T.nilable(Float)) }
        def reseller_contract_value
        end

        sig { params(_: Float).returns(Float) }
        def reseller_contract_value=(_)
        end

        sig { returns(T.nilable(Time)) }
        def starting_at
        end

        sig { params(_: Time).returns(Time) }
        def starting_at=(_)
        end

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
        )
        end

        sig do
          override.returns(
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

        sig { returns(Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule) }
        def schedule
        end

        sig do
          params(_: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule).returns(Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule)
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
            schedule: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule,
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
              schedule: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule,
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
            returns(T.nilable(Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule))
          end
          def recurring_schedule
          end

          sig do
            params(_: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule).returns(Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule)
          end
          def recurring_schedule=(_)
          end

          sig do
            returns(T.nilable(T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem]))
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem]).returns(T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem])
          end
          def schedule_items=(_)
          end

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
          end

          sig do
            override.returns(
              {
                credit_type_id: String,
                recurring_schedule: Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::RecurringSchedule,
                schedule_items: T::Array[Metronome::Models::ContractAmendParams::ScheduledCharge::Schedule::ScheduleItem]
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
    end
  end
end
