# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class BillableMetrics
        # Creates a new Billable Metric.
        #
        # @param params [MetronomeSDK::Models::V1::BillableMetricCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :name The display name of the billable metric.
        #
        #   @option params [String] :aggregation_key Specifies the type of aggregation performed on matching events. Required if
        #     `sql` is not provided.
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType] :aggregation_type Specifies the type of aggregation performed on matching events.
        #
        #   @option params [Hash{Symbol=>String}] :custom_fields Custom fields to attach to the billable metric.
        #
        #   @option params [MetronomeSDK::Models::EventTypeFilter] :event_type_filter An optional filtering rule to match the 'event_type' property of an event.
        #
        #   @option params [Array<Array<String>>] :group_keys Property names that are used to group usage costs on an invoice. Each entry
        #     represents a set of properties used to slice events into distinct buckets.
        #
        #   @option params [Array<MetronomeSDK::Models::PropertyFilter>] :property_filters A list of filters to match events to this billable metric. Each filter defines a
        #     rule on an event property. All rules must pass for the event to match the
        #     billable metric.
        #
        #   @option params [String] :sql The SQL query associated with the billable metric. This field is mutually
        #     exclusive with aggregation_type, event_type_filter, property_filters,
        #     aggregation_key, and group_keys. If provided, these other fields must be
        #     omitted.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::BillableMetricCreateResponse]
        #
        def create(params)
          parsed, options = MetronomeSDK::Models::V1::BillableMetricCreateParams.dump_request(params)
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
        # @param params [MetronomeSDK::Models::V1::BillableMetricRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :billable_metric_id
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::BillableMetricRetrieveResponse]
        #
        def retrieve(params)
          parsed, options = MetronomeSDK::Models::V1::BillableMetricRetrieveParams.dump_request(params)
          billable_metric_id = parsed.fetch(:billable_metric_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["v1/billable-metrics/%0s", billable_metric_id],
            model: MetronomeSDK::Models::V1::BillableMetricRetrieveResponse,
            options: options
          )
        end

        # List all billable metrics.
        #
        # @param params [MetronomeSDK::Models::V1::BillableMetricListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Boolean] :include_archived If true, the list of returned metrics will include archived metrics
        #
        #   @option params [Integer] :limit Max number of results that should be returned
        #
        #   @option params [String] :next_page Cursor that indicates where the next page of results should start.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::BillableMetricListResponse>]
        #
        def list(params = {})
          parsed, options = MetronomeSDK::Models::V1::BillableMetricListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/billable-metrics",
            query: parsed,
            page: MetronomeSDK::CursorPage,
            model: MetronomeSDK::Models::V1::BillableMetricListResponse,
            options: options
          )
        end

        # Archive an existing billable metric.
        #
        # @param params [MetronomeSDK::Models::V1::BillableMetricArchiveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :id
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::BillableMetricArchiveResponse]
        #
        def archive(params)
          parsed, options = MetronomeSDK::Models::V1::BillableMetricArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/billable-metrics/archive",
            body: parsed,
            model: MetronomeSDK::Models::V1::BillableMetricArchiveResponse,
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
