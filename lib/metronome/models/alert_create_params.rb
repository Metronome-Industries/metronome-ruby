# frozen_string_literal: true

module Metronome
  module Models
    class AlertCreateParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

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
      #   Threshold value of the alert policy. Depending upon the alert type, this number
      #     may represent a financial amount, the days remaining, or a percentage reached.
      #
      #   @return [Float]
      required :threshold, Float

      # @!attribute [r] billable_metric_id
      #   For alerts of type `usage_threshold_reached`, specifies which billable metric to
      #     track the usage for.
      #
      #   @return [String, nil]
      optional :billable_metric_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :billable_metric_id

      # @!attribute [r] credit_grant_type_filters
      #   An array of strings, representing a way to filter the credit grant this alert
      #     applies to, by looking at the credit_grant_type field on the credit grant. This
      #     field is only defined for CreditPercentage and CreditBalance alerts
      #
      #   @return [Array<String>, nil]
      optional :credit_grant_type_filters, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :credit_grant_type_filters

      # @!attribute [r] credit_type_id
      #
      #   @return [String, nil]
      optional :credit_type_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :credit_type_id

      # @!attribute [r] custom_field_filters
      #   A list of custom field filters for alert types that support advanced filtering.
      #     Only present for contract invoices.
      #
      #   @return [Array<Metronome::Models::AlertCreateParams::CustomFieldFilter>, nil]
      optional :custom_field_filters,
               -> { Metronome::ArrayOf[Metronome::Models::AlertCreateParams::CustomFieldFilter] }

      # @!parse
      #   # @return [Array<Metronome::Models::AlertCreateParams::CustomFieldFilter>]
      #   attr_writer :custom_field_filters

      # @!attribute [r] customer_id
      #   If provided, will create this alert for this specific customer. To create an
      #     alert for all customers, do not specify `customer_id` or `plan_id`.
      #
      #   @return [String, nil]
      optional :customer_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :customer_id

      # @!attribute [r] evaluate_on_create
      #   If true, the alert will evaluate immediately on customers that already meet the
      #     alert threshold. If false, it will only evaluate on future customers that
      #     trigger the alert threshold. Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :evaluate_on_create, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :evaluate_on_create

      # @!attribute [r] group_key_filter
      #   Scopes alert evaluation to a specific presentation group key on individual line
      #     items. Only present for spend alerts.
      #
      #   @return [Metronome::Models::AlertCreateParams::GroupKeyFilter, nil]
      optional :group_key_filter, -> { Metronome::Models::AlertCreateParams::GroupKeyFilter }

      # @!parse
      #   # @return [Metronome::Models::AlertCreateParams::GroupKeyFilter]
      #   attr_writer :group_key_filter

      # @!attribute [r] invoice_types_filter
      #   Only supported for invoice_total_reached alerts. A list of invoice types to
      #     evaluate.
      #
      #   @return [Array<String>, nil]
      optional :invoice_types_filter, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :invoice_types_filter

      # @!attribute [r] plan_id
      #   If provided, will create this alert for this specific plan. To create an alert
      #     for all customers, do not specify `customer_id` or `plan_id`.
      #
      #   @return [String, nil]
      optional :plan_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :plan_id

      # @!attribute [r] uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a record is made
      #     with a previously used uniqueness key, a new record will not be created and the
      #     request will fail with a 409 error.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :uniqueness_key

      # @!parse
      #   # @param alert_type [Symbol, Metronome::Models::AlertCreateParams::AlertType]
      #   # @param name [String]
      #   # @param threshold [Float]
      #   # @param billable_metric_id [String]
      #   # @param credit_grant_type_filters [Array<String>]
      #   # @param credit_type_id [String]
      #   # @param custom_field_filters [Array<Metronome::Models::AlertCreateParams::CustomFieldFilter>]
      #   # @param customer_id [String]
      #   # @param evaluate_on_create [Boolean]
      #   # @param group_key_filter [Metronome::Models::AlertCreateParams::GroupKeyFilter]
      #   # @param invoice_types_filter [Array<String>]
      #   # @param plan_id [String]
      #   # @param uniqueness_key [String]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
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
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @abstract
      #
      # Type of the alert
      #
      # @example
      # ```ruby
      # case alert_type
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
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
        #   # @param entity [Symbol, Metronome::Models::AlertCreateParams::CustomFieldFilter::Entity]
        #   # @param key [String]
        #   # @param value [String]
        #   #
        #   def initialize(entity:, key:, value:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case entity
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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
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
