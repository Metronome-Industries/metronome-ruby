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
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, AggregationType] :aggregation_type Specifies the type of aggregation performed on matching events.
      # @option params [String] :name The display name of the billable metric.
      # @option params [String, nil] :aggregation_key A key that specifies which property of the event is used to aggregate data. This
      #   key must be one of the property filter names and is not applicable when the
      #   aggregation type is 'count'.
      # @option params [Hash, nil] :custom_fields Custom fields to attach to the billable metric.
      # @option params [Metronome::Models::EventTypeFilter, nil] :event_type_filter An optional filtering rule to match the 'event_type' property of an event.
      # @option params [Array<Array<String>>, nil] :group_keys Property names that are used to group usage costs on an invoice. Each entry
      #   represents a set of properties used to slice events into distinct buckets.
      # @option params [Array<Metronome::Models::PropertyFilter>, nil] :property_filters A list of filters to match events to this billable metric. Each filter defines a
      #   rule on an event property. All rules must pass for the event to match the
      #   billable metric.
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
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
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :billable_metric_id
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::BillableMetricRetrieveResponse]
      def retrieve(params = {}, opts = {})
        req = {
          method: :get,
          path: "/billable-metrics/#{params.fetch(:billable_metric_id)}",
          model: Metronome::Models::BillableMetricRetrieveResponse
        }
        @client.request(req, opts)
      end

      # List all billable metrics.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer, nil] :limit Max number of results that should be returned
      # @option params [String, nil] :next_page Cursor that indicates where the next page of results should start.
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
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
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :id
      #
      # @param opts [Hash, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
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
