# typed: strong

module Metronome
  module Models
    module Customers
      class CommitCreateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all(
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
              uniqueness_key: String
            },
            Metronome::RequestParameters::Shape
          )
        end

        sig { returns(Metronome::Models::Customers::CommitCreateParams::AccessSchedule) }
        attr_accessor :access_schedule

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T::Array[String]) }
        attr_reader :applicable_contract_ids

        sig { params(applicable_contract_ids: T::Array[String]).void }
        attr_writer :applicable_contract_ids

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
        attr_reader :invoice_contract_id

        sig { params(invoice_contract_id: String).void }
        attr_writer :invoice_contract_id

        sig { returns(T.nilable(Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule)) }
        attr_reader :invoice_schedule

        sig do
          params(invoice_schedule: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule).void
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

        sig { returns(T.nilable(Symbol)) }
        attr_reader :rate_type

        sig { params(rate_type: Symbol).void }
        attr_writer :rate_type

        sig { returns(T.nilable(String)) }
        attr_reader :salesforce_opportunity_id

        sig { params(salesforce_opportunity_id: String).void }
        attr_writer :salesforce_opportunity_id

        sig { returns(T.nilable(String)) }
        attr_reader :uniqueness_key

        sig { params(uniqueness_key: String).void }
        attr_writer :uniqueness_key

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
            request_options: Metronome::RequestOpts
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
        ); end

        sig { returns(Metronome::Models::Customers::CommitCreateParams::Shape) }
        def to_h; end

        class AccessSchedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              schedule_items: T::Array[Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem],
              credit_type_id: String
            }
          end

          sig do
            returns(T::Array[Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem])
          end
          attr_accessor :schedule_items

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil); end

          sig { returns(Metronome::Models::Customers::CommitCreateParams::AccessSchedule::Shape) }
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
              returns(Metronome::Models::Customers::CommitCreateParams::AccessSchedule::ScheduleItem::Shape)
            end
            def to_h; end
          end
        end

        class Type < Metronome::Enum
          abstract!

          PREPAID = :PREPAID
          POSTPAID = :POSTPAID

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class InvoiceSchedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              credit_type_id: String,
              recurring_schedule: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem]
            }
          end

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            returns(T.nilable(Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule))
          end
          attr_reader :recurring_schedule

          sig do
            params(
              recurring_schedule: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule
            ).void
          end
          attr_writer :recurring_schedule

          sig do
            returns(T::Array[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem])
          end
          attr_reader :schedule_items

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem]
            ).void
          end
          attr_writer :schedule_items

          sig do
            params(
              credit_type_id: String,
              recurring_schedule: Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule,
              schedule_items: T::Array[Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem]
            ).void
          end
          def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil); end

          sig { returns(Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::Shape) }
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
              returns(Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::RecurringSchedule::Shape)
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
              returns(Metronome::Models::Customers::CommitCreateParams::InvoiceSchedule::ScheduleItem::Shape)
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
    end
  end
end
