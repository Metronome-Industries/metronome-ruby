# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CustomerAlert < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute alert
          #
          #   @return [MetronomeSDK::V1::Customers::CustomerAlert::Alert]
          required :alert, -> { MetronomeSDK::V1::Customers::CustomerAlert::Alert }

          # @!attribute customer_status
          #   The status of the customer alert. If the alert is archived, null will be
          #   returned.
          #
          #   @return [Symbol, MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus, nil]
          required :customer_status,
                   enum: -> { MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus },
                   nil?: true

          # @!attribute triggered_by
          #   If present, indicates the reason the alert was triggered.
          #
          #   @return [String, nil]
          optional :triggered_by, String, nil?: true

          # @!method initialize(alert:, customer_status:, triggered_by: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::V1::Customers::CustomerAlert} for more details.
          #
          #   @param alert [MetronomeSDK::V1::Customers::CustomerAlert::Alert]
          #
          #   @param customer_status [Symbol, MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus, nil] The status of the customer alert. If the alert is archived, null will be returne
          #
          #   @param triggered_by [String, nil] If present, indicates the reason the alert was triggered.

          # @see MetronomeSDK::V1::Customers::CustomerAlert#alert
          class Alert < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #   the Metronome ID of the alert
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   Name of the alert
            #
            #   @return [String]
            required :name, String

            # @!attribute status
            #   Status of the alert
            #
            #   @return [Symbol, MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status]
            required :status, enum: -> { MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status }

            # @!attribute threshold
            #   Threshold value of the alert policy
            #
            #   @return [Float]
            required :threshold, Float

            # @!attribute type
            #   Type of the alert
            #
            #   @return [Symbol, MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type]
            required :type, enum: -> { MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type }

            # @!attribute updated_at
            #   Timestamp for when the alert was last updated
            #
            #   @return [Time]
            required :updated_at, Time

            # @!attribute credit_grant_type_filters
            #   An array of strings, representing a way to filter the credit grant this alert
            #   applies to, by looking at the credit_grant_type field on the credit grant. This
            #   field is only defined for CreditPercentage and CreditBalance alerts
            #
            #   @return [Array<String>, nil]
            optional :credit_grant_type_filters, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::CreditTypeData, nil]
            optional :credit_type, -> { MetronomeSDK::CreditTypeData }, nil?: true

            # @!attribute custom_field_filters
            #   A list of custom field filters for alert types that support advanced filtering
            #
            #   @return [Array<MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter>, nil]
            optional :custom_field_filters,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter]
                     }

            # @!attribute group_key_filter
            #   Scopes alert evaluation to a specific presentation group key on individual line
            #   items. Only present for spend alerts.
            #
            #   @return [MetronomeSDK::V1::Customers::CustomerAlert::Alert::GroupKeyFilter, nil]
            optional :group_key_filter,
                     -> {
                       MetronomeSDK::V1::Customers::CustomerAlert::Alert::GroupKeyFilter
                     }

            # @!attribute invoice_types_filter
            #   Only supported for invoice_total_reached alerts. A list of invoice types to
            #   evaluate.
            #
            #   @return [Array<String>, nil]
            optional :invoice_types_filter, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute uniqueness_key
            #   Prevents the creation of duplicates. If a request to create a record is made
            #   with a previously used uniqueness key, a new record will not be created and the
            #   request will fail with a 409 error.
            #
            #   @return [String, nil]
            optional :uniqueness_key, String

            # @!method initialize(id:, name:, status:, threshold:, type:, updated_at:, credit_grant_type_filters: nil, credit_type: nil, custom_field_filters: nil, group_key_filter: nil, invoice_types_filter: nil, uniqueness_key: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::V1::Customers::CustomerAlert::Alert} for more details.
            #
            #   @param id [String] the Metronome ID of the alert
            #
            #   @param name [String] Name of the alert
            #
            #   @param status [Symbol, MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status] Status of the alert
            #
            #   @param threshold [Float] Threshold value of the alert policy
            #
            #   @param type [Symbol, MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type] Type of the alert
            #
            #   @param updated_at [Time] Timestamp for when the alert was last updated
            #
            #   @param credit_grant_type_filters [Array<String>] An array of strings, representing a way to filter the credit grant this alert ap
            #
            #   @param credit_type [MetronomeSDK::CreditTypeData, nil]
            #
            #   @param custom_field_filters [Array<MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter>] A list of custom field filters for alert types that support advanced filtering
            #
            #   @param group_key_filter [MetronomeSDK::V1::Customers::CustomerAlert::Alert::GroupKeyFilter] Scopes alert evaluation to a specific presentation group key on individual line
            #
            #   @param invoice_types_filter [Array<String>] Only supported for invoice_total_reached alerts. A list of invoice types to eval
            #
            #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit

            # Status of the alert
            #
            # @see MetronomeSDK::V1::Customers::CustomerAlert::Alert#status
            module Status
              extend MetronomeSDK::Internal::Type::Enum

              ENABLED = :enabled
              ARCHIVED = :archived
              DISABLED = :disabled

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Type of the alert
            #
            # @see MetronomeSDK::V1::Customers::CustomerAlert::Alert#type
            module Type
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
              #   @return [Symbol, MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity]
              required :entity,
                       enum: -> {
                         MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity
                       }

              # @!attribute key
              #
              #   @return [String]
              required :key, String

              # @!attribute value
              #
              #   @return [String]
              required :value, String

              # @!method initialize(entity:, key:, value:)
              #   @param entity [Symbol, MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity]
              #   @param key [String]
              #   @param value [String]

              # @see MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter#entity
              module Entity
                extend MetronomeSDK::Internal::Type::Enum

                CONTRACT = :Contract
                COMMIT = :Commit
                CONTRACT_CREDIT = :ContractCredit

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::V1::Customers::CustomerAlert::Alert#group_key_filter
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

          # The status of the customer alert. If the alert is archived, null will be
          # returned.
          #
          # @see MetronomeSDK::V1::Customers::CustomerAlert#customer_status
          module CustomerStatus
            extend MetronomeSDK::Internal::Type::Enum

            OK = :ok
            IN_ALARM = :in_alarm
            EVALUATING = :evaluating

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      CustomerAlert = Customers::CustomerAlert
    end
  end
end
