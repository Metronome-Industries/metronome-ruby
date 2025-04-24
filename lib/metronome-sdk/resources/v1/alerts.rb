# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Alerts
        # Create a new alert
        #
        # @param params [MetronomeSDK::Models::V1::AlertCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::AlertCreateParams::AlertType] :alert_type Type of the alert
        #
        #   @option params [String] :name Name of the alert
        #
        #   @option params [Float] :threshold Threshold value of the alert policy. Depending upon the alert type, this number
        #     may represent a financial amount, the days remaining, or a percentage reached.
        #
        #   @option params [String] :billable_metric_id For alerts of type `usage_threshold_reached`, specifies which billable metric to
        #     track the usage for.
        #
        #   @option params [Array<String>] :credit_grant_type_filters An array of strings, representing a way to filter the credit grant this alert
        #     applies to, by looking at the credit_grant_type field on the credit grant. This
        #     field is only defined for CreditPercentage and CreditBalance alerts
        #
        #   @option params [String] :credit_type_id
        #
        #   @option params [Array<MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter>] :custom_field_filters A list of custom field filters for alert types that support advanced filtering.
        #     Only present for contract invoices.
        #
        #   @option params [String] :customer_id If provided, will create this alert for this specific customer. To create an
        #     alert for all customers, do not specify `customer_id` or `plan_id`.
        #
        #   @option params [Boolean] :evaluate_on_create If true, the alert will evaluate immediately on customers that already meet the
        #     alert threshold. If false, it will only evaluate on future customers that
        #     trigger the alert threshold. Defaults to true.
        #
        #   @option params [MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter] :group_key_filter Scopes alert evaluation to a specific presentation group key on individual line
        #     items. Only present for spend alerts.
        #
        #   @option params [Array<String>] :invoice_types_filter Only supported for invoice_total_reached alerts. A list of invoice types to
        #     evaluate.
        #
        #   @option params [String] :plan_id If provided, will create this alert for this specific plan. To create an alert
        #     for all customers, do not specify `customer_id` or `plan_id`.
        #
        #   @option params [String] :uniqueness_key Prevents the creation of duplicates. If a request to create a record is made
        #     with a previously used uniqueness key, a new record will not be created and the
        #     request will fail with a 409 error.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::AlertCreateResponse]
        #
        def create(params)
          parsed, options = MetronomeSDK::Models::V1::AlertCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/alerts/create",
            body: parsed,
            model: MetronomeSDK::Models::V1::AlertCreateResponse,
            options: options
          )
        end

        # Archive an existing alert
        #
        # @param params [MetronomeSDK::Models::V1::AlertArchiveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :id The Metronome ID of the alert
        #
        #   @option params [Boolean] :release_uniqueness_key If true, resets the uniqueness key on this alert so it can be re-used
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::AlertArchiveResponse]
        #
        def archive(params)
          parsed, options = MetronomeSDK::Models::V1::AlertArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/alerts/archive",
            body: parsed,
            model: MetronomeSDK::Models::V1::AlertArchiveResponse,
            options: options
          )
        end

        # @param client [MetronomeSDK::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
