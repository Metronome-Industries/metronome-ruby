# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class BillableMetrics
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::BillableMetricCreateParams} for more details.
        #
        # Create billable metrics programmatically with this endpoint—an essential step in
        # configuring your pricing and packaging in Metronome.
        #
        # A billable metric is a customizable query that filters and aggregates events
        # from your event stream. These metrics are continuously tracked as usage data
        # enters Metronome through the ingestion pipeline. The ingestion process
        # transforms raw usage data into actionable pricing metrics, enabling accurate
        # metering and billing for your products.
        #
        # ### Use this endpoint to:
        #
        # - Create individual or multiple billable metrics as part of a setup workflow.
        # - Automate the entire pricing configuration process, from metric creation to
        #   customer contract setup.
        # - Define metrics using either standard filtering/aggregation or a custom SQL
        #   query.
        #
        # ### Key response fields:
        #
        # - The ID of the billable metric that was created
        # - The created billable metric will be available to be used in Products, usage
        #   endpoints, and alerts.
        #
        # ### Usage guidelines:
        #
        # - Metrics defined using standard filtering and aggregation are Streaming
        #   billable metrics, which have been optimized for ultra low latency and high
        #   throughput workflows.
        # - Use SQL billable metrics if you require more flexible aggregation options.
        #
        # @overload create(name:, aggregation_key: nil, aggregation_type: nil, custom_fields: nil, event_type_filter: nil, group_keys: nil, property_filters: nil, sql: nil, request_options: {})
        #
        # @param name [String] The display name of the billable metric.
        #
        # @param aggregation_key [String] Specifies the type of aggregation performed on matching events. Required if `sql
        #
        # @param aggregation_type [Symbol, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType] Specifies the type of aggregation performed on matching events.
        #
        # @param custom_fields [Hash{Symbol=>String}] Custom fields to attach to the billable metric.
        #
        # @param event_type_filter [MetronomeSDK::Models::EventTypeFilter] An optional filtering rule to match the 'event_type' property of an event.
        #
        # @param group_keys [Array<Array<String>>] Property names that are used to group usage costs on an invoice. Each entry repr
        #
        # @param property_filters [Array<MetronomeSDK::Models::PropertyFilter>] A list of filters to match events to this billable metric. Each filter defines a
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

        # Retrieves the complete configuration for a specific billable metric by its ID.
        # Use this to review billable metric setup before associating it with products.
        # Returns the metric's name, event type, properties, aggregation_type,
        # aggregation_key, group_keys, custom fields, and SQL query (if it's a SQL
        # billable metric). Important: Archived billable metrics will include an
        # archived_at timestamp; they no longer process new usage events but remain
        # accessible for historical reference.
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

        # Retrieves all billable metrics with their complete configurations. Use this for
        # programmatic discovery and management of billable metrics, such as associating
        # metrics to products and auditing for orphaned or archived metrics. Important:
        # Archived metrics are excluded by default; use `include_archived=true` parameter
        # to include them.
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

        # Use this endpoint to retire billable metrics that are no longer used. After a
        # billable metric is archived, that billable metric can no longer be used in any
        # new Products to define how that product should be metered. If you archive a
        # billable metric that is already associated with a Product, the Product will
        # continue to function as usual, metering based on the definition of the archived
        # billable metric. Archived billable metrics will be returned on the
        # getBillableMetric and listBillableMetrics endpoints with a populated archived_at
        # field.
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
