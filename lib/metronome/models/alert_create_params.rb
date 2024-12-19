# frozen_string_literal: true

module Metronome
  module Models
    class AlertCreateParams < Metronome::BaseModel
      # @!attribute alert_type
      #   Type of the alert
      #
      #   @return [Symbol, Metronome::Models::AlertCreateParams::AlertType]
      required :alert_type, enum: -> { Metronome::Models::AlertCreateParams::AlertType }

      # @!attribute name
      #   Name of the alert
      #
      #   @return [String]
      required :name, String

      # @!attribute threshold
      #   Threshold value of the alert policy.  Depending upon the alert type, this number may represent a financial amount, the days remaining, or a percentage reached.
      #
      #   @return [Float]
      required :threshold, Float

      # @!attribute billable_metric_id
      #   For alerts of type `usage_threshold_reached`, specifies which billable metric to track the usage for.
      #
      #   @return [String]
      optional :billable_metric_id, String

      # @!attribute credit_grant_type_filters
      #   An array of strings, representing a way to filter the credit grant this alert applies to, by looking at the credit_grant_type field on the credit grant. This field is only defined for CreditPercentage and CreditBalance alerts
      #
      #   @return [Array<String>]
      optional :credit_grant_type_filters, Metronome::ArrayOf[String]

      # @!attribute credit_type_id
      #
      #   @return [String]
      optional :credit_type_id, String

      # @!attribute custom_field_filters
      #   Only present for beta contract invoices. This field's availability is dependent on your client's configuration. A list of custom field filters for alert types that support advanced filtering
      #
      #   @return [Array<Metronome::Models::AlertCreateParams::CustomFieldFilter>]
      optional :custom_field_filters,
               Metronome::ArrayOf[-> { Metronome::Models::AlertCreateParams::CustomFieldFilter }]

      # @!attribute customer_id
      #   If provided, will create this alert for this specific customer. To create an alert for all customers, do not specify `customer_id` or `plan_id`.
      #
      #   @return [String]
      optional :customer_id, String

      # @!attribute evaluate_on_create
      #   If true, the alert will evaluate immediately on customers that already meet the alert threshold. If false, it will only evaluate on future customers that trigger the alert threshold. Defaults to true.
      #
      #   @return [Boolean]
      optional :evaluate_on_create, Metronome::BooleanModel

      # @!attribute group_key_filter
      #   Scopes alert evaluation to a specific presentation group key on individual line items. Only present for spend alerts.
      #
      #   @return [Metronome::Models::AlertCreateParams::GroupKeyFilter]
      optional :group_key_filter, -> { Metronome::Models::AlertCreateParams::GroupKeyFilter }

      # @!attribute invoice_types_filter
      #   Only supported for invoice_total_reached alerts. A list of invoice types to evaluate.
      #
      #   @return [Array<String>]
      optional :invoice_types_filter, Metronome::ArrayOf[String]

      # @!attribute plan_id
      #   If provided, will create this alert for this specific plan. To create an alert for all customers, do not specify `customer_id` or `plan_id`.
      #
      #   @return [String]
      optional :plan_id, String

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error.
      #
      #   @return [String]
      optional :uniqueness_key, String

      # @!parse
      #   # @param alert_type [String] Type of the alert
      #   #
      #   # @param name [String] Name of the alert
      #   #
      #   # @param threshold [Float] Threshold value of the alert policy. Depending upon the alert type, this number
      #   #   may represent a financial amount, the days remaining, or a percentage reached.
      #   #
      #   # @param billable_metric_id [String, nil] For alerts of type `usage_threshold_reached`, specifies which billable metric to
      #   #   track the usage for.
      #   #
      #   # @param credit_grant_type_filters [Array<String>, nil] An array of strings, representing a way to filter the credit grant this alert
      #   #   applies to, by looking at the credit_grant_type field on the credit grant. This
      #   #   field is only defined for CreditPercentage and CreditBalance alerts
      #   #
      #   # @param credit_type_id [String, nil]
      #   #
      #   # @param custom_field_filters [Array<Metronome::Models::AlertCreateParams::CustomFieldFilter>, nil] Only present for beta contract invoices. This field's availability is dependent
      #   #   on your client's configuration. A list of custom field filters for alert types
      #   #   that support advanced filtering
      #   #
      #   # @param customer_id [String, nil] If provided, will create this alert for this specific customer. To create an
      #   #   alert for all customers, do not specify `customer_id` or `plan_id`.
      #   #
      #   # @param evaluate_on_create [Boolean, nil] If true, the alert will evaluate immediately on customers that already meet the
      #   #   alert threshold. If false, it will only evaluate on future customers that
      #   #   trigger the alert threshold. Defaults to true.
      #   #
      #   # @param group_key_filter [Metronome::Models::AlertCreateParams::GroupKeyFilter, nil] Scopes alert evaluation to a specific presentation group key on individual line
      #   #   items. Only present for spend alerts.
      #   #
      #   # @param invoice_types_filter [Array<String>, nil] Only supported for invoice_total_reached alerts. A list of invoice types to
      #   #   evaluate.
      #   #
      #   # @param plan_id [String, nil] If provided, will create this alert for this specific plan. To create an alert
      #   #   for all customers, do not specify `customer_id` or `plan_id`.
      #   #
      #   # @param uniqueness_key [String, nil] Prevents the creation of duplicates. If a request to create a record is made
      #   #   with a previously used uniqueness key, a new record will not be created and the
      #   #   request will fail with a 409 error.
      #   #
      #   def initialize(
      #     alert_type:,
      #     name:,
      #     threshold:,
      #     billable_metric_id: nil,
      #     credit_grant_type_filters: nil,
      #     credit_type_id: nil,
      #     custom_field_filters: nil,
      #     customer_id: nil,
      #     evaluate_on_create: nil,
      #     group_key_filter: nil,
      #     invoice_types_filter: nil,
      #     plan_id: nil,
      #     uniqueness_key: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # Type of the alert
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :low_credit_balance_reached
      #   # ...
      # in :spend_threshold_reached
      #   # ...
      # in :monthly_invoice_total_spend_threshold_reached
      #   # ...
      # in :low_remaining_days_in_plan_reached
      #   # ...
      # in :low_remaining_credit_percentage_reached
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class AlertType < Metronome::Enum
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
      end

      class CustomFieldFilter < Metronome::BaseModel
        # @!attribute entity
        #
        #   @return [Symbol, Metronome::Models::AlertCreateParams::CustomFieldFilter::Entity]
        required :entity, enum: -> { Metronome::Models::AlertCreateParams::CustomFieldFilter::Entity }

        # @!attribute key
        #
        #   @return [String]
        required :key, String

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!parse
        #   # @param entity [String]
        #   # @param key [String]
        #   # @param value [String]
        #   #
        #   def initialize(entity:, key:, value:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :Contract
        #   # ...
        # in :Commit
        #   # ...
        # in :ContractCredit
        #   # ...
        # end
        # ```
        class Entity < Metronome::Enum
          CONTRACT = :Contract
          COMMIT = :Commit
          CONTRACT_CREDIT = :ContractCredit
        end
      end

      class GroupKeyFilter < Metronome::BaseModel
        # @!attribute key
        #
        #   @return [String]
        required :key, String

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!parse
        #   # Scopes alert evaluation to a specific presentation group key on individual line
        #   #   items. Only present for spend alerts.
        #   #
        #   # @param key [String]
        #   # @param value [String]
        #   #
        #   def initialize(key:, value:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
