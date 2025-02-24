# typed: strong

module Metronome
  module Models
    module Customers
      class CreditCreateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(Metronome::Models::Customers::CreditCreateParams::AccessSchedule) }
        def access_schedule
        end

        sig do
          params(_: Metronome::Models::Customers::CreditCreateParams::AccessSchedule).returns(Metronome::Models::Customers::CreditCreateParams::AccessSchedule)
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
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
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
        )
        end

        sig do
          override.returns(
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
              uniqueness_key: String,
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash
        end

        class AccessSchedule < Metronome::BaseModel
          sig do
            returns(T::Array[Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem])
          end
          def schedule_items
          end

          sig do
            params(_: T::Array[Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem]).returns(T::Array[Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem])
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
              schedule_items: T::Array[Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem],
              credit_type_id: String
            ).void
          end
          def initialize(schedule_items:, credit_type_id: nil)
          end

          sig do
            override.returns(
              {
                schedule_items: T::Array[Metronome::Models::Customers::CreditCreateParams::AccessSchedule::ScheduleItem], credit_type_id: String
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
    end
  end
end
