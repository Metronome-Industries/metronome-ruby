# frozen_string_literal: true

module Metronome
  module Resources
    class BillableMetrics
      # @param client [Metronome::Client]
      def initialize(client:)
        @client = client
      end

      # Creates a new Billable Metric.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :name The display name of the billable metric.
      #   @option params [String, nil] :aggregation_key Specifies the type of aggregation performed on matching events. Required if
      #     `sql` is not provided.
      #   @option params [Symbol, AggregationType, nil] :aggregation_type Specifies the type of aggregation performed on matching events.
      #   @option params [Hash, nil] :custom_fields Custom fields to attach to the billable metric.
      #   @option params [Metronome::Models::EventTypeFilter, nil] :event_type_filter An optional filtering rule to match the 'event_type' property of an event.
      #   @option params [Array<Array<String>>, nil] :group_keys Property names that are used to group usage costs on an invoice. Each entry
      #     represents a set of properties used to slice events into distinct buckets.
      #   @option params [Array<Metronome::Models::PropertyFilter>, nil] :property_filters A list of filters to match events to this billable metric. Each filter defines a
      #     rule on an event property. All rules must pass for the event to match the
      #     billable metric.
      #   @option params [String, nil] :sql The SQL query associated with the billable metric. This field is mutually
      #     exclusive with aggregation_type, event_type_filter, property_filters,
      #     aggregation_key, and group_keys. If provided, these other fields must be
      #     omitted.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::BillableMetricCreateResponse]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/billable-metrics/create",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Metronome::Models::BillableMetricCreateResponse
        }
        @client.request(req, opts)
      end

      # Get a billable metric.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :billable_metric_id
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::BillableMetricRetrieveResponse]
      def retrieve(params = {}, opts = {})
        billable_metric_id = params.fetch(:billable_metric_id) do
          raise ArgumentError, "missing required path argument :billable_metric_id"
        end
        req = {
          method: :get,
          path: "/billable-metrics/#{billable_metric_id}",
          model: Metronome::Models::BillableMetricRetrieveResponse
        }
        @client.request(req, opts)
      end

      # List all billable metrics.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Boolean, nil] :include_archived If true, the list of returned metrics will include archived metrics
      #   @option params [Integer, nil] :limit Max number of results that should be returned
      #   @option params [String, nil] :next_page Cursor that indicates where the next page of results should start.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::BillableMetricListResponse>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/billable-metrics",
          query: params,
          page: Metronome::CursorPage,
          model: Metronome::Models::BillableMetricListResponse
        }
        @client.request(req, opts)
      end

      # Archive an existing billable metric.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :id
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::BillableMetricArchiveResponse]
      def archive(params = {}, opts = {})
        req = {
          method: :post,
          path: "/billable-metrics/archive",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Metronome::Models::BillableMetricArchiveResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
