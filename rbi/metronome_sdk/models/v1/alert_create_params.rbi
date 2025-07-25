# typed: strong

module MetronomeSDK
  module Models
    module V1
      class AlertCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::AlertCreateParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Type of the alert
        sig do
          returns(MetronomeSDK::V1::AlertCreateParams::AlertType::OrSymbol)
        end
        attr_accessor :alert_type

        # Name of the alert
        sig { returns(String) }
        attr_accessor :name

        # Threshold value of the alert policy. Depending upon the alert type, this number
        # may represent a financial amount, the days remaining, or a percentage reached.
        sig { returns(Float) }
        attr_accessor :threshold

        # For alerts of type `usage_threshold_reached`, specifies which billable metric to
        # track the usage for.
        sig { returns(T.nilable(String)) }
        attr_reader :billable_metric_id

        sig { params(billable_metric_id: String).void }
        attr_writer :billable_metric_id

        # An array of strings, representing a way to filter the credit grant this alert
        # applies to, by looking at the credit_grant_type field on the credit grant. This
        # field is only defined for CreditPercentage and CreditBalance alerts
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :credit_grant_type_filters

        sig { params(credit_grant_type_filters: T::Array[String]).void }
        attr_writer :credit_grant_type_filters

        # ID of the credit's currency, defaults to USD. If the specific alert type
        # requires a pricing unit/currency, find the ID in the
        # [Metronome app](https://app.metronome.com/offering/pricing-units).
        sig { returns(T.nilable(String)) }
        attr_reader :credit_type_id

        sig { params(credit_type_id: String).void }
        attr_writer :credit_type_id

        # A list of custom field filters for alert types that support advanced filtering.
        # Only present for contract invoices.
        sig do
          returns(
            T.nilable(
              T::Array[MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter]
            )
          )
        end
        attr_reader :custom_field_filters

        sig do
          params(
            custom_field_filters:
              T::Array[
                MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::OrHash
              ]
          ).void
        end
        attr_writer :custom_field_filters

        # If provided, will create this alert for this specific customer. To create an
        # alert for all customers, do not specify a `customer_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :customer_id

        sig { params(customer_id: String).void }
        attr_writer :customer_id

        # If true, the alert will evaluate immediately on customers that already meet the
        # alert threshold. If false, it will only evaluate on future customers that
        # trigger the alert threshold. Defaults to true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :evaluate_on_create

        sig { params(evaluate_on_create: T::Boolean).void }
        attr_writer :evaluate_on_create

        # Scopes alert evaluation to a specific presentation group key on individual line
        # items. Only present for spend alerts.
        sig do
          returns(
            T.nilable(MetronomeSDK::V1::AlertCreateParams::GroupKeyFilter)
          )
        end
        attr_reader :group_key_filter

        sig do
          params(
            group_key_filter:
              MetronomeSDK::V1::AlertCreateParams::GroupKeyFilter::OrHash
          ).void
        end
        attr_writer :group_key_filter

        # Only present for `spend_threshold_reached` alerts. Scope alert to a specific
        # group key on individual line items.
        sig do
          returns(
            T.nilable(T::Array[MetronomeSDK::V1::AlertCreateParams::GroupValue])
          )
        end
        attr_reader :group_values

        sig do
          params(
            group_values:
              T::Array[MetronomeSDK::V1::AlertCreateParams::GroupValue::OrHash]
          ).void
        end
        attr_writer :group_values

        # Only supported for invoice_total_reached alerts. A list of invoice types to
        # evaluate.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :invoice_types_filter

        sig { params(invoice_types_filter: T::Array[String]).void }
        attr_writer :invoice_types_filter

        # If provided, will create this alert for this specific plan. To create an alert
        # for all customers, do not specify a `plan_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :plan_id

        sig { params(plan_id: String).void }
        attr_writer :plan_id

        # Prevents the creation of duplicates. If a request to create a record is made
        # with a previously used uniqueness key, a new record will not be created and the
        # request will fail with a 409 error.
        sig { returns(T.nilable(String)) }
        attr_reader :uniqueness_key

        sig { params(uniqueness_key: String).void }
        attr_writer :uniqueness_key

        sig do
          params(
            alert_type:
              MetronomeSDK::V1::AlertCreateParams::AlertType::OrSymbol,
            name: String,
            threshold: Float,
            billable_metric_id: String,
            credit_grant_type_filters: T::Array[String],
            credit_type_id: String,
            custom_field_filters:
              T::Array[
                MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::OrHash
              ],
            customer_id: String,
            evaluate_on_create: T::Boolean,
            group_key_filter:
              MetronomeSDK::V1::AlertCreateParams::GroupKeyFilter::OrHash,
            group_values:
              T::Array[MetronomeSDK::V1::AlertCreateParams::GroupValue::OrHash],
            invoice_types_filter: T::Array[String],
            plan_id: String,
            uniqueness_key: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Type of the alert
          alert_type:,
          # Name of the alert
          name:,
          # Threshold value of the alert policy. Depending upon the alert type, this number
          # may represent a financial amount, the days remaining, or a percentage reached.
          threshold:,
          # For alerts of type `usage_threshold_reached`, specifies which billable metric to
          # track the usage for.
          billable_metric_id: nil,
          # An array of strings, representing a way to filter the credit grant this alert
          # applies to, by looking at the credit_grant_type field on the credit grant. This
          # field is only defined for CreditPercentage and CreditBalance alerts
          credit_grant_type_filters: nil,
          # ID of the credit's currency, defaults to USD. If the specific alert type
          # requires a pricing unit/currency, find the ID in the
          # [Metronome app](https://app.metronome.com/offering/pricing-units).
          credit_type_id: nil,
          # A list of custom field filters for alert types that support advanced filtering.
          # Only present for contract invoices.
          custom_field_filters: nil,
          # If provided, will create this alert for this specific customer. To create an
          # alert for all customers, do not specify a `customer_id`.
          customer_id: nil,
          # If true, the alert will evaluate immediately on customers that already meet the
          # alert threshold. If false, it will only evaluate on future customers that
          # trigger the alert threshold. Defaults to true.
          evaluate_on_create: nil,
          # Scopes alert evaluation to a specific presentation group key on individual line
          # items. Only present for spend alerts.
          group_key_filter: nil,
          # Only present for `spend_threshold_reached` alerts. Scope alert to a specific
          # group key on individual line items.
          group_values: nil,
          # Only supported for invoice_total_reached alerts. A list of invoice types to
          # evaluate.
          invoice_types_filter: nil,
          # If provided, will create this alert for this specific plan. To create an alert
          # for all customers, do not specify a `plan_id`.
          plan_id: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              alert_type:
                MetronomeSDK::V1::AlertCreateParams::AlertType::OrSymbol,
              name: String,
              threshold: Float,
              billable_metric_id: String,
              credit_grant_type_filters: T::Array[String],
              credit_type_id: String,
              custom_field_filters:
                T::Array[
                  MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter
                ],
              customer_id: String,
              evaluate_on_create: T::Boolean,
              group_key_filter:
                MetronomeSDK::V1::AlertCreateParams::GroupKeyFilter,
              group_values:
                T::Array[MetronomeSDK::V1::AlertCreateParams::GroupValue],
              invoice_types_filter: T::Array[String],
              plan_id: String,
              uniqueness_key: String,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Type of the alert
        module AlertType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::V1::AlertCreateParams::AlertType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOW_CREDIT_BALANCE_REACHED =
            T.let(
              :low_credit_balance_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          SPEND_THRESHOLD_REACHED =
            T.let(
              :spend_threshold_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          MONTHLY_INVOICE_TOTAL_SPEND_THRESHOLD_REACHED =
            T.let(
              :monthly_invoice_total_spend_threshold_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          LOW_REMAINING_DAYS_IN_PLAN_REACHED =
            T.let(
              :low_remaining_days_in_plan_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          LOW_REMAINING_CREDIT_PERCENTAGE_REACHED =
            T.let(
              :low_remaining_credit_percentage_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          USAGE_THRESHOLD_REACHED =
            T.let(
              :usage_threshold_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          LOW_REMAINING_DAYS_FOR_COMMIT_SEGMENT_REACHED =
            T.let(
              :low_remaining_days_for_commit_segment_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          LOW_REMAINING_COMMIT_BALANCE_REACHED =
            T.let(
              :low_remaining_commit_balance_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          LOW_REMAINING_COMMIT_PERCENTAGE_REACHED =
            T.let(
              :low_remaining_commit_percentage_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          LOW_REMAINING_DAYS_FOR_CONTRACT_CREDIT_SEGMENT_REACHED =
            T.let(
              :low_remaining_days_for_contract_credit_segment_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          LOW_REMAINING_CONTRACT_CREDIT_BALANCE_REACHED =
            T.let(
              :low_remaining_contract_credit_balance_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          LOW_REMAINING_CONTRACT_CREDIT_PERCENTAGE_REACHED =
            T.let(
              :low_remaining_contract_credit_percentage_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          LOW_REMAINING_CONTRACT_CREDIT_AND_COMMIT_BALANCE_REACHED =
            T.let(
              :low_remaining_contract_credit_and_commit_balance_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )
          INVOICE_TOTAL_REACHED =
            T.let(
              :invoice_total_reached,
              MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::AlertCreateParams::AlertType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::Entity::OrSymbol
            )
          end
          attr_accessor :entity

          sig { returns(String) }
          attr_accessor :key

          sig { returns(String) }
          attr_accessor :value

          sig do
            params(
              entity:
                MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::Entity::OrSymbol,
              key: String,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(entity:, key:, value:)
          end

          sig do
            override.returns(
              {
                entity:
                  MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::Entity::OrSymbol,
                key: String,
                value: String
              }
            )
          end
          def to_hash
          end

          module Entity
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::Entity
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONTRACT =
              T.let(
                :Contract,
                MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::Entity::TaggedSymbol
              )
            COMMIT =
              T.let(
                :Commit,
                MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::Entity::TaggedSymbol
              )
            CONTRACT_CREDIT =
              T.let(
                :ContractCredit,
                MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::Entity::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::Entity::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class GroupKeyFilter < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::AlertCreateParams::GroupKeyFilter,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :key

          sig { returns(String) }
          attr_accessor :value

          # Scopes alert evaluation to a specific presentation group key on individual line
          # items. Only present for spend alerts.
          sig { params(key: String, value: String).returns(T.attached_class) }
          def self.new(key:, value:)
          end

          sig { override.returns({ key: String, value: String }) }
          def to_hash
          end
        end

        class GroupValue < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::AlertCreateParams::GroupValue,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :key

          sig { returns(String) }
          attr_accessor :value

          sig { params(key: String, value: String).returns(T.attached_class) }
          def self.new(key:, value:)
          end

          sig { override.returns({ key: String, value: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
