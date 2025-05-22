# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Alerts
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::AlertCreateParams} for more details.
        #
        # Create a new alert
        #
        # @overload create(alert_type:, name:, threshold:, billable_metric_id: nil, credit_grant_type_filters: nil, credit_type_id: nil, custom_field_filters: nil, customer_id: nil, evaluate_on_create: nil, group_key_filter: nil, invoice_types_filter: nil, plan_id: nil, uniqueness_key: nil, request_options: {})
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
        # @param credit_type_id [String]
        #
        # @param custom_field_filters [Array<MetronomeSDK::Models::V1::AlertCreateParams::CustomFieldFilter>] A list of custom field filters for alert types that support advanced filtering.
        #
        # @param customer_id [String] If provided, will create this alert for this specific customer. To create an ale
        #
        # @param evaluate_on_create [Boolean] If true, the alert will evaluate immediately on customers that already meet the
        #
        # @param group_key_filter [MetronomeSDK::Models::V1::AlertCreateParams::GroupKeyFilter] Scopes alert evaluation to a specific presentation group key on individual line
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

        # Archive an existing alert
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
