# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Alerts
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
        sig do
          params(
            alert_type:
              MetronomeSDK::V1::AlertCreateParams::AlertType::OrSymbol,
            name: String,
            threshold: Float,
            billable_metric_id: String,
            credit_grant_type_filters: T::Array[String],
            credit_type_id: String,
            custom_field_filters:
              T::Array[
                MetronomeSDK::V1::AlertCreateParams::CustomFieldFilter::OrHash
              ],
            customer_id: String,
            evaluate_on_create: T::Boolean,
            group_values:
              T::Array[MetronomeSDK::V1::AlertCreateParams::GroupValue::OrHash],
            invoice_types_filter: T::Array[String],
            plan_id: String,
            uniqueness_key: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::AlertCreateResponse)
        end
        def create(
          # Type of the alert
          alert_type:,
          # Name of the alert
          name:,
          # Threshold value of the alert policy. Depending upon the alert type, this number
          # may represent a financial amount, the days remaining, or a percentage reached.
          threshold:,
          # For alerts of type `usage_threshold_reached`, specifies which billable metric to
          # track the usage for.
          billable_metric_id: nil,
          # An array of strings, representing a way to filter the credit grant this alert
          # applies to, by looking at the credit_grant_type field on the credit grant. This
          # field is only defined for CreditPercentage and CreditBalance alerts
          credit_grant_type_filters: nil,
          # ID of the credit's currency, defaults to USD. If the specific alert type
          # requires a pricing unit/currency, find the ID in the
          # [Metronome app](https://app.metronome.com/offering/pricing-units).
          credit_type_id: nil,
          # A list of custom field filters for alert types that support advanced filtering.
          # Only present for contract invoices.
          custom_field_filters: nil,
          # If provided, will create this alert for this specific customer. To create an
          # alert for all customers, do not specify a `customer_id`.
          customer_id: nil,
          # If true, the alert will evaluate immediately on customers that already meet the
          # alert threshold. If false, it will only evaluate on future customers that
          # trigger the alert threshold. Defaults to true.
          evaluate_on_create: nil,
          # Only present for `spend_threshold_reached` alerts. Scope alert to a specific
          # group key on individual line items.
          group_values: nil,
          # Only supported for invoice_total_reached alerts. A list of invoice types to
          # evaluate.
          invoice_types_filter: nil,
          # If provided, will create this alert for this specific plan. To create an alert
          # for all customers, do not specify a `plan_id`.
          plan_id: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil,
          request_options: {}
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
        sig do
          params(
            id: String,
            release_uniqueness_key: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::AlertArchiveResponse)
        end
        def archive(
          # The Metronome ID of the alert
          id:,
          # If true, resets the uniqueness key on this alert so it can be re-used
          release_uniqueness_key: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
