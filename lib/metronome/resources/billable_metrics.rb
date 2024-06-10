# frozen_string_literal: true

module Metronome
  module Resources
    class BillableMetrics
      def initialize(client:)
        @client = client
      end

      # Creates a new Billable Metric.
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :aggregation_type Specifies the type of aggregation performed on matching events.
      # @option params [String] :name The display name of the billable metric.
      # @option params [String] :aggregation_key A key that specifies which property of the event is used to aggregate data. This
      #   key must be one of the property filter names and is not applicable when the
      #   aggregation type is 'count'.
      # @option params [Hash] :custom_fields Custom fields to attach to the billable metric.
      # @option params [EventTypeFilter] :event_type_filter An optional filtering rule to match the 'event_type' property of an event.
      # @option params [Array<Array<String>>] :group_keys Property names that are used to group usage costs on an invoice. Each entry
      #   represents a set of properties used to slice events into distinct buckets.
      # @option params [Array<PropertyFilter>] :property_filters A list of filters to match events to this billable metric. Each filter defines a
      #   rule on an event property. All rules must pass for the event to match the
      #   billable metric.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::Models::BillableMetricCreateResponse]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/billable-metrics/create"
        req[:body] = params
        req[:model] = Metronome::Models::BillableMetricCreateResponse
        @client.request(req, opts)
      end

      # Get a billable metric
      # 
      # @param billable_metric_id [String]
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::Models::BillableMetricRetrieveResponse]
      def retrieve(billable_metric_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/billable-metrics/#{billable_metric_id}"
        req[:model] = Metronome::Models::BillableMetricRetrieveResponse
        @client.request(req, opts)
      end

      # List all billable metrics.
      # 
      # @param customer_id [String]
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :limit Max number of results that should be returned
      # @option params [String] :next_page Cursor that indicates where the next page of results should start.
      # @option params [Boolean] :on_current_plan If true, the list of metrics will be filtered to just ones that are on the
      #   customer's current plan
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::CursorPage<Metronome::Models::BillableMetricListResponse>]
      def list(customer_id, params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/customers/#{customer_id}/billable-metrics"
        req[:query] = params
        req[:page] = Metronome::CursorPage
        req[:model] = Metronome::Models::BillableMetricListResponse
        @client.request(req, opts)
      end

      # Archive an existing billable metric
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :id
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Metronome::Models::BillableMetricArchiveResponse]
      def archive(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/billable-metrics/archive"
        req[:body] = params
        req[:model] = Metronome::Models::BillableMetricArchiveResponse
        @client.request(req, opts)
      end
    end
  end
end
