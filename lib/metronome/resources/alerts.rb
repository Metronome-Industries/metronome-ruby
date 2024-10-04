# frozen_string_literal: true

module Metronome
  module Resources
    class Alerts
      def initialize(client:)
        @client = client
      end

      # Create a new alert
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :alert_type Type of the alert
      # @option params [String] :name Name of the alert
      # @option params [Float] :threshold Threshold value of the alert policy. Depending upon the alert type, this number
      #   may represent a financial amount, the days remaining, or a percentage reached.
      # @option params [String] :billable_metric_id For alerts of type `usage_threshold_reached`, specifies which billable metric to
      #   track the usage for.
      # @option params [Array<String>] :credit_grant_type_filters An array of strings, representing a way to filter the credit grant this alert
      #   applies to, by looking at the credit_grant_type field on the credit grant. This
      #   field is only defined for CreditPercentage and CreditBalance alerts
      # @option params [String] :credit_type_id
      # @option params [Array<CustomFieldFilter>] :custom_field_filters Only present for beta contract invoices. This field's availability is dependent
      #   on your client's configuration. A list of custom field filters for alert types
      #   that support advanced filtering
      # @option params [String] :customer_id If provided, will create this alert for this specific customer. To create an
      #   alert for all customers, do not specify `customer_id` or `plan_id`.
      # @option params [Boolean] :evaluate_on_create If true, the alert will evaluate immediately on customers that already meet the
      #   alert threshold. If false, it will only evaluate on future customers that
      #   trigger the alert threshold. Defaults to true.
      # @option params [GroupKeyFilter] :group_key_filter Scopes alert evaluation to a specific presentation group key on individual line
      #   items. Only present for spend alerts.
      # @option params [Array<String>] :invoice_types_filter Only supported for invoice_total_reached alerts. A list of invoice types to
      #   evaluate.
      # @option params [String] :plan_id If provided, will create this alert for this specific plan. To create an alert
      #   for all customers, do not specify `customer_id` or `plan_id`.
      # @option params [String] :uniqueness_key Prevents the creation of duplicates. If a request to create a record is made
      #   with a previously used uniqueness key, a new record will not be created and the
      #   request will fail with a 409 error.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::AlertCreateResponse]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/alerts/create"
        req[:body] = params
        req[:model] = Metronome::Models::AlertCreateResponse
        @client.request(req, opts)
      end

      # Archive an existing alert
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :id
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::AlertArchiveResponse]
      def archive(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/alerts/archive"
        req[:body] = params
        req[:model] = Metronome::Models::AlertArchiveResponse
        @client.request(req, opts)
      end
    end
  end
end
