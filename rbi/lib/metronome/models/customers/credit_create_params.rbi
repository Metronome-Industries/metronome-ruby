# typed: strong

module Metronome
  module Models
    module Customers
      class CreditCreateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all(
            {
              access_schedule: Metronome::Models::Customers::CreditCreateParams::AccessSchedule,
              customer_id: String,
              priority: Float,
              product_id: String,
              applicable_contract_ids: T::Array[String],
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              name: String,
              netsuite_sales_order_id: String,
              rate_type: Symbol,
              salesforce_opportunity_id: String,
              uniqueness_key: String
            },
            Metronome::RequestParameters::Shape
          )
        end

        sig { returns(Metronome::Models::Customers::CreditCreateParams::AccessSchedule) }
        attr_accessor :access_schedule

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(Float) }
        attr_accessor :priority

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :applicable_contract_ids

        sig { params(applicable_contract_ids: T::Array[String]).void }
        attr_writer :applicable_contract_ids

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
            access_schedule: Metronome::Models::Customers::CreditCreateParams::AccessSchedule,
            customer_id: String,
            priority: Float,
            product_id: String,
            applicable_contract_ids: T::Array[String],
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            custom_fields: T::Hash[Symbol, String],
            description: String,
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
          applicable_contract_ids: nil,
          applicable_product_ids: nil,
          applicable_product_tags: nil,
          custom_fields: nil,
          description: nil,
          name: nil,
          netsuite_sales_order_id: nil,
          rate_type: nil,
          salesforce_opportunity_id: nil,
          uniqueness_key: nil,
          request_options: {}
        ); end

        sig { returns(Metronome::Models::Customers::CreditCreateParams::Shape) }
        def to_h; end

        class AccessSchedule < Metronome::BaseModel
          Shape = T.type_alias do
            {
              schedule_items: T::Array[Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem],
              credit_type_id: String
            }
          end

          sig do
            returns(T::Array[Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem])
          end
          attr_accessor :schedule_items

          sig { returns(T.nilable(String)) }
          attr_reader :credit_type_id

          sig { params(credit_type_id: String).void }
          attr_writer :credit_type_id

          sig do
            params(
              schedule_items: T::Array[Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil); end

          sig { returns(Metronome::Models::Customers::CreditCreateParams::AccessSchedule::Shape) }
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
              returns(Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem::Shape)
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
