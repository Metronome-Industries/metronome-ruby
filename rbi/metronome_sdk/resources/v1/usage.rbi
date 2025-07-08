# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Usage
        # Fetch aggregated usage data for multiple customers and billable-metrics, broken
        # into intervals of the specified length.
        sig do
          params(
            ending_before: Time,
            starting_on: Time,
            window_size:
              MetronomeSDK::V1::UsageListParams::WindowSize::OrSymbol,
            next_page: String,
            billable_metrics:
              T::Array[
                MetronomeSDK::V1::UsageListParams::BillableMetric::OrHash
              ],
            customer_ids: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::V1::UsageListResponse)
        end
        def list(
          # Body param:
          ending_before:,
          # Body param:
          starting_on:,
          # Body param: A window_size of "day" or "hour" will return the usage for the
          # specified period segmented into daily or hourly aggregates. A window_size of
          # "none" will return a single usage aggregate for the entirety of the specified
          # period.
          window_size:,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Body param: A list of billable metrics to fetch usage for. If absent, all
          # billable metrics will be returned.
          billable_metrics: nil,
          # Body param: A list of Metronome customer IDs to fetch usage for. If absent,
          # usage for all customers will be returned.
          customer_ids: nil,
          request_options: {}
        )
        end

        # Send usage events to Metronome. The body of this request is expected to be a
        # JSON array of between 1 and 100 usage events. Compressed request bodies are
        # supported with a `Content-Encoding: gzip` header. See
        # [Getting usage into Metronome](https://docs.metronome.com/connect-metronome/) to
        # learn more about usage events.
        sig do
          params(
            usage: T::Array[MetronomeSDK::V1::UsageIngestParams::Usage::OrHash],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def ingest(usage: nil, request_options: {})
        end

        # Fetch aggregated usage data for the specified customer, billable-metric, and
        # optional group, broken into intervals of the specified length.
        sig do
          params(
            billable_metric_id: String,
            customer_id: String,
            window_size:
              MetronomeSDK::V1::UsageListWithGroupsParams::WindowSize::OrSymbol,
            limit: Integer,
            next_page: String,
            current_period: T::Boolean,
            ending_before: Time,
            group_by:
              MetronomeSDK::V1::UsageListWithGroupsParams::GroupBy::OrHash,
            starting_on: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::UsageListWithGroupsResponse
            ]
          )
        end
        def list_with_groups(
          # Body param:
          billable_metric_id:,
          # Body param:
          customer_id:,
          # Body param: A window_size of "day" or "hour" will return the usage for the
          # specified period segmented into daily or hourly aggregates. A window_size of
          # "none" will return a single usage aggregate for the entirety of the specified
          # period.
          window_size:,
          # Query param: Max number of results that should be returned
          limit: nil,
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Body param: If true, will return the usage for the current billing period. Will
          # return an error if the customer is currently uncontracted or starting_on and
          # ending_before are specified when this is true.
          current_period: nil,
          # Body param:
          ending_before: nil,
          # Body param:
          group_by: nil,
          # Body param:
          starting_on: nil,
          request_options: {}
        )
        end

        # Find events to match to customers, billable metrics, etc. We only look for
        # transactions that occurred in the last 34 days.
        sig do
          params(
            transaction_ids: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T::Array[MetronomeSDK::Models::V1::UsageSearchResponseItem])
        end
        def search(
          # The transaction IDs of the events to retrieve
          transaction_ids:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
