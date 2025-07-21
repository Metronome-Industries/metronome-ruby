# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Usage
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::UsageListParams} for more details.
        #
        # Fetch aggregated usage data for multiple customers and billable-metrics, broken
        # into intervals of the specified length.
        #
        # @overload list(ending_before:, starting_on:, window_size:, next_page: nil, billable_metrics: nil, customer_ids: nil, request_options: {})
        #
        # @param ending_before [Time] Body param:
        #
        # @param starting_on [Time] Body param:
        #
        # @param window_size [Symbol, MetronomeSDK::Models::V1::UsageListParams::WindowSize] Body param: A window_size of "day" or "hour" will return the usage for the speci
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param billable_metrics [Array<MetronomeSDK::Models::V1::UsageListParams::BillableMetric>] Body param: A list of billable metrics to fetch usage for. If absent, all billab
        #
        # @param customer_ids [Array<String>] Body param: A list of Metronome customer IDs to fetch usage for. If absent, usag
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::UsageListResponse]
        #
        # @see MetronomeSDK::Models::V1::UsageListParams
        def list(params)
          parsed, options = MetronomeSDK::V1::UsageListParams.dump_request(params)
          query_params = [:next_page]
          @client.request(
            method: :post,
            path: "v1/usage",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: MetronomeSDK::Models::V1::UsageListResponse,
            options: options
          )
        end

        # Send usage events to Metronome. The body of this request is expected to be a
        # JSON array of between 1 and 100 usage events. Compressed request bodies are
        # supported with a `Content-Encoding: gzip` header. See
        # [Getting usage into Metronome](https://docs.metronome.com/connect-metronome/) to
        # learn more about usage events.
        #
        # @overload ingest(usage: nil, request_options: {})
        #
        # @param usage [Array<MetronomeSDK::Models::V1::UsageIngestParams::Usage>]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see MetronomeSDK::Models::V1::UsageIngestParams
        def ingest(params = {})
          parsed, options = MetronomeSDK::V1::UsageIngestParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/ingest",
            body: parsed[:usage],
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::UsageListWithGroupsParams} for more details.
        #
        # Fetch aggregated usage data for the specified customer, billable-metric, and
        # optional group, broken into intervals of the specified length.
        #
        # @overload list_with_groups(billable_metric_id:, customer_id:, window_size:, limit: nil, next_page: nil, current_period: nil, ending_before: nil, group_by: nil, starting_on: nil, request_options: {})
        #
        # @param billable_metric_id [String] Body param:
        #
        # @param customer_id [String] Body param:
        #
        # @param window_size [Symbol, MetronomeSDK::Models::V1::UsageListWithGroupsParams::WindowSize] Body param: A window_size of "day" or "hour" will return the usage for the speci
        #
        # @param limit [Integer] Query param: Max number of results that should be returned
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param current_period [Boolean] Body param: If true, will return the usage for the current billing period. Will
        #
        # @param ending_before [Time] Body param:
        #
        # @param group_by [MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy] Body param:
        #
        # @param starting_on [Time] Body param:
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::UsageListWithGroupsResponse>]
        #
        # @see MetronomeSDK::Models::V1::UsageListWithGroupsParams
        def list_with_groups(params)
          parsed, options = MetronomeSDK::V1::UsageListWithGroupsParams.dump_request(params)
          query_params = [:limit, :next_page]
          @client.request(
            method: :post,
            path: "v1/usage/groups",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::UsageListWithGroupsResponse,
            options: options
          )
        end

        # For a set of events, look up matched billable metrics and customers by
        # transaction id. This endpoint looks at transactions that occurred in the last 34
        # days, and is intended for sampling-based testing workflows. It is heavily rate
        # limited.
        #
        # @overload search(transaction_ids:, request_options: {})
        #
        # @param transaction_ids [Array<String>] The transaction IDs of the events to retrieve
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<MetronomeSDK::Models::V1::UsageSearchResponseItem>]
        #
        # @see MetronomeSDK::Models::V1::UsageSearchParams
        def search(params)
          parsed, options = MetronomeSDK::V1::UsageSearchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/events/search",
            body: parsed,
            model: MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::UsageSearchResponseItem],
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
