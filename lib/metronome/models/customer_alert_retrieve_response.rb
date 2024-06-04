# frozen_string_literal: true

module Metronome
  module Models
    class CustomerAlertRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CustomerAlertRetrieveResponse::Data]
      required :data, -> { Metronome::Models::CustomerAlertRetrieveResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] alert
        #   @return [Metronome::Models::CustomerAlertRetrieveResponse::Data::Alert]
        required :alert, -> { Metronome::Models::CustomerAlertRetrieveResponse::Data::Alert }

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
                     :low_remaining_contract_credit_percentage_reached
                   )

          # @!attribute [rw] updated_at
          #   Timestamp for when the alert was last updated
          #   @return [String]
          required :updated_at, String

          # @!attribute [rw] credit_type
          #   @return [Metronome::Models::CustomerAlertRetrieveResponse::Data::Alert::CreditType]
          optional :credit_type, -> { Metronome::Models::CustomerAlertRetrieveResponse::Data::Alert::CreditType }

          # @!attribute [rw] custom_field_filters
          #   A list of custom field filters for alert types that support advanced filtering
          #   @return [Array<Metronome::Models::CustomerAlertRetrieveResponse::Data::Alert::CustomFieldFilter>]
          optional :custom_field_filters,
                   Metronome::ArrayOf.new(-> { Metronome::Models::CustomerAlertRetrieveResponse::Data::Alert::CustomFieldFilter })

          # @!attribute [rw] group_key_filter
          #   Scopes alert evaluation to a specific presentation group key on individual line items. Only present for spend alerts.
          #   @return [Metronome::Models::CustomerAlertRetrieveResponse::Data::Alert::GroupKeyFilter]
          optional :group_key_filter,
                   -> { Metronome::Models::CustomerAlertRetrieveResponse::Data::Alert::GroupKeyFilter }

          # @!attribute [rw] uniqueness_key
          #   Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error.
          #   @return [String]
          optional :uniqueness_key, String

          class CreditType < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] name_
            #   @return [String]
            required :name_, String
          end

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
end
