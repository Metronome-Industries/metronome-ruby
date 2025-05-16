# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class BillableMetrics
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::BillableMetricCreateParams} for more details.
        #
        # Creates a new Billable Metric.
        #
        # @overload create(name:, aggregation_key: nil, aggregation_type: nil, custom_fields: nil, event_type_filter: nil, group_keys: nil, property_filters: nil, sql: nil, request_options: {})
        #
        # @param name [String] The display name of the billable metric.
        #
        # @param aggregation_key [String] Specifies the type of aggregation performed on matching events. Required if `sql
        #
        # @param aggregation_type [Symbol, MetronomeSDK::V1::BillableMetricCreateParams::AggregationType] Specifies the type of aggregation performed on matching events.
        #
        # @param custom_fields [Hash{Symbol=>String}] Custom fields to attach to the billable metric.
        #
        # @param event_type_filter [MetronomeSDK::EventTypeFilter] An optional filtering rule to match the 'event_type' property of an event.
        #
        # @param group_keys [Array<Array<String>>] Property names that are used to group usage costs on an invoice. Each entry repr
        #
        # @param property_filters [Array<MetronomeSDK::PropertyFilter>] A list of filters to match events to this billable metric. Each filter defines a
        #
        # @param sql [String] The SQL query associated with the billable metric. This field is mutually exclus
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::BillableMetricCreateResponse]
        #
        # @see MetronomeSDK::Models::V1::BillableMetricCreateParams
        def create(params)
          parsed, options = MetronomeSDK::V1::BillableMetricCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/billable-metrics/create",
            body: parsed,
            model: MetronomeSDK::Models::V1::BillableMetricCreateResponse,
            options: options
          )
        end

        # Get a billable metric.
        #
        # @overload retrieve(billable_metric_id:, request_options: {})
        #
        # @param billable_metric_id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::BillableMetricRetrieveResponse]
        #
        # @see MetronomeSDK::Models::V1::BillableMetricRetrieveParams
        def retrieve(params)
          parsed, options = MetronomeSDK::V1::BillableMetricRetrieveParams.dump_request(params)
          billable_metric_id =
            parsed.delete(:billable_metric_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/billable-metrics/%1$s", billable_metric_id],
            model: MetronomeSDK::Models::V1::BillableMetricRetrieveResponse,
            options: options
          )
        end

        # List all billable metrics.
        #
        # @overload list(include_archived: nil, limit: nil, next_page: nil, request_options: {})
        #
        # @param include_archived [Boolean] If true, the list of returned metrics will include archived metrics
        #
        # @param limit [Integer] Max number of results that should be returned
        #
        # @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::BillableMetricListResponse>]
        #
        # @see MetronomeSDK::Models::V1::BillableMetricListParams
        def list(params = {})
          parsed, options = MetronomeSDK::V1::BillableMetricListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/billable-metrics",
            query: parsed,
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::BillableMetricListResponse,
            options: options
          )
        end

        # Archive an existing billable metric.
        #
        # @overload archive(id:, request_options: {})
        #
        # @param id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::BillableMetricArchiveResponse]
        #
        # @see MetronomeSDK::Models::V1::BillableMetricArchiveParams
        def archive(params)
          parsed, options = MetronomeSDK::V1::BillableMetricArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/billable-metrics/archive",
            body: parsed,
            model: MetronomeSDK::Models::V1::BillableMetricArchiveResponse,
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
