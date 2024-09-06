# frozen_string_literal: true

module Metronome
  module Models
    class CustomerAlert < BaseModel
      # @!attribute [rw] alert
      #   @return [Metronome::Models::CustomerAlert::Alert]
      required :alert, -> { Metronome::Models::CustomerAlert::Alert }

      # @!attribute [rw] customer_status
      #   The status of the customer alert. If the alert is archived, null will be returned.
      #   @return [Symbol]
      required :customer_status, Metronome::Enum.new(:ok, :in_alarm, :evaluating)

      # @!attribute [rw] triggered_by
      #   If present, indicates the reason the alert was triggered.
      #   @return [String]
      optional :triggered_by, String

      class Alert < BaseModel
        # @!attribute [rw] id
        #   the Metronome ID of the alert
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   Name of the alert
        #   @return [String]
        required :name_, String

        # @!attribute [rw] status
        #   Status of the alert
        #   @return [Symbol]
        required :status, Metronome::Enum.new(:enabled, :archived, :disabled)

        # @!attribute [rw] threshold
        #   Threshold value of the alert policy
        #   @return [Float]
        required :threshold, Float

        # @!attribute [rw] type
        #   Type of the alert
        #   @return [Symbol]
        required :type,
                 Metronome::Enum.new(
                   :low_credit_balance_reached,
                   :spend_threshold_reached,
                   :monthly_invoice_total_spend_threshold_reached,
                   :low_remaining_days_in_plan_reached,
                   :low_remaining_credit_percentage_reached,
                   :usage_threshold_reached,
                   :low_remaining_days_for_commit_segment_reached,
                   :low_remaining_commit_balance_reached,
                   :low_remaining_commit_percentage_reached,
                   :low_remaining_days_for_contract_credit_segment_reached,
                   :low_remaining_contract_credit_balance_reached,
                   :low_remaining_contract_credit_percentage_reached,
                   :low_remaining_contract_credit_and_commit_balance_reached,
                   :invoice_total_reached
                 )

        # @!attribute [rw] updated_at
        #   Timestamp for when the alert was last updated
        #   @return [String]
        required :updated_at, String

        # @!attribute [rw] credit_grant_type_filters
        #   An array of strings, representing a way to filter the credit grant this alert applies to, by looking at the credit_grant_type field on the credit grant. This field is only defined for CreditPercentage and CreditBalance alerts
        #   @return [Array<String>]
        optional :credit_grant_type_filters, Metronome::ArrayOf.new(String)

        # @!attribute [rw] credit_type
        #   @return [Metronome::Models::CreditType]
        optional :credit_type, -> { Metronome::Models::CreditType }

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

        class CustomFieldFilter < BaseModel
          # @!attribute [rw] entity
          #   @return [Symbol]
          required :entity, Metronome::Enum.new(:Contract, :Commit, :ContractCredit)

          # @!attribute [rw] key
          #   @return [String]
          required :key, String

          # @!attribute [rw] value
          #   @return [String]
          required :value, String
        end

        class GroupKeyFilter < BaseModel
          # @!attribute [rw] key
          #   @return [String]
          required :key, String

          # @!attribute [rw] value
          #   @return [String]
          required :value, String
        end
      end
    end
  end
end
