# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Alerts
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::AlertCreateParams} for more details.
        #
        # Create a new alert to monitor customer spending, balances, and billing metrics
        # in real-time. Metronome's alert system provides industry-leading speed with
        # immediate evaluation capabilities, enabling you to proactively manage customer
        # accounts and prevent revenue leakage.
        #
        # This endpoint creates configurable alerts that continuously monitor various
        # billing thresholds including spend limits, credit balances, commitment
        # utilization, and invoice totals. Alerts can be configured globally for all
        # customers or targeted to specific customer accounts. Custom fields can be used
        # on certain alert types to further target alerts to groups of customers.
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
        # - The alert configuration with its unique ID and current status
        # - The customer's evaluation status (ok, in_alarm, or evaluating)
        # - Alert metadata including type, threshold values, and update timestamps
        #
        # ### Usage guidelines:
        #
        # - Immediate evaluation: Set `evaluate_on_create` : `true` (default) for instant
        #   evaluation against existing customers
        # - Uniqueness constraints: Each alert must have a unique `uniqueness_key` within
        #   your organization. Use `release_uniqueness_key` : `true` when archiving to
        #   reuse keys
        # - Alert type requirements: Different alert types require specific fields (e.g.,
        #   `billable_metric_id` for usage alerts, `credit_type_id` for credit-based
        #   alerts)
        # - Webhook delivery: Alerts trigger webhook notifications for real-time
        #   integration with your systems. Configure webhook endpoints before creating
        #   alerts
        # - Performance at scale: Metronome's event-driven architecture processes alert
        #   evaluations in real-time as usage events stream in, unlike competitors who
        #   rely on periodic polling or batch evaluation cycles
        #
        # @overload create(alert_type:, name:, threshold:, billable_metric_id: nil, credit_grant_type_filters: nil, credit_type_id: nil, custom_field_filters: nil, customer_id: nil, evaluate_on_create: nil, group_values: nil, invoice_types_filter: nil, plan_id: nil, uniqueness_key: nil, request_options: {})
        #
        # @param alert_type [Symbol, MetronomeSDK::Models::V1::AlertCreateParams::AlertType] Type of the alert
        #
        # @param name [String] Name of the alert
        #
        # @param threshold [Float] Threshold value of the alert policy. Depending upon the alert type, this number
        #
        # @param billable_metric_id [String] For alerts of type `usage_threshold_reached`, specifies which billable metric to
        #
        # @param credit_grant_type_filters [Array<String>] An array of strings, representing a way to filter the credit grant this alert ap
        #
        # @param credit_type_id [String] ID of the credit's currency, defaults to USD. If the specific alert type require
        #
        # @param custom_field_filters [Array<MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter>] A list of custom field filters for alert types that support advanced filtering.
        #
        # @param customer_id [String] If provided, will create this alert for this specific customer. To create an ale
        #
        # @param evaluate_on_create [Boolean] If true, the alert will evaluate immediately on customers that already meet the
        #
        # @param group_values [Array<MetronomeSDK::Models::V1::AlertCreateParams::GroupValue>] Only present for `spend_threshold_reached` alerts. Scope alert to a specific gro
        #
        # @param invoice_types_filter [Array<String>] Only supported for invoice_total_reached alerts. A list of invoice types to eval
        #
        # @param plan_id [String] If provided, will create this alert for this specific plan. To create an alert f
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

        # Permanently disable an alert and remove it from active monitoring across all
        # customers. Archived alerts stop evaluating immediately and can optionally
        # release their uniqueness key for reuse in future alert configurations.
        #
        # ### Use this endpoint to:
        #
        # - Decommission alerts that are no longer needed
        # - Clean up test or deprecated alert configurations
        # - Free up uniqueness keys for reuse with new alerts
        # - Stop alert evaluations without losing historical configuration data
        # - Disable outdated monitoring rules during pricing model transitions
        #
        # ### Key response fields:
        #
        # - data: Object containing the archived alert's ID
        # - Alert evaluation stops immediately for all affected customers
        # - Historical alert data and configurations remain accessible for audit purposes
        #
        # ### Usage guidelines:
        #
        # - Irreversible for evaluation: Archived alerts cannot be re-enabled; create a
        #   new alert to resume monitoring
        # - Uniqueness key handling: Set `release_uniqueness_key` : `true` to reuse the
        #   key in future alerts
        # - Immediate effect: Alert evaluation stops instantly across all customers
        # - Historical preservation: Archive operation maintains alert history and
        #   configuration for compliance and auditing
        #
        # @overload archive(id:, release_uniqueness_key: nil, request_options: {})
        #
        # @param id [String] The Metronome ID of the alert
        #
        # @param release_uniqueness_key [Boolean] If true, resets the uniqueness key on this alert so it can be re-used
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
