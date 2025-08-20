# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class BillableMetrics
        # Creates a new Billable Metric.
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

        # Get a billable metric.
        sig do
          params(
            billable_metric_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::BillableMetricRetrieveResponse)
        end
        def retrieve(billable_metric_id:, request_options: {})
        end

        # List all billable metrics.
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

        # Archive an existing billable metric.
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
