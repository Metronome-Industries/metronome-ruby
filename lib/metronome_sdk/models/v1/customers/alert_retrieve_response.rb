# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Alerts#retrieve
        class AlertRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data]
          required :data, -> { MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data]

          # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse#data
          class Data < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute alert
            #
            #   @return [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert]
            required :alert, -> { MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert }

            # @!attribute customer_status
            #   The status of the customer alert. If the alert is archived, null will be
            #   returned.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::CustomerStatus, nil]
            required :customer_status,
                     enum: -> { MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::CustomerStatus },
                     nil?: true

            # @!attribute triggered_by
            #   If present, indicates the reason the alert was triggered.
            #
            #   @return [String, nil]
            optional :triggered_by, String, nil?: true

            # @!method initialize(alert:, customer_status:, triggered_by: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data} for more
            #   details.
            #
            #   @param alert [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert]
            #
            #   @param customer_status [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::CustomerStatus, nil] The status of the customer alert. If the alert is archived, null will be returne
            #
            #   @param triggered_by [String, nil] If present, indicates the reason the alert was triggered.

            # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data#alert
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::Status]
              required :status,
                       enum: -> { MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::Status }

              # @!attribute threshold
              #   Threshold value of the alert policy
              #
              #   @return [Float]
              required :threshold, Float

              # @!attribute type
              #   Type of the alert
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::Type]
              required :type, enum: -> { MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::Type }

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
              #   @return [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::CreditType, nil]
              optional :credit_type,
                       -> { MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::CreditType },
                       nil?: true

              # @!attribute custom_field_filters
              #   A list of custom field filters for alert types that support advanced filtering
              #
              #   @return [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::CustomFieldFilter>, nil]
              optional :custom_field_filters,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::CustomFieldFilter] }

              # @!attribute group_key_filter
              #   Scopes alert evaluation to a specific presentation group key on individual line
              #   items. Only present for spend alerts.
              #
              #   @return [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::GroupKeyFilter, nil]
              optional :group_key_filter,
                       -> { MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::GroupKeyFilter }

              # @!attribute group_values
              #   Only present for `spend_threshold_reached` alerts. Scope alert to a specific
              #   group key on individual line items.
              #
              #   @return [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::GroupValue>, nil]
              optional :group_values,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::GroupValue] }

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

              # @!method initialize(id:, name:, status:, threshold:, type:, updated_at:, credit_grant_type_filters: nil, credit_type: nil, custom_field_filters: nil, group_key_filter: nil, group_values: nil, invoice_types_filter: nil, uniqueness_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert} for
              #   more details.
              #
              #   @param id [String] the Metronome ID of the alert
              #
              #   @param name [String] Name of the alert
              #
              #   @param status [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::Status] Status of the alert
              #
              #   @param threshold [Float] Threshold value of the alert policy
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::Type] Type of the alert
              #
              #   @param updated_at [Time] Timestamp for when the alert was last updated
              #
              #   @param credit_grant_type_filters [Array<String>] An array of strings, representing a way to filter the credit grant this alert ap
              #
              #   @param credit_type [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::CreditType, nil]
              #
              #   @param custom_field_filters [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::CustomFieldFilter>] A list of custom field filters for alert types that support advanced filtering
              #
              #   @param group_key_filter [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::GroupKeyFilter] Scopes alert evaluation to a specific presentation group key on individual line
              #
              #   @param group_values [Array<MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::GroupValue>] Only present for `spend_threshold_reached` alerts. Scope alert to a specific gro
              #
              #   @param invoice_types_filter [Array<String>] Only supported for invoice_total_reached alerts. A list of invoice types to eval
              #
              #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit

              # Status of the alert
              #
              # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert#status
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
              # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert#type
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

              # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert#credit_type
              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute entity
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::CustomFieldFilter::Entity]
                required :entity,
                         enum: -> { MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::CustomFieldFilter::Entity }

                # @!attribute key
                #
                #   @return [String]
                required :key, String

                # @!attribute value
                #
                #   @return [String]
                required :value, String

                # @!method initialize(entity:, key:, value:)
                #   @param entity [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::CustomFieldFilter::Entity]
                #   @param key [String]
                #   @param value [String]

                # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert::CustomFieldFilter#entity
                module Entity
                  extend MetronomeSDK::Internal::Type::Enum

                  CONTRACT = :Contract
                  COMMIT = :Commit
                  CONTRACT_CREDIT = :ContractCredit

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data::Alert#group_key_filter
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

              class GroupValue < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute key
                #
                #   @return [String]
                required :key, String

                # @!attribute value
                #
                #   @return [String]
                required :value, String

                # @!method initialize(key:, value:)
                #   @param key [String]
                #   @param value [String]
              end
            end

            # The status of the customer alert. If the alert is archived, null will be
            # returned.
            #
            # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse::Data#customer_status
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
      end
    end
  end
end
