# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Alerts#create
      class AlertCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute alert_type
        #   Type of the threshold notification
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::AlertCreateParams::AlertType]
        required :alert_type, enum: -> { MetronomeSDK::V1::AlertCreateParams::AlertType }

        # @!attribute name
        #   Name of the threshold notification
        #
        #   @return [String]
        required :name, String

        # @!attribute threshold
        #   Threshold value of the notification policy. Depending upon the notification
        #   type, this number may represent a financial amount, the days remaining, or a
        #   percentage reached.
        #
        #   @return [Float]
        required :threshold, Float

        # @!attribute billable_metric_id
        #   For threshold notifications of type `usage_threshold_reached`, specifies which
        #   billable metric to track the usage for.
        #
        #   @return [String, nil]
        optional :billable_metric_id, String

        # @!attribute credit_grant_type_filters
        #   An array of strings, representing a way to filter the credit grant this
        #   threshold notification applies to, by looking at the credit_grant_type field on
        #   the credit grant. This field is only defined for CreditPercentage and
        #   CreditBalance notifications
        #
        #   @return [Array<String>, nil]
        optional :credit_grant_type_filters, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute credit_type_id
        #   ID of the credit's currency, defaults to USD. If the specific notification type
        #   requires a pricing unit/currency, find the ID in the
        #   [Metronome app](https://app.metronome.com/offering/pricing-units).
        #
        #   @return [String, nil]
        optional :credit_type_id, String

        # @!attribute custom_field_filters
        #   A list of custom field filters for threshold notification types that support
        #   advanced filtering. Only present for contract invoices.
        #
        #   @return [Array<MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter>, nil]
        optional :custom_field_filters,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter] }

        # @!attribute customer_id
        #   If provided, will create this threshold notification for this specific customer.
        #   To create a notification for all customers, do not specify a `customer_id`.
        #
        #   @return [String, nil]
        optional :customer_id, String

        # @!attribute evaluate_on_create
        #   If true, the threshold notification will evaluate immediately on customers that
        #   already meet the notification threshold. If false, it will only evaluate on
        #   future customers that trigger the threshold. Defaults to true.
        #
        #   @return [Boolean, nil]
        optional :evaluate_on_create, MetronomeSDK::Internal::Type::Boolean

        # @!attribute group_values
        #   Only present for `spend_threshold_reached` notifications. Scope notification to
        #   a specific group key on individual line items.
        #
        #   @return [Array<MetronomeSDK::Models::V1::AlertCreateParams::GroupValue>, nil]
        optional :group_values,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::AlertCreateParams::GroupValue] }

        # @!attribute invoice_types_filter
        #   Only supported for invoice_total_reached threshold notifications. A list of
        #   invoice types to evaluate.
        #
        #   @return [Array<String>, nil]
        optional :invoice_types_filter, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute plan_id
        #   If provided, will create this threshold notification for this specific plan. To
        #   create a notification for all customers, do not specify a `plan_id`.
        #
        #   @return [String, nil]
        optional :plan_id, String

        # @!attribute seat_filter
        #   Required for `low_remaining_seat_balance_reached` notifications. The alert is
        #   scoped to this seat group key-value pair.
        #
        #   @return [MetronomeSDK::Models::V1::AlertCreateParams::SeatFilter, nil]
        optional :seat_filter, -> { MetronomeSDK::V1::AlertCreateParams::SeatFilter }

        # @!attribute uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made
        #   with a previously used uniqueness key, a new record will not be created and the
        #   request will fail with a 409 error.
        #
        #   @return [String, nil]
        optional :uniqueness_key, String

        # @!method initialize(alert_type:, name:, threshold:, billable_metric_id: nil, credit_grant_type_filters: nil, credit_type_id: nil, custom_field_filters: nil, customer_id: nil, evaluate_on_create: nil, group_values: nil, invoice_types_filter: nil, plan_id: nil, seat_filter: nil, uniqueness_key: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::AlertCreateParams} for more details.
        #
        #   @param alert_type [Symbol, MetronomeSDK::Models::V1::AlertCreateParams::AlertType] Type of the threshold notification
        #
        #   @param name [String] Name of the threshold notification
        #
        #   @param threshold [Float] Threshold value of the notification policy. Depending upon the notification typ
        #
        #   @param billable_metric_id [String] For threshold notifications of type `usage_threshold_reached`, specifies which b
        #
        #   @param credit_grant_type_filters [Array<String>] An array of strings, representing a way to filter the credit grant this threshol
        #
        #   @param credit_type_id [String] ID of the credit's currency, defaults to USD. If the specific notification type
        #
        #   @param custom_field_filters [Array<MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter>] A list of custom field filters for threshold notification types that support adv
        #
        #   @param customer_id [String] If provided, will create this threshold notification for this specific customer.
        #
        #   @param evaluate_on_create [Boolean] If true, the threshold notification will evaluate immediately on customers that
        #
        #   @param group_values [Array<MetronomeSDK::Models::V1::AlertCreateParams::GroupValue>] Only present for `spend_threshold_reached` notifications. Scope notification to
        #
        #   @param invoice_types_filter [Array<String>] Only supported for invoice_total_reached threshold notifications. A list of invo
        #
        #   @param plan_id [String] If provided, will create this threshold notification for this specific plan. To
        #
        #   @param seat_filter [MetronomeSDK::Models::V1::AlertCreateParams::SeatFilter] Required for `low_remaining_seat_balance_reached` notifications. The alert is sc
        #
        #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # Type of the threshold notification
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
          LOW_REMAINING_SEAT_BALANCE_REACHED = :low_remaining_seat_balance_reached

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute entity
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter::Entity]
          required :entity, enum: -> { MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::Entity }

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

        class SeatFilter < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute seat_group_key
          #   The seat group key (e.g., "seat_id", "user_id")
          #
          #   @return [String]
          required :seat_group_key, String

          # @!attribute seat_group_value
          #   Optional seat identifier the alert is scoped to.
          #
          #   @return [String, nil]
          optional :seat_group_value, String

          # @!method initialize(seat_group_key:, seat_group_value: nil)
          #   Required for `low_remaining_seat_balance_reached` notifications. The alert is
          #   scoped to this seat group key-value pair.
          #
          #   @param seat_group_key [String] The seat group key (e.g., "seat_id", "user_id")
          #
          #   @param seat_group_value [String] Optional seat identifier the alert is scoped to.
        end
      end
    end
  end
end
