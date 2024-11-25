# frozen_string_literal: true

module Metronome
  module Resources
    class Usage
      # @param client [Metronome::Client]
      def initialize(client:)
        @client = client
      end

      # Fetch aggregated usage data for multiple customers and billable-metrics, broken
      #   into intervals of the specified length.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Time] :ending_before Body param:
      #   @option params [Time] :starting_on Body param:
      #   @option params [Symbol, Metronome::Models::UsageListParams::WindowSize] :window_size Body param: A window_size of "day" or "hour" will return the usage for the
      #     specified period segmented into daily or hourly aggregates. A window_size of
      #     "none" will return a single usage aggregate for the entirety of the specified
      #     period.
      #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
      #   @option params [Array<Metronome::Models::UsageListParams::BillableMetric>, nil] :billable_metrics Body param: A list of billable metrics to fetch usage for. If absent, all
      #     billable metrics will be returned.
      #   @option params [Array<String>, nil] :customer_ids Body param: A list of Metronome customer IDs to fetch usage for. If absent,
      #     usage for all customers will be returned.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::UsageListResponse]
      def list(params = {}, opts = {})
        query_params = [:next_page]
        req = {
          method: :post,
          path: "/usage",
          query: params.slice(*query_params),
          headers: {"Content-Type" => "application/json"},
          body: params.except(*query_params),
          model: Metronome::Models::UsageListResponse
        }
        @client.request(req, opts)
      end

      # Send usage events to Metronome. The body of this request is expected to be a
      #   JSON array of between 1 and 100 usage events. Compressed request bodies are
      #   supported with a `Content-Encoding: gzip` header. See
      #   [Getting usage into Metronome](https://docs.metronome.com/connect-metronome/) to
      #   learn more about usage events.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Array<Metronome::Models::UsageIngestParams::Usage>] :usage
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def ingest(params = {}, opts = {})
        req = {
          method: :post,
          path: "/ingest",
          headers: {"Content-Type" => "application/json"},
          body: params[:usage],
          model: NilClass
        }
        @client.request(req, opts)
      end

      # Fetch aggregated usage data for the specified customer, billable-metric, and
      #   optional group, broken into intervals of the specified length.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :billable_metric_id Body param:
      #   @option params [String] :customer_id Body param:
      #   @option params [Symbol, Metronome::Models::UsageListWithGroupsParams::WindowSize] :window_size Body param: A window_size of "day" or "hour" will return the usage for the
      #     specified period segmented into daily or hourly aggregates. A window_size of
      #     "none" will return a single usage aggregate for the entirety of the specified
      #     period.
      #   @option params [Integer, nil] :limit Query param: Max number of results that should be returned
      #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
      #   @option params [Boolean, nil] :current_period Body param: If true, will return the usage for the current billing period. Will
      #     return an error if the customer is currently uncontracted or starting_on and
      #     ending_before are specified when this is true.
      #   @option params [Time, nil] :ending_before Body param:
      #   @option params [Metronome::Models::UsageListWithGroupsParams::GroupBy, nil] :group_by Body param:
      #   @option params [Time, nil] :starting_on Body param:
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::CursorPage<Metronome::Models::UsageListWithGroupsResponse>]
      def list_with_groups(params = {}, opts = {})
        query_params = [:limit, :next_page]
        req = {
          method: :post,
          path: "/usage/groups",
          query: params.slice(*query_params),
          headers: {"Content-Type" => "application/json"},
          body: params.except(*query_params),
          page: Metronome::CursorPage,
          model: Metronome::Models::UsageListWithGroupsResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
