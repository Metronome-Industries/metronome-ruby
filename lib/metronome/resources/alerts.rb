# frozen_string_literal: true

module Metronome
  module Resources
    class Alerts
      # Create a new alert
      #
      # @param params [Metronome::Models::AlertCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Metronome::Models::AlertCreateParams::AlertType] :alert_type Type of the alert
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
      #   @option params [Array<Metronome::Models::AlertCreateParams::CustomFieldFilter>] :custom_field_filters A list of custom field filters for alert types that support advanced filtering.
      #     Only present for contract invoices.
      #
      #   @option params [String] :customer_id If provided, will create this alert for this specific customer. To create an
      #     alert for all customers, do not specify `customer_id` or `plan_id`.
      #
      #   @option params [Boolean] :evaluate_on_create If true, the alert will evaluate immediately on customers that already meet the
      #     alert threshold. If false, it will only evaluate on future customers that
      #     trigger the alert threshold. Defaults to true.
      #
      #   @option params [Metronome::Models::AlertCreateParams::GroupKeyFilter] :group_key_filter Scopes alert evaluation to a specific presentation group key on individual line
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
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::Models::AlertCreateResponse]
      #
      def create(params)
        parsed, options = Metronome::Models::AlertCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "alerts/create",
          body: parsed,
          model: Metronome::Models::AlertCreateResponse,
          options: options
        )
      end

      # Archive an existing alert
      #
      # @param params [Metronome::Models::AlertArchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :id The Metronome ID of the alert
      #
      #   @option params [Boolean] :release_uniqueness_key If true, resets the uniqueness key on this alert so it can be re-used
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::Models::AlertArchiveResponse]
      #
      def archive(params)
        parsed, options = Metronome::Models::AlertArchiveParams.dump_request(params)
        @client.request(
          method: :post,
          path: "alerts/archive",
          body: parsed,
          model: Metronome::Models::AlertArchiveResponse,
          options: options
        )
      end

      # @param client [Metronome::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
