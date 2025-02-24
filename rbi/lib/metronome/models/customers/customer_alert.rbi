# typed: strong

module Metronome
  module Models
    CustomerAlert = T.type_alias { Customers::CustomerAlert }

    module Customers
      class CustomerAlert < Metronome::BaseModel
        sig { returns(Metronome::Models::Customers::CustomerAlert::Alert) }
        def alert
        end

        sig do
          params(_: Metronome::Models::Customers::CustomerAlert::Alert)
            .returns(Metronome::Models::Customers::CustomerAlert::Alert)
        end
        def alert=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def customer_status
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def customer_status=(_)
        end

        sig { returns(T.nilable(String)) }
        def triggered_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def triggered_by=(_)
        end

        sig do
          params(
            alert: Metronome::Models::Customers::CustomerAlert::Alert,
            customer_status: T.nilable(Symbol),
            triggered_by: T.nilable(String)
          )
            .void
        end
        def initialize(alert:, customer_status:, triggered_by: nil)
        end

        sig do
          override
            .returns(
              {
                alert: Metronome::Models::Customers::CustomerAlert::Alert,
                customer_status: T.nilable(Symbol),
                triggered_by: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Alert < Metronome::BaseModel
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

          sig { returns(Symbol) }
          def status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def status=(_)
          end

          sig { returns(Float) }
          def threshold
          end

          sig { params(_: Float).returns(Float) }
          def threshold=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { returns(Time) }
          def updated_at
          end

          sig { params(_: Time).returns(Time) }
          def updated_at=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def credit_grant_type_filters
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def credit_grant_type_filters=(_)
          end

          sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
          def credit_type
          end

          sig do
            params(_: T.nilable(Metronome::Models::CreditTypeData))
              .returns(T.nilable(Metronome::Models::CreditTypeData))
          end
          def credit_type=(_)
          end

          sig { returns(T.nilable(T::Array[Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter])) }
          def custom_field_filters
          end

          sig do
            params(_: T::Array[Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter])
              .returns(T::Array[Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter])
          end
          def custom_field_filters=(_)
          end

          sig { returns(T.nilable(Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter)) }
          def group_key_filter
          end

          sig do
            params(_: Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter)
              .returns(Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter)
          end
          def group_key_filter=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def invoice_types_filter
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def invoice_types_filter=(_)
          end

          sig { returns(T.nilable(String)) }
          def uniqueness_key
          end

          sig { params(_: String).returns(String) }
          def uniqueness_key=(_)
          end

          sig do
            params(
              id: String,
              name: String,
              status: Symbol,
              threshold: Float,
              type: Symbol,
              updated_at: Time,
              credit_grant_type_filters: T::Array[String],
              credit_type: T.nilable(Metronome::Models::CreditTypeData),
              custom_field_filters: T::Array[Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter],
              group_key_filter: Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter,
              invoice_types_filter: T::Array[String],
              uniqueness_key: String
            )
              .void
          end
          def initialize(
            id:,
            name:,
            status:,
            threshold:,
            type:,
            updated_at:,
            credit_grant_type_filters: nil,
            credit_type: nil,
            custom_field_filters: nil,
            group_key_filter: nil,
            invoice_types_filter: nil,
            uniqueness_key: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  name: String,
                  status: Symbol,
                  threshold: Float,
                  type: Symbol,
                  updated_at: Time,
                  credit_grant_type_filters: T::Array[String],
                  credit_type: T.nilable(Metronome::Models::CreditTypeData),
                  custom_field_filters: T::Array[Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter],
                  group_key_filter: Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter,
                  invoice_types_filter: T::Array[String],
                  uniqueness_key: String
                }
              )
          end
          def to_hash
          end

          class Status < Metronome::Enum
            abstract!

            ENABLED = :enabled
            ARCHIVED = :archived
            DISABLED = :disabled

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Type < Metronome::Enum
            abstract!

            LOW_CREDIT_BALANCE_REACHED = :low_credit_balance_reached
            SPEND_THRESHOLD_REACHED = :spend_threshold_reached
            MONTHLY_INVOICE_TOTAL_SPEND_THRESHOLD_REACHED = :monthly_invoice_total_spend_threshold_reached
            LOW_REMAINING_DAYS_IN_PLAN_REACHED = :low_remaining_days_in_plan_reached
            LOW_REMAINING_CREDIT_PERCENTAGE_REACHED = :low_remaining_credit_percentage_reached
            USAGE_THRESHOLD_REACHED = :usage_threshold_reached
            LOW_REMAINING_DAYS_FOR_COMMIT_SEGMENT_REACHED = :low_remaining_days_for_commit_segment_reached
            LOW_REMAINING_COMMIT_BALANCE_REACHED = :low_remaining_commit_balance_reached
            LOW_REMAINING_COMMIT_PERCENTAGE_REACHED = :low_remaining_commit_percentage_reached
            LOW_REMAINING_DAYS_FOR_CONTRACT_CREDIT_SEGMENT_REACHED = :low_remaining_days_for_contract_credit_segment_reached
            LOW_REMAINING_CONTRACT_CREDIT_BALANCE_REACHED = :low_remaining_contract_credit_balance_reached
            LOW_REMAINING_CONTRACT_CREDIT_PERCENTAGE_REACHED = :low_remaining_contract_credit_percentage_reached
            LOW_REMAINING_CONTRACT_CREDIT_AND_COMMIT_BALANCE_REACHED = :low_remaining_contract_credit_and_commit_balance_reached
            INVOICE_TOTAL_REACHED = :invoice_total_reached

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class CustomFieldFilter < Metronome::BaseModel
            sig { returns(Symbol) }
            def entity
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entity=(_)
            end

            sig { returns(String) }
            def key
            end

            sig { params(_: String).returns(String) }
            def key=(_)
            end

            sig { returns(String) }
            def value
            end

            sig { params(_: String).returns(String) }
            def value=(_)
            end

            sig { params(entity: Symbol, key: String, value: String).void }
            def initialize(entity:, key:, value:)
            end

            sig { override.returns({entity: Symbol, key: String, value: String}) }
            def to_hash
            end

            class Entity < Metronome::Enum
              abstract!

              CONTRACT = :Contract
              COMMIT = :Commit
              CONTRACT_CREDIT = :ContractCredit

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class GroupKeyFilter < Metronome::BaseModel
            sig { returns(String) }
            def key
            end

            sig { params(_: String).returns(String) }
            def key=(_)
            end

            sig { returns(String) }
            def value
            end

            sig { params(_: String).returns(String) }
            def value=(_)
            end

            sig { params(key: String, value: String).void }
            def initialize(key:, value:)
            end

            sig { override.returns({key: String, value: String}) }
            def to_hash
            end
          end
        end

        class CustomerStatus < Metronome::Enum
          abstract!

          OK = T.let(:ok, T.nilable(Symbol))
          IN_ALARM = T.let(:in_alarm, T.nilable(Symbol))
          EVALUATING = T.let(:evaluating, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
