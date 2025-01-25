# frozen_string_literal: true

module Metronome
  module Resources
    class BillableMetrics
      # Creates a new Billable Metric.
      #
      # @param params [Metronome::Models::BillableMetricCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :name The display name of the billable metric.
      #
      #   @option params [String] :aggregation_key Specifies the type of aggregation performed on matching events. Required if
      #     `sql` is not provided.
      #
      #   @option params [Symbol, Metronome::Models::BillableMetricCreateParams::AggregationType] :aggregation_type Specifies the type of aggregation performed on matching events.
      #
      #   @option params [Hash{Symbol=>String}] :custom_fields Custom fields to attach to the billable metric.
      #
      #   @option params [Metronome::Models::EventTypeFilter] :event_type_filter An optional filtering rule to match the 'event_type' property of an event.
      #
      #   @option params [Array<Array<String>>] :group_keys Property names that are used to group usage costs on an invoice. Each entry
      #     represents a set of properties used to slice events into distinct buckets.
      #
      #   @option params [Array<Metronome::Models::PropertyFilter>] :property_filters A list of filters to match events to this billable metric. Each filter defines a
      #     rule on an event property. All rules must pass for the event to match the
      #     billable metric.
      #
      #   @option params [String] :sql The SQL query associated with the billable metric. This field is mutually
      #     exclusive with aggregation_type, event_type_filter, property_filters,
      #     aggregation_key, and group_keys. If provided, these other fields must be
      #     omitted.
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::Models::BillableMetricCreateResponse]
      #
      def create(params)
        parsed, options = Metronome::Models::BillableMetricCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "billable-metrics/create",
          body: parsed,
          model: Metronome::Models::BillableMetricCreateResponse,
          options: options
        )
      end

      # Get a billable metric.
      #
      # @param params [Metronome::Models::BillableMetricRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :billable_metric_id
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::Models::BillableMetricRetrieveResponse]
      #
      def retrieve(params)
        parsed, options = Metronome::Models::BillableMetricRetrieveParams.dump_request(params)
        billable_metric_id = parsed.fetch(:billable_metric_id) do
          raise ArgumentError.new("missing required path argument #{_1}")
        end
        @client.request(
          method: :get,
          path: ["billable-metrics/%0s", billable_metric_id],
          model: Metronome::Models::BillableMetricRetrieveResponse,
          options: options
        )
      end

      # List all billable metrics.
      #
      # @param params [Metronome::Models::BillableMetricListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean] :include_archived If true, the list of returned metrics will include archived metrics
      #
      #   @option params [Integer] :limit Max number of results that should be returned
      #
      #   @option params [String] :next_page Cursor that indicates where the next page of results should start.
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::CursorPage<Metronome::Models::BillableMetricListResponse>]
      #
      def list(params = {})
        parsed, options = Metronome::Models::BillableMetricListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "billable-metrics",
          query: parsed,
          page: Metronome::CursorPage,
          model: Metronome::Models::BillableMetricListResponse,
          options: options
        )
      end

      # Archive an existing billable metric.
      #
      # @param params [Metronome::Models::BillableMetricArchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :id
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::Models::BillableMetricArchiveResponse]
      #
      def archive(params)
        parsed, options = Metronome::Models::BillableMetricArchiveParams.dump_request(params)
        @client.request(
          method: :post,
          path: "billable-metrics/archive",
          body: parsed,
          model: Metronome::Models::BillableMetricArchiveResponse,
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
