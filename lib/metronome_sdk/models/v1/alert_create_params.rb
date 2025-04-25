# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Alerts#create
      class AlertCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute alert_type
        #   Type of the alert
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::AlertCreateParams::AlertType]
        required :alert_type, enum: -> { MetronomeSDK::Models::V1::AlertCreateParams::AlertType }

        # @!attribute name
        #   Name of the alert
        #
        #   @return [String]
        required :name, String

        # @!attribute threshold
        #   Threshold value of the alert policy. Depending upon the alert type, this number
        #   may represent a financial amount, the days remaining, or a percentage reached.
        #
        #   @return [Float]
        required :threshold, Float

        # @!attribute billable_metric_id
        #   For alerts of type `usage_threshold_reached`, specifies which billable metric to
        #   track the usage for.
        #
        #   @return [String, nil]
        optional :billable_metric_id, String

        # @!attribute credit_grant_type_filters
        #   An array of strings, representing a way to filter the credit grant this alert
        #   applies to, by looking at the credit_grant_type field on the credit grant. This
        #   field is only defined for CreditPercentage and CreditBalance alerts
        #
        #   @return [Array<String>, nil]
        optional :credit_grant_type_filters, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute credit_type_id
        #
        #   @return [String, nil]
        optional :credit_type_id, String

        # @!attribute custom_field_filters
        #   A list of custom field filters for alert types that support advanced filtering.
        #   Only present for contract invoices.
        #
        #   @return [Array<MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter>, nil]
        optional :custom_field_filters,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter] }

        # @!attribute customer_id
        #   If provided, will create this alert for this specific customer. To create an
        #   alert for all customers, do not specify `customer_id` or `plan_id`.
        #
        #   @return [String, nil]
        optional :customer_id, String

        # @!attribute evaluate_on_create
        #   If true, the alert will evaluate immediately on customers that already meet the
        #   alert threshold. If false, it will only evaluate on future customers that
        #   trigger the alert threshold. Defaults to true.
        #
        #   @return [Boolean, nil]
        optional :evaluate_on_create, MetronomeSDK::Internal::Type::Boolean

        # @!attribute group_key_filter
        #   Scopes alert evaluation to a specific presentation group key on individual line
        #   items. Only present for spend alerts.
        #
        #   @return [MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter, nil]
        optional :group_key_filter, -> { MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter }

        # @!attribute invoice_types_filter
        #   Only supported for invoice_total_reached alerts. A list of invoice types to
        #   evaluate.
        #
        #   @return [Array<String>, nil]
        optional :invoice_types_filter, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute plan_id
        #   If provided, will create this alert for this specific plan. To create an alert
        #   for all customers, do not specify `customer_id` or `plan_id`.
        #
        #   @return [String, nil]
        optional :plan_id, String

        # @!attribute uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made
        #   with a previously used uniqueness key, a new record will not be created and the
        #   request will fail with a 409 error.
        #
        #   @return [String, nil]
        optional :uniqueness_key, String

        # @!method initialize(alert_type:, name:, threshold:, billable_metric_id: nil, credit_grant_type_filters: nil, credit_type_id: nil, custom_field_filters: nil, customer_id: nil, evaluate_on_create: nil, group_key_filter: nil, invoice_types_filter: nil, plan_id: nil, uniqueness_key: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::AlertCreateParams} for more details.
        #
        #   @param alert_type [Symbol, MetronomeSDK::Models::V1::AlertCreateParams::AlertType] Type of the alert
        #
        #   @param name [String] Name of the alert
        #
        #   @param threshold [Float] Threshold value of the alert policy. Depending upon the alert type, this number
        #   ...
        #
        #   @param billable_metric_id [String] For alerts of type `usage_threshold_reached`, specifies which billable metric to
        #   ...
        #
        #   @param credit_grant_type_filters [Array<String>] An array of strings, representing a way to filter the credit grant this alert ap
        #   ...
        #
        #   @param credit_type_id [String]
        #
        #   @param custom_field_filters [Array<MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter>] A list of custom field filters for alert types that support advanced filtering.
        #   ...
        #
        #   @param customer_id [String] If provided, will create this alert for this specific customer. To create an ale
        #   ...
        #
        #   @param evaluate_on_create [Boolean] If true, the alert will evaluate immediately on customers that already meet the
        #   ...
        #
        #   @param group_key_filter [MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter] Scopes alert evaluation to a specific presentation group key on individual line
        #   ...
        #
        #   @param invoice_types_filter [Array<String>] Only supported for invoice_total_reached alerts. A list of invoice types to eval
        #   ...
        #
        #   @param plan_id [String] If provided, will create this alert for this specific plan. To create an alert f
        #   ...
        #
        #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
        #   ...
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # Type of the alert
        module AlertType
          extend MetronomeSDK::Internal::Type::Enum

          LOW_CREDIT_BALANCE_REACHED = :low_credit_balance_reached
          SPEND_THRESHOLD_REACHED = :spend_threshold_reached
          MONTHLY_INVOICE_TOTAL_SPEND_THRESHOLD_REACHED = :monthly_invoice_total_spend_threshold_reached
          LOW_REMAINING_DAYS_IN_PLAN_REACHED = :low_remaining_days_in_plan_reached
          LOW_REMAINING_CREDIT_PERCENTAGE_REACHED = :low_remaining_credit_percentage_reached
          USAGE_THRESHOLD_REACHED = :usage_threshold_reached
          LOW_REMAINING_DAYS_FOR_COMMIT_SEGMENT_REACHED = :low_remaining_days_for_commit_segment_reached
          LOW_REMAINING_COMMIT_BALANCE_REACHED = :low_remaining_commit_balance_reached
          LOW_REMAINING_COMMIT_PERCENTAGE_REACHED = :low_remaining_commit_percentage_reached
          LOW_REMAINING_DAYS_FOR_CONTRACT_CREDIT_SEGMENT_REACHED =
            :low_remaining_days_for_contract_credit_segment_reached
          LOW_REMAINING_CONTRACT_CREDIT_BALANCE_REACHED = :low_remaining_contract_credit_balance_reached
          LOW_REMAINING_CONTRACT_CREDIT_PERCENTAGE_REACHED = :low_remaining_contract_credit_percentage_reached
          LOW_REMAINING_CONTRACT_CREDIT_AND_COMMIT_BALANCE_REACHED =
            :low_remaining_contract_credit_and_commit_balance_reached
          INVOICE_TOTAL_REACHED = :invoice_total_reached

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute entity
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter::Entity]
          required :entity, enum: -> { MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter::Entity }

          # @!attribute key
          #
          #   @return [String]
          required :key, String

          # @!attribute value
          #
          #   @return [String]
          required :value, String

          # @!method initialize(entity:, key:, value:)
          #   @param entity [Symbol, MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter::Entity]
          #   @param key [String]
          #   @param value [String]

          # @see MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter#entity
          module Entity
            extend MetronomeSDK::Internal::Type::Enum

            CONTRACT = :Contract
            COMMIT = :Commit
            CONTRACT_CREDIT = :ContractCredit

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class GroupKeyFilter < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute key
          #
          #   @return [String]
          required :key, String

          # @!attribute value
          #
          #   @return [String]
          required :value, String

          # @!method initialize(key:, value:)
          #   Scopes alert evaluation to a specific presentation group key on individual line
          #   items. Only present for spend alerts.
          #
          #   @param key [String]
          #   @param value [String]
        end
      end
    end
  end
end
