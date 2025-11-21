# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Alerts
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
            seat_filter:
              MetronomeSDK::V1::AlertCreateParams::SeatFilter::OrHash,
            uniqueness_key: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::AlertCreateResponse)
        end
        def create(
          # Type of the threshold notification
          alert_type:,
          # Name of the threshold notification
          name:,
          # Threshold value of the notification policy. Depending upon the notification
          # type, this number may represent a financial amount, the days remaining, or a
          # percentage reached.
          threshold:,
          # For threshold notifications of type `usage_threshold_reached`, specifies which
          # billable metric to track the usage for.
          billable_metric_id: nil,
          # An array of strings, representing a way to filter the credit grant this
          # threshold notification applies to, by looking at the credit_grant_type field on
          # the credit grant. This field is only defined for CreditPercentage and
          # CreditBalance notifications
          credit_grant_type_filters: nil,
          # ID of the credit's currency, defaults to USD. If the specific notification type
          # requires a pricing unit/currency, find the ID in the
          # [Metronome app](https://app.metronome.com/offering/pricing-units).
          credit_type_id: nil,
          # A list of custom field filters for threshold notification types that support
          # advanced filtering. Only present for contract invoices.
          custom_field_filters: nil,
          # If provided, will create this threshold notification for this specific customer.
          # To create a notification for all customers, do not specify a `customer_id`.
          customer_id: nil,
          # If true, the threshold notification will evaluate immediately on customers that
          # already meet the notification threshold. If false, it will only evaluate on
          # future customers that trigger the threshold. Defaults to true.
          evaluate_on_create: nil,
          # Only present for `spend_threshold_reached` notifications. Scope notification to
          # a specific group key on individual line items.
          group_values: nil,
          # Only supported for invoice_total_reached threshold notifications. A list of
          # invoice types to evaluate.
          invoice_types_filter: nil,
          # If provided, will create this threshold notification for this specific plan. To
          # create a notification for all customers, do not specify a `plan_id`.
          plan_id: nil,
          # Required for `low_remaining_seat_balance_reached` notifications. The alert is
          # scoped to this seat group key-value pair.
          seat_filter: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil,
          request_options: {}
        )
        end

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
        sig do
          params(
            id: String,
            release_uniqueness_key: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::AlertArchiveResponse)
        end
        def archive(
          # The Metronome ID of the threshold notification
          id:,
          # If true, resets the uniqueness key on this threshold notification so it can be
          # re-used
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
