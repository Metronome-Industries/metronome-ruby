# typed: strong

module Metronome
  module Models
    module Customers
      class CommitCreateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(Metronome::Models::Customers::CommitCreateParams::AccessSchedule) }
        def access_schedule
        end

        sig do
          params(_: Metronome::Models::Customers::CommitCreateParams::AccessSchedule).returns(Metronome::Models::Customers::CommitCreateParams::AccessSchedule)
        end
        def access_schedule=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
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

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def applicable_contract_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applicable_contract_ids=(_)
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
        def invoice_contract_id
        end

        sig { params(_: String).returns(String) }
        def invoice_contract_id=(_)
        end

        sig { returns(T.nilable(Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule)) }
        def invoice_schedule
        end

        sig do
          params(_: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule).returns(Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule)
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

        sig { returns(T.nilable(Symbol)) }
        def rate_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def rate_type=(_)
        end

        sig { returns(T.nilable(String)) }
        def salesforce_opportunity_id
        end

        sig { params(_: String).returns(String) }
        def salesforce_opportunity_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def uniqueness_key
        end

        sig { params(_: String).returns(String) }
        def uniqueness_key=(_)
        end

        sig do
          params(
            access_schedule: Metronome::Models::Customers::CommitCreateParams::AccessSchedule,
            customer_id: String,
            priority: Float,
            product_id: String,
            type: Symbol,
            applicable_contract_ids: T::Array[String],
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            custom_fields: T::Hash[Symbol, String],
            description: String,
            invoice_contract_id: String,
            invoice_schedule: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule,
            name: String,
            netsuite_sales_order_id: String,
            rate_type: Symbol,
            salesforce_opportunity_id: String,
            uniqueness_key: String,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          access_schedule:,
          customer_id:,
          priority:,
          product_id:,
          type:,
          applicable_contract_ids: nil,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          custom_fields: nil,
          description: nil,
          invoice_contract_id: nil,
          invoice_schedule: nil,
          name: nil,
          netsuite_sales_order_id: nil,
          rate_type: nil,
          salesforce_opportunity_id: nil,
          uniqueness_key: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              access_schedule: Metronome::Models::Customers::CommitCreateParams::AccessSchedule,
              customer_id: String,
              priority: Float,
              product_id: String,
              type: Symbol,
              applicable_contract_ids: T::Array[String],
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              invoice_contract_id: String,
              invoice_schedule: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule,
              name: String,
              netsuite_sales_order_id: String,
              rate_type: Symbol,
              salesforce_opportunity_id: String,
              uniqueness_key: String,
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash
        end

        class AccessSchedule < Metronome::BaseModel
          sig do
            returns(T::Array[Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem])
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem]).returns(T::Array[Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem])
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
              schedule_items: T::Array[Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil)
          end

          sig do
            override.returns(
              {
                schedule_items: T::Array[Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem], credit_type_id: String
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

        class Type < Metronome::Enum
          abstract!

          PREPAID = :PREPAID
          POSTPAID = :POSTPAID

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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
            returns(T.nilable(Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule))
          end
          def recurring_schedule
          end

          sig do
            params(_: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule).returns(Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule)
          end
          def recurring_schedule=(_)
          end

          sig do
            returns(T.nilable(T::Array[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem]))
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem]).returns(T::Array[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem])
          end
          def schedule_items=(_)
          end

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
          end

          sig do
            override.returns(
              {
                credit_type_id: String,
                recurring_schedule: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule,
                schedule_items: T::Array[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem]
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
    end
  end
end
