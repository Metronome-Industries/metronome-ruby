# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Alerts#list
        class CustomerAlert < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute alert
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert]
          required :alert, -> { MetronomeSDK::V1::Customers::CustomerAlert::Alert }

          # @!attribute customer_status
          #   The status of the threshold notification. If the notification is archived, null
          #   will be returned.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CustomerAlert::CustomerStatus, nil]
          required :customer_status,
                   enum: -> { MetronomeSDK::V1::Customers::CustomerAlert::CustomerStatus },
                   nil?: true

          # @!attribute triggered_by
          #   If present, indicates the reason the threshold notification was triggered.
          #
          #   @return [String, nil]
          optional :triggered_by, String, nil?: true

          # @!method initialize(alert:, customer_status:, triggered_by: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::CustomerAlert} for more details.
          #
          #   @param alert [MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert]
          #
          #   @param customer_status [Symbol, MetronomeSDK::Models::V1::Customers::CustomerAlert::CustomerStatus, nil] The status of the threshold notification. If the notification is archived, null
          #
          #   @param triggered_by [String, nil] If present, indicates the reason the threshold notification was triggered.

          # @see MetronomeSDK::Models::V1::Customers::CustomerAlert#alert
          class Alert < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #   the Metronome ID of the threshold notification
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   Name of the threshold notification
            #
            #   @return [String]
            required :name, String

            # @!attribute status
            #   Status of the threshold notification
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::Status]
            required :status, enum: -> { MetronomeSDK::V1::Customers::CustomerAlert::Alert::Status }

            # @!attribute threshold
            #   Threshold value of the notification policy
            #
            #   @return [Float]
            required :threshold, Float

            # @!attribute type
            #   Type of the threshold notification
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::Type]
            required :type, enum: -> { MetronomeSDK::V1::Customers::CustomerAlert::Alert::Type }

            # @!attribute updated_at
            #   Timestamp for when the threshold notification was last updated
            #
            #   @return [Time]
            required :updated_at, Time

            # @!attribute credit_grant_type_filters
            #   An array of strings, representing a way to filter the credit grant this
            #   threshold notification applies to, by looking at the credit_grant_type field on
            #   the credit grant. This field is only defined for CreditPercentage and
            #   CreditBalance notifications
            #
            #   @return [Array<String>, nil]
            optional :credit_grant_type_filters, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::CreditTypeData, nil]
            optional :credit_type, -> { MetronomeSDK::CreditTypeData }, nil?: true

            # @!attribute custom_field_filters
            #   A list of custom field filters for notification types that support advanced
            #   filtering
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::CustomFieldFilter>, nil]
            optional :custom_field_filters,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter] }

            # @!attribute group_key_filter
            #   Scopes threshold notification evaluation to a specific presentation group key on
            #   individual line items. Only present for spend notifications.
            #
            #   @return [MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::GroupKeyFilter, nil]
            optional :group_key_filter, -> { MetronomeSDK::V1::Customers::CustomerAlert::Alert::GroupKeyFilter }

            # @!attribute group_values
            #   Only present for `spend_threshold_reached` notifications. Scope notification to
            #   a specific group key on individual line items.
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::GroupValue>, nil]
            optional :group_values,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::CustomerAlert::Alert::GroupValue] }

            # @!attribute invoice_types_filter
            #   Only supported for invoice_total_reached threshold notifications. A list of
            #   invoice types to evaluate.
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

            # @!method initialize(id:, name:, status:, threshold:, type:, updated_at:, credit_grant_type_filters: nil, credit_type: nil, custom_field_filters: nil, group_key_filter: nil, group_values: nil, invoice_types_filter: nil, uniqueness_key: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert} for more details.
            #
            #   @param id [String] the Metronome ID of the threshold notification
            #
            #   @param name [String] Name of the threshold notification
            #
            #   @param status [Symbol, MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::Status] Status of the threshold notification
            #
            #   @param threshold [Float] Threshold value of the notification policy
            #
            #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::Type] Type of the threshold notification
            #
            #   @param updated_at [Time] Timestamp for when the threshold notification was last updated
            #
            #   @param credit_grant_type_filters [Array<String>] An array of strings, representing a way to filter the credit grant this threshol
            #
            #   @param credit_type [MetronomeSDK::Models::CreditTypeData, nil]
            #
            #   @param custom_field_filters [Array<MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::CustomFieldFilter>] A list of custom field filters for notification types that support advanced filt
            #
            #   @param group_key_filter [MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::GroupKeyFilter] Scopes threshold notification evaluation to a specific presentation group key on
            #
            #   @param group_values [Array<MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::GroupValue>] Only present for `spend_threshold_reached` notifications. Scope notification to
            #
            #   @param invoice_types_filter [Array<String>] Only supported for invoice_total_reached threshold notifications. A list of invo
            #
            #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit

            # Status of the threshold notification
            #
            # @see MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert#status
            module Status
              extend MetronomeSDK::Internal::Type::Enum

              ENABLED = :enabled
              ARCHIVED = :archived
              DISABLED = :disabled

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Type of the threshold notification
            #
            # @see MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert#type
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
              LOW_REMAINING_SEAT_BALANCE_REACHED = :low_remaining_seat_balance_reached
              INVOICE_TOTAL_REACHED = :invoice_total_reached

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute entity
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity]
              required :entity,
                       enum: -> { MetronomeSDK::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity }

              # @!attribute key
              #
              #   @return [String]
              required :key, String

              # @!attribute value
              #
              #   @return [String]
              required :value, String

              # @!method initialize(entity:, key:, value:)
              #   @param entity [Symbol, MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::CustomFieldFilter::Entity]
              #   @param key [String]
              #   @param value [String]

              # @see MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert::CustomFieldFilter#entity
              module Entity
                extend MetronomeSDK::Internal::Type::Enum

                CONTRACT = :Contract
                COMMIT = :Commit
                CONTRACT_CREDIT = :ContractCredit

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V1::Customers::CustomerAlert::Alert#group_key_filter
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
              #   Scopes threshold notification evaluation to a specific presentation group key on
              #   individual line items. Only present for spend notifications.
              #
              #   @param key [String]
              #   @param value [String]
            end

            class GroupValue < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute key
              #
              #   @return [String]
              required :key, String

              # @!attribute value
              #
              #   @return [String, nil]
              optional :value, String

              # @!method initialize(key:, value: nil)
              #   @param key [String]
              #   @param value [String]
            end
          end

          # The status of the threshold notification. If the notification is archived, null
          # will be returned.
          #
          # @see MetronomeSDK::Models::V1::Customers::CustomerAlert#customer_status
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
