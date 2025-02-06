# frozen_string_literal: true

module Metronome
  module Resources
    class Usage
      # Fetch aggregated usage data for multiple customers and billable-metrics, broken
      #   into intervals of the specified length.
      #
      # @param params [Metronome::Models::UsageListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :ending_before Body param:
      #
      #   @option params [Time] :starting_on Body param:
      #
      #   @option params [Symbol, Metronome::Models::UsageListParams::WindowSize] :window_size Body param: A window_size of "day" or "hour" will return the usage for the
      #     specified period segmented into daily or hourly aggregates. A window_size of
      #     "none" will return a single usage aggregate for the entirety of the specified
      #     period.
      #
      #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      #   @option params [Array<Metronome::Models::UsageListParams::BillableMetric>] :billable_metrics Body param: A list of billable metrics to fetch usage for. If absent, all
      #     billable metrics will be returned.
      #
      #   @option params [Array<String>] :customer_ids Body param: A list of Metronome customer IDs to fetch usage for. If absent,
      #     usage for all customers will be returned.
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Metronome::Models::UsageListResponse]
      #
      def list(params)
        parsed, options = Metronome::Models::UsageListParams.dump_request(params)
        query_params = [:next_page]
        @client.request(
          method: :post,
          path: "usage",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Metronome::Models::UsageListResponse,
          options: options
        )
      end

      # Send usage events to Metronome. The body of this request is expected to be a
      #   JSON array of between 1 and 100 usage events. Compressed request bodies are
      #   supported with a `Content-Encoding: gzip` header. See
      #   [Getting usage into Metronome](https://docs.metronome.com/connect-metronome/) to
      #   learn more about usage events.
      #
      # @param params [Metronome::Models::UsageIngestParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Metronome::Models::UsageIngestParams::Usage>] :usage
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      #
      def ingest(params)
        parsed, options = Metronome::Models::UsageIngestParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ingest",
          body: parsed[:usage],
          model: NilClass,
          options: options
        )
      end

      # Fetch aggregated usage data for the specified customer, billable-metric, and
      #   optional group, broken into intervals of the specified length.
      #
      # @param params [Metronome::Models::UsageListWithGroupsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :billable_metric_id Body param:
      #
      #   @option params [String] :customer_id Body param:
      #
      #   @option params [Symbol, Metronome::Models::UsageListWithGroupsParams::WindowSize] :window_size Body param: A window_size of "day" or "hour" will return the usage for the
      #     specified period segmented into daily or hourly aggregates. A window_size of
      #     "none" will return a single usage aggregate for the entirety of the specified
      #     period.
      #
      #   @option params [Integer] :limit Query param: Max number of results that should be returned
      #
      #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      #   @option params [Boolean] :current_period Body param: If true, will return the usage for the current billing period. Will
      #     return an error if the customer is currently uncontracted or starting_on and
      #     ending_before are specified when this is true.
      #
      #   @option params [Time] :ending_before Body param:
      #
      #   @option params [Metronome::Models::UsageListWithGroupsParams::GroupBy] :group_by Body param:
      #
      #   @option params [Time] :starting_on Body param:
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Metronome::CursorPage<Metronome::Models::UsageListWithGroupsResponse>]
      #
      def list_with_groups(params)
        parsed, options = Metronome::Models::UsageListWithGroupsParams.dump_request(params)
        query_params = [:limit, :next_page]
        @client.request(
          method: :post,
          path: "usage/groups",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          page: Metronome::CursorPage,
          model: Metronome::Models::UsageListWithGroupsResponse,
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
