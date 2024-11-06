# frozen_string_literal: true

module Metronome
  module Models
    class CustomerAlert < Metronome::BaseModel
      # @!attribute [rw] alert
      #   @return [Metronome::Models::CustomerAlert::Alert]
      required :alert, -> { Metronome::Models::CustomerAlert::Alert }

      # @!attribute [rw] customer_status
      #   The status of the customer alert. If the alert is archived, null will be returned.
      #   @return [Symbol, Metronome::Models::CustomerAlert::CustomerStatus]
      required :customer_status, enum: -> { Metronome::Models::CustomerAlert::CustomerStatus }

      # @!attribute [rw] triggered_by
      #   If present, indicates the reason the alert was triggered.
      #   @return [String]
      optional :triggered_by, String

      class Alert < Metronome::BaseModel
        # @!attribute [rw] id
        #   the Metronome ID of the alert
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   Name of the alert
        #   @return [String]
        required :name_, String, api_name: :name

        # @!attribute [rw] status
        #   Status of the alert
        #   @return [Symbol, Metronome::Models::CustomerAlert::Alert::Status]
        required :status, enum: -> { Metronome::Models::CustomerAlert::Alert::Status }

        # @!attribute [rw] threshold
        #   Threshold value of the alert policy
        #   @return [Float]
        required :threshold, Float

        # @!attribute [rw] type
        #   Type of the alert
        #   @return [Symbol, Metronome::Models::CustomerAlert::Alert::Type]
        required :type, enum: -> { Metronome::Models::CustomerAlert::Alert::Type }

        # @!attribute [rw] updated_at
        #   Timestamp for when the alert was last updated
        #   @return [Time]
        required :updated_at, Time

        # @!attribute [rw] credit_grant_type_filters
        #   An array of strings, representing a way to filter the credit grant this alert applies to, by looking at the credit_grant_type field on the credit grant. This field is only defined for CreditPercentage and CreditBalance alerts
        #   @return [Array<String>]
        optional :credit_grant_type_filters, Metronome::ArrayOf.new(String)

        # @!attribute [rw] credit_type
        #   @return [Metronome::Models::CreditTypeData]
        optional :credit_type, -> { Metronome::Models::CreditTypeData }

        # @!attribute [rw] custom_field_filters
        #   A list of custom field filters for alert types that support advanced filtering
        #   @return [Array<Metronome::Models::CustomerAlert::Alert::CustomFieldFilter>]
        optional :custom_field_filters,
                 Metronome::ArrayOf.new(-> { Metronome::Models::CustomerAlert::Alert::CustomFieldFilter })

        # @!attribute [rw] group_key_filter
        #   Scopes alert evaluation to a specific presentation group key on individual line items. Only present for spend alerts.
        #   @return [Metronome::Models::CustomerAlert::Alert::GroupKeyFilter]
        optional :group_key_filter, -> { Metronome::Models::CustomerAlert::Alert::GroupKeyFilter }

        # @!attribute [rw] invoice_types_filter
        #   Only supported for invoice_total_reached alerts. A list of invoice types to evaluate.
        #   @return [Array<String>]
        optional :invoice_types_filter, Metronome::ArrayOf.new(String)

        # @!attribute [rw] uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error.
        #   @return [String]
        optional :uniqueness_key, String

        # Status of the alert
        class Status < Metronome::Enum
          ENABLED = :enabled
          ARCHIVED = :archived
          DISABLED = :disabled
        end

        # Type of the alert
        class Type < Metronome::Enum
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
          # @!attribute [rw] entity
          #   @return [Symbol, Metronome::Models::CustomerAlert::Alert::CustomFieldFilter::Entity]
          required :entity, enum: -> { Metronome::Models::CustomerAlert::Alert::CustomFieldFilter::Entity }

          # @!attribute [rw] key
          #   @return [String]
          required :key, String

          # @!attribute [rw] value
          #   @return [String]
          required :value, String

          class Entity < Metronome::Enum
            CONTRACT = :Contract
            COMMIT = :Commit
            CONTRACT_CREDIT = :ContractCredit
          end

          # @!parse
          #   # Create a new instance of CustomFieldFilter from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :entity
          #   #   @option data [String] :key
          #   #   @option data [String] :value
          #   def initialize(data = {}) = super
        end

        class GroupKeyFilter < Metronome::BaseModel
          # @!attribute [rw] key
          #   @return [String]
          required :key, String

          # @!attribute [rw] value
          #   @return [String]
          required :value, String

          # @!parse
          #   # Create a new instance of GroupKeyFilter from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :key
          #   #   @option data [String] :value
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Alert from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id the Metronome ID of the alert
        #   #   @option data [String] :name Name of the alert
        #   #   @option data [String] :status Status of the alert
        #   #   @option data [Float] :threshold Threshold value of the alert policy
        #   #   @option data [String] :type Type of the alert
        #   #   @option data [String] :updated_at Timestamp for when the alert was last updated
        #   #   @option data [Array<String>, nil] :credit_grant_type_filters An array of strings, representing a way to filter the credit grant this alert
        #   #     applies to, by looking at the credit_grant_type field on the credit grant. This
        #   #     field is only defined for CreditPercentage and CreditBalance alerts
        #   #   @option data [Object, nil] :credit_type
        #   #   @option data [Array<Object>, nil] :custom_field_filters A list of custom field filters for alert types that support advanced filtering
        #   #   @option data [Object, nil] :group_key_filter Scopes alert evaluation to a specific presentation group key on individual line
        #   #     items. Only present for spend alerts.
        #   #   @option data [Array<String>, nil] :invoice_types_filter Only supported for invoice_total_reached alerts. A list of invoice types to
        #   #     evaluate.
        #   #   @option data [String, nil] :uniqueness_key Prevents the creation of duplicates. If a request to create a record is made
        #   #     with a previously used uniqueness key, a new record will not be created and the
        #   #     request will fail with a 409 error.
        #   def initialize(data = {}) = super
      end

      # The status of the customer alert. If the alert is archived, null will be returned.
      class CustomerStatus < Metronome::Enum
        OK = :ok
        IN_ALARM = :in_alarm
        EVALUATING = :evaluating
      end

      # @!parse
      #   # Create a new instance of CustomerAlert from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :alert
      #   #   @option data [String] :customer_status The status of the customer alert. If the alert is archived, null will be
      #   #     returned.
      #   #   @option data [String, nil] :triggered_by If present, indicates the reason the alert was triggered.
      #   def initialize(data = {}) = super
    end
  end
end
