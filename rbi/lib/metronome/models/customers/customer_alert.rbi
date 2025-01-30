# typed: strong

module Metronome
  module Models
    CustomerAlert = T.type_alias { Customers::CustomerAlert }

    module Customers
      class CustomerAlert < Metronome::BaseModel
        Shape = T.type_alias do
          {
            alert: Metronome::Models::Customers::CustomerAlert::Alert,
            customer_status: T.nilable(Symbol),
            triggered_by: T.nilable(String)
          }
        end

        sig { returns(Metronome::Models::Customers::CustomerAlert::Alert) }
        attr_accessor :alert

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :customer_status

        sig { returns(T.nilable(String)) }
        attr_accessor :triggered_by

        sig do
          params(
            alert: Metronome::Models::Customers::CustomerAlert::Alert,
            customer_status: T.nilable(Symbol),
            triggered_by: T.nilable(String)
          ).void
        end
        def initialize(alert:, customer_status:, triggered_by: nil); end

        sig { returns(Metronome::Models::Customers::CustomerAlert::Shape) }
        def to_h; end

        class Alert < Metronome::BaseModel
          Shape = T.type_alias do
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
          end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Symbol) }
          attr_accessor :status

          sig { returns(Float) }
          attr_accessor :threshold

          sig { returns(Symbol) }
          attr_accessor :type

          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(T::Array[String]) }
          attr_reader :credit_grant_type_filters

          sig { params(credit_grant_type_filters: T::Array[String]).void }
          attr_writer :credit_grant_type_filters

          sig { returns(T.nilable(Metronome::Models::CreditTypeData)) }
          attr_accessor :credit_type

          sig { returns(T::Array[Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter]) }
          attr_reader :custom_field_filters

          sig do
            params(
              custom_field_filters: T::Array[Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter]
            ).void
          end
          attr_writer :custom_field_filters

          sig { returns(T.nilable(Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter)) }
          attr_reader :group_key_filter

          sig do
            params(group_key_filter: Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter).void
          end
          attr_writer :group_key_filter

          sig { returns(T::Array[String]) }
          attr_reader :invoice_types_filter

          sig { params(invoice_types_filter: T::Array[String]).void }
          attr_writer :invoice_types_filter

          sig { returns(T.nilable(String)) }
          attr_reader :uniqueness_key

          sig { params(uniqueness_key: String).void }
          attr_writer :uniqueness_key

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
            ).void
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
          ); end

          sig { returns(Metronome::Models::Customers::CustomerAlert::Alert::Shape) }
          def to_h; end

          class Status < Metronome::Enum
            abstract!

            ENABLED = :enabled
            ARCHIVED = :archived
            DISABLED = :disabled

            sig { returns(T::Array[Symbol]) }
            def self.values; end
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

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end

          class CustomFieldFilter < Metronome::BaseModel
            Shape = T.type_alias { {entity: Symbol, key: String, value: String} }

            sig { returns(Symbol) }
            attr_accessor :entity

            sig { returns(String) }
            attr_accessor :key

            sig { returns(String) }
            attr_accessor :value

            sig { params(entity: Symbol, key: String, value: String).void }
            def initialize(entity:, key:, value:); end

            sig { returns(Metronome::Models::Customers::CustomerAlert::Alert::CustomFieldFilter::Shape) }
            def to_h; end

            class Entity < Metronome::Enum
              abstract!

              CONTRACT = :Contract
              COMMIT = :Commit
              CONTRACT_CREDIT = :ContractCredit

              sig { returns(T::Array[Symbol]) }
              def self.values; end
            end
          end

          class GroupKeyFilter < Metronome::BaseModel
            Shape = T.type_alias { {key: String, value: String} }

            sig { returns(String) }
            attr_accessor :key

            sig { returns(String) }
            attr_accessor :value

            sig { params(key: String, value: String).void }
            def initialize(key:, value:); end

            sig { returns(Metronome::Models::Customers::CustomerAlert::Alert::GroupKeyFilter::Shape) }
            def to_h; end
          end
        end

        class CustomerStatus < Metronome::Enum
          abstract!

          OK = T.let(:ok, T.nilable(Symbol))
          IN_ALARM = T.let(:in_alarm, T.nilable(Symbol))
          EVALUATING = T.let(:evaluating, T.nilable(Symbol))

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
