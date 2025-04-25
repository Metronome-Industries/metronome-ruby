# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Alerts
        # Create a new alert
        sig do
          params(
            alert_type: MetronomeSDK::Models::V1::AlertCreateParams::AlertType::OrSymbol,
            name: String,
            threshold: Float,
            billable_metric_id: String,
            credit_grant_type_filters: T::Array[String],
            credit_type_id: String,
            custom_field_filters: T::Array[T.any(MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter, MetronomeSDK::Internal::AnyHash)],
            customer_id: String,
            evaluate_on_create: T::Boolean,
            group_key_filter: T.any(MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter, MetronomeSDK::Internal::AnyHash),
            invoice_types_filter: T::Array[String],
            plan_id: String,
            uniqueness_key: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Models::V1::AlertCreateResponse)
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
          credit_type_id: nil,
          # A list of custom field filters for alert types that support advanced filtering.
          # Only present for contract invoices.
          custom_field_filters: nil,
          # If provided, will create this alert for this specific customer. To create an
          # alert for all customers, do not specify `customer_id` or `plan_id`.
          customer_id: nil,
          # If true, the alert will evaluate immediately on customers that already meet the
          # alert threshold. If false, it will only evaluate on future customers that
          # trigger the alert threshold. Defaults to true.
          evaluate_on_create: nil,
          # Scopes alert evaluation to a specific presentation group key on individual line
          # items. Only present for spend alerts.
          group_key_filter: nil,
          # Only supported for invoice_total_reached alerts. A list of invoice types to
          # evaluate.
          invoice_types_filter: nil,
          # If provided, will create this alert for this specific plan. To create an alert
          # for all customers, do not specify `customer_id` or `plan_id`.
          plan_id: nil,
          # Prevents the creation of duplicates. If a request to create a record is made
          # with a previously used uniqueness key, a new record will not be created and the
          # request will fail with a 409 error.
          uniqueness_key: nil,
          request_options: {}
        ); end
        # Archive an existing alert
        sig do
          params(
            id: String,
            release_uniqueness_key: T::Boolean,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Models::V1::AlertArchiveResponse)
        end
        def archive(
          # The Metronome ID of the alert
          id:,
          # If true, resets the uniqueness key on this alert so it can be re-used
          release_uniqueness_key: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
