# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Alerts
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::AlertCreateParams} for more details.
        #
        # Create a new threshold notification to monitor customer spending, balances, and
        # billing metrics in real-time. Metronome's notification system provides
        # industry-leading speed with immediate evaluation capabilities, enabling you to
        # proactively manage customer accounts and prevent revenue leakage.
        #
        # This endpoint creates configurable threshold notifications that continuously
        # monitor various billing thresholds including spend limits, credit balances,
        # commitment utilization, and invoice totals. Threshold notifications can be
        # configured globally for all customers or targeted to specific customer accounts.
        #
        # ### Use this endpoint to:
        #
        # - Proactively monitor customer spending patterns to prevent unexpected overages
        #   or credit exhaustion
        # - Automate notifications when customers approach commitment limits or credit
        #   thresholds
        # - Enable real-time intervention for accounts at risk of churn or payment issues
        # - Scale billing operations by automating threshold-based workflows and
        #   notifications
        #
        # ### Key response fields:
        #
        # A successful response returns a CustomerAlert object containing:
        #
        # - The threshold notification configuration with its unique ID and current status
        # - The customer's evaluation status (ok, in_alarm, or evaluating)
        # - Threshold notification metadata including type, threshold values, and update
        #   timestamps
        #
        # ### Usage guidelines:
        #
        # - Immediate evaluation: Set `evaluate_on_create` : `true` (default) for instant
        #   evaluation against existing customers
        # - Uniqueness constraints: Each threshold notification must have a unique
        #   `uniqueness_key` within your organization. Use `release_uniqueness_key` :
        #   `true` when archiving to reuse keys
        # - Notification type requirements: Different threshold notification types require
        #   specific fields (e.g., `billable_metric_id` for usage notifications,
        #   `credit_type_id` for credit-based threshold notifications)
        # - Webhook delivery: Threshold notifications trigger webhook notifications for
        #   real-time integration with your systems. Configure webhook endpoints before
        #   creating threshold notifications
        # - Performance at scale: Metronome's event-driven architecture processes
        #   threshold notification evaluations in real-time as usage events stream in,
        #   unlike competitors who rely on periodic polling or batch evaluation cycles
        #
        # @overload create(alert_type:, name:, threshold:, billable_metric_id: nil, credit_grant_type_filters: nil, credit_type_id: nil, custom_field_filters: nil, customer_id: nil, evaluate_on_create: nil, group_values: nil, invoice_types_filter: nil, plan_id: nil, uniqueness_key: nil, request_options: {})
        #
        # @param alert_type [Symbol, MetronomeSDK::Models::V1::AlertCreateParams::AlertType] Type of the threshold notification
        #
        # @param name [String] Name of the threshold notification
        #
        # @param threshold [Float] Threshold value of the notification policy. Depending upon the notification typ
        #
        # @param billable_metric_id [String] For threshold notifications of type `usage_threshold_reached`, specifies which b
        #
        # @param credit_grant_type_filters [Array<String>] An array of strings, representing a way to filter the credit grant this threshol
        #
        # @param credit_type_id [String] ID of the credit's currency, defaults to USD. If the specific notification type
        #
        # @param custom_field_filters [Array<MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter>] A list of custom field filters for threshold notification types that support adv
        #
        # @param customer_id [String] If provided, will create this threshold notification for this specific customer.
        #
        # @param evaluate_on_create [Boolean] If true, the threshold notification will evaluate immediately on customers that
        #
        # @param group_values [Array<MetronomeSDK::Models::V1::AlertCreateParams::GroupValue>] Only present for `spend_threshold_reached` notifications. Scope notification to
        #
        # @param invoice_types_filter [Array<String>] Only supported for invoice_total_reached threshold notifications. A list of invo
        #
        # @param plan_id [String] If provided, will create this threshold notification for this specific plan. To
        #
        # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::AlertCreateResponse]
        #
        # @see MetronomeSDK::Models::V1::AlertCreateParams
        def create(params)
          parsed, options = MetronomeSDK::V1::AlertCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/alerts/create",
            body: parsed,
            model: MetronomeSDK::Models::V1::AlertCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::AlertArchiveParams} for more details.
        #
        # Permanently disable a threshold notification and remove it from active
        # monitoring across all customers. Archived threshold notifications stop
        # evaluating immediately and can optionally release their uniqueness key for reuse
        # in future threshold notification configurations.
        #
        # ### Use this endpoint to:
        #
        # - Decommission threshold notifications that are no longer needed
        # - Clean up test or deprecated threshold notification configurations
        # - Free up uniqueness keys for reuse with new threshold notifications
        # - Stop threshold notification evaluations without losing historical
        #   configuration data
        # - Disable outdated monitoring rules during pricing model transitions
        #
        # ### Key response fields:
        #
        # - data: Object containing the archived threshold notification's ID
        #
        # ### Usage guidelines:
        #
        # - Irreversible for evaluation: Archived threshold notifications cannot be
        #   re-enabled; create a new threshold notification to resume monitoring
        # - Uniqueness key handling: Set `release_uniqueness_key` : `true` to reuse the
        #   key in future threshold notifications
        # - Immediate effect: Threshold notification evaluation stops instantly across all
        #   customers
        # - Historical preservation: Archive operation maintains threshold notification
        #   history and configuration for compliance and auditing
        #
        # @overload archive(id:, release_uniqueness_key: nil, request_options: {})
        #
        # @param id [String] The Metronome ID of the threshold notification
        #
        # @param release_uniqueness_key [Boolean] If true, resets the uniqueness key on this threshold notification so it can be r
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::AlertArchiveResponse]
        #
        # @see MetronomeSDK::Models::V1::AlertArchiveParams
        def archive(params)
          parsed, options = MetronomeSDK::V1::AlertArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/alerts/archive",
            body: parsed,
            model: MetronomeSDK::Models::V1::AlertArchiveResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
