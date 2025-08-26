# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class BillableMetrics
        # Create billable metrics programmatically with this endpoint—an essential step in
        # configuring your pricing and packaging in Metronome.
        #
        # A billable metric is a customizable query that filters and aggregates events
        # from your event stream. These metrics are continuously tracked as usage data
        # enters Metronome through the ingestion pipeline. The ingestion process
        # transforms raw usage data into actionable pricing metrics, enabling accurate
        # metering and billing for your products.
        #
        # Use this endpoint to:
        #
        # - Create individual or multiple billable metrics as part of a setup workflow.
        # - Automate the entire pricing configuration process, from metric creation to
        #   customer contract setup.
        # - Define metrics using either standard filtering/aggregation or a custom SQL
        #   query.
        #
        # Key response fields:
        #
        # - The ID of the billable metric that was created
        # - The created billable metric will be available to be used in Products, usage
        #   endpoints, and alerts.
        #
        # Usage guidelines:
        #
        # - Metrics defined using standard filtering and aggregation are Streaming
        #   billable metrics, which have been optimized for ultra low latency and high
        #   throughput workflows.
        # - Use SQL billable metrics if you require more flexible aggregation options.
        sig do
          params(
            name: String,
            aggregation_key: String,
            aggregation_type:
              MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::OrSymbol,
            custom_fields: T::Hash[Symbol, String],
            event_type_filter:
              MetronomeSDK::V1::BillableMetricCreateParams::EventTypeFilter::OrHash,
            group_keys: T::Array[T::Array[String]],
            property_filters:
              T::Array[
                MetronomeSDK::V1::BillableMetricCreateParams::PropertyFilter::OrHash
              ],
            sql: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::BillableMetricCreateResponse)
        end
        def create(
          # The display name of the billable metric.
          name:,
          # Specifies the type of aggregation performed on matching events. Required if
          # `sql` is not provided.
          aggregation_key: nil,
          # Specifies the type of aggregation performed on matching events.
          aggregation_type: nil,
          # Custom fields to attach to the billable metric.
          custom_fields: nil,
          # An optional filtering rule to match the 'event_type' property of an event.
          event_type_filter: nil,
          # Property names that are used to group usage costs on an invoice. Each entry
          # represents a set of properties used to slice events into distinct buckets.
          group_keys: nil,
          # A list of filters to match events to this billable metric. Each filter defines a
          # rule on an event property. All rules must pass for the event to match the
          # billable metric.
          property_filters: nil,
          # The SQL query associated with the billable metric. This field is mutually
          # exclusive with aggregation_type, event_type_filter, property_filters,
          # aggregation_key, and group_keys. If provided, these other fields must be
          # omitted.
          sql: nil,
          request_options: {}
        )
        end

        # Retrieves the complete configuration for a specific billable metric by its ID.
        # Use this to review billable metric setup before associating it with products.
        # Returns the metric's name, event type, properties, aggregation_type,
        # aggregation_key, group_keys, custom fields, and SQL query (if it's a SQL
        # billable metric). Important: Archived billable metrics will include an
        # archived_at timestamp; they no longer process new usage events but remain
        # accessible for historical reference.
        sig do
          params(
            billable_metric_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::BillableMetricRetrieveResponse)
        end
        def retrieve(billable_metric_id:, request_options: {})
        end

        # Retrieves all billable metrics with their complete configurations. Use this for
        # programmatic discovery and management of billable metrics, such as associating
        # metrics to products and auditing for orphaned or archived metrics. Important:
        # Archived metrics are excluded by default; use include_archived=true parameter to
        # include them.
        sig do
          params(
            include_archived: T::Boolean,
            limit: Integer,
            next_page: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::BillableMetricListResponse
            ]
          )
        end
        def list(
          # If true, the list of returned metrics will include archived metrics
          include_archived: nil,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          request_options: {}
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
        sig do
          params(
            id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::BillableMetricArchiveResponse)
        end
        def archive(id:, request_options: {})
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
