# typed: strong

module Metronome
  module Models
    class AlertCreateParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            alert_type: Symbol,
            name: String,
            threshold: Float,
            billable_metric_id: String,
            credit_grant_type_filters: T::Array[String],
            credit_type_id: String,
            custom_field_filters: T::Array[Metronome::Models::AlertCreateParams::CustomFieldFilter],
            customer_id: String,
            evaluate_on_create: T::Boolean,
            group_key_filter: Metronome::Models::AlertCreateParams::GroupKeyFilter,
            invoice_types_filter: T::Array[String],
            plan_id: String,
            uniqueness_key: String
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(Symbol) }
      attr_accessor :alert_type

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Float) }
      attr_accessor :threshold

      sig { returns(T.nilable(String)) }
      attr_reader :billable_metric_id

      sig { params(billable_metric_id: String).void }
      attr_writer :billable_metric_id

      sig { returns(T::Array[String]) }
      attr_reader :credit_grant_type_filters

      sig { params(credit_grant_type_filters: T::Array[String]).void }
      attr_writer :credit_grant_type_filters

      sig { returns(T.nilable(String)) }
      attr_reader :credit_type_id

      sig { params(credit_type_id: String).void }
      attr_writer :credit_type_id

      sig { returns(T::Array[Metronome::Models::AlertCreateParams::CustomFieldFilter]) }
      attr_reader :custom_field_filters

      sig do
        params(custom_field_filters: T::Array[Metronome::Models::AlertCreateParams::CustomFieldFilter]).void
      end
      attr_writer :custom_field_filters

      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :evaluate_on_create

      sig { params(evaluate_on_create: T::Boolean).void }
      attr_writer :evaluate_on_create

      sig { returns(T.nilable(Metronome::Models::AlertCreateParams::GroupKeyFilter)) }
      attr_reader :group_key_filter

      sig { params(group_key_filter: Metronome::Models::AlertCreateParams::GroupKeyFilter).void }
      attr_writer :group_key_filter

      sig { returns(T::Array[String]) }
      attr_reader :invoice_types_filter

      sig { params(invoice_types_filter: T::Array[String]).void }
      attr_writer :invoice_types_filter

      sig { returns(T.nilable(String)) }
      attr_reader :plan_id

      sig { params(plan_id: String).void }
      attr_writer :plan_id

      sig { returns(T.nilable(String)) }
      attr_reader :uniqueness_key

      sig { params(uniqueness_key: String).void }
      attr_writer :uniqueness_key

      sig do
        params(
          alert_type: Symbol,
          name: String,
          threshold: Float,
          billable_metric_id: String,
          credit_grant_type_filters: T::Array[String],
          credit_type_id: String,
          custom_field_filters: T::Array[Metronome::Models::AlertCreateParams::CustomFieldFilter],
          customer_id: String,
          evaluate_on_create: T::Boolean,
          group_key_filter: Metronome::Models::AlertCreateParams::GroupKeyFilter,
          invoice_types_filter: T::Array[String],
          plan_id: String,
          uniqueness_key: String,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(
        alert_type:,
        name:,
        threshold:,
        billable_metric_id: nil,
        credit_grant_type_filters: nil,
        credit_type_id: nil,
        custom_field_filters: nil,
        customer_id: nil,
        evaluate_on_create: nil,
        group_key_filter: nil,
        invoice_types_filter: nil,
        plan_id: nil,
        uniqueness_key: nil,
        request_options: {}
      ); end

      sig { returns(Metronome::Models::AlertCreateParams::Shape) }
      def to_h; end

      class AlertType < Metronome::Enum
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

        sig { returns(Metronome::Models::AlertCreateParams::CustomFieldFilter::Shape) }
        def to_h; end

        class Entity < Metronome::Enum
          abstract!

          CONTRACT = :Contract
          COMMIT = :Commit
          CONTRACT_CREDIT = :ContractCredit

          sig { override.returns(T::Array[Symbol]) }
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

        sig { returns(Metronome::Models::AlertCreateParams::GroupKeyFilter::Shape) }
        def to_h; end
      end
    end
  end
end
