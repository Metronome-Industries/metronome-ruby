# typed: strong

module MetronomeSDK
  module Models
    module V1
      class AlertCreateParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(Symbol) }
        def alert_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def alert_type=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(Float) }
        def threshold
        end

        sig { params(_: Float).returns(Float) }
        def threshold=(_)
        end

        sig { returns(T.nilable(String)) }
        def billable_metric_id
        end

        sig { params(_: String).returns(String) }
        def billable_metric_id=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def credit_grant_type_filters
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def credit_grant_type_filters=(_)
        end

        sig { returns(T.nilable(String)) }
        def credit_type_id
        end

        sig { params(_: String).returns(String) }
        def credit_type_id=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter])) }
        def custom_field_filters
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter])
            .returns(T::Array[MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter])
        end
        def custom_field_filters=(_)
        end

        sig { returns(T.nilable(String)) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def evaluate_on_create
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def evaluate_on_create=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter)) }
        def group_key_filter
        end

        sig do
          params(_: MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter)
            .returns(MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter)
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
        def plan_id
        end

        sig { params(_: String).returns(String) }
        def plan_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def uniqueness_key
        end

        sig { params(_: String).returns(String) }
        def uniqueness_key=(_)
        end

        sig do
          params(
            alert_type: Symbol,
            name: String,
            threshold: Float,
            billable_metric_id: String,
            credit_grant_type_filters: T::Array[String],
            credit_type_id: String,
            custom_field_filters: T::Array[MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter],
            customer_id: String,
            evaluate_on_create: T::Boolean,
            group_key_filter: MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter,
            invoice_types_filter: T::Array[String],
            plan_id: String,
            uniqueness_key: String,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
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
        )
        end

        sig do
          override
            .returns(
              {
                alert_type: Symbol,
                name: String,
                threshold: Float,
                billable_metric_id: String,
                credit_grant_type_filters: T::Array[String],
                credit_type_id: String,
                custom_field_filters: T::Array[MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter],
                customer_id: String,
                evaluate_on_create: T::Boolean,
                group_key_filter: MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter,
                invoice_types_filter: T::Array[String],
                plan_id: String,
                uniqueness_key: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash
        end

        class AlertType < MetronomeSDK::Enum
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

        class CustomFieldFilter < MetronomeSDK::BaseModel
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

          class Entity < MetronomeSDK::Enum
            abstract!

            CONTRACT = :Contract
            COMMIT = :Commit
            CONTRACT_CREDIT = :ContractCredit

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class GroupKeyFilter < MetronomeSDK::BaseModel
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
    end
  end
end
