# typed: strong

module MetronomeSDK
  module Resources
    class V1
      # [Usage events](https://docs.metronome.com/connecting-metronome/send-usage-data/)
      # are the basis for billable metrics. Use these endpoints to send usage events to
      # Metronome and retrieve aggregated event data.
      class Usage
        # Retrieve aggregated usage data across multiple customers and billable metrics in
        # a single query. This batch endpoint enables you to fetch usage patterns at
        # scale, broken down by time windows, making it ideal for building analytics
        # dashboards, generating reports, and monitoring platform-wide usage trends.
        #
        # ### Use this endpoint to:
        #
        # - Generate platform-wide usage reports for internal teams
        # - Monitor aggregate usage trends across your entire customer base
        # - Create comparative usage analyses between customers or time periods
        # - Support capacity planning with historical usage patterns
        #
        # ### Key response fields:
        #
        # An array of `UsageBatchAggregate` objects containing:
        #
        # - `customer_id`: The customer this usage belongs to
        # - `billable_metric_id` and `billable_metric_name`: What was measured
        # - `start_timestamp` and `end_timestamp`: Time window for this data point
        # - `value`: Aggregated usage amount for the period
        # - `groups` (optional): Usage broken down by group keys with values
        # - `next_page`: Pagination cursor for large result sets
        #
        # ### Usage guidelines:
        #
        # - Time windows: Set `window_size` to `hour`, `day`, or `none` (entire period)
        # - Required parameters: Must specify `starting_on`, `ending_before`, and
        #   `window_size`
        # - Filtering options:
        #   - `customer_ids`: Limit to specific customers (omit for all customers)
        #   - `billable_metrics`: Limit to specific metrics (omit for all metrics)
        # - Pagination: Use `next_page` cursor to retrieve large datasets
        # - Null values: Group values may be null when no usage matches that group
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
          ).returns(
            MetronomeSDK::Internal::CursorPageWithoutLimit[
              MetronomeSDK::Models::V1::UsageListResponse
            ]
          )
        end
        def list(
          # Body param
          ending_before:,
          # Body param
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

        # The ingest endpoint is the primary method for sending usage events to Metronome,
        # serving as the foundation for all billing calculations in your usage-based
        # pricing model. This high-throughput endpoint is designed for real-time streaming
        # ingestion, supports backdating 34 days, and is built to handle mission-critical
        # usage data with enterprise-grade reliability. Metronome supports 100,000 events
        # per second without requiring pre-aggregation or rollups and can scale up from
        # there. See the [Send usage events](/guides/events/send-usage-events) guide to
        # learn more about usage events.
        #
        # ### Use this endpoint to:
        #
        # Create a customer usage pipeline into Metronome that drives billable metrics,
        # credit drawdown, and invoicing. Track customer behavior, resource consumption,
        # and feature usage
        #
        # ### What happens when you send events:
        #
        # - Events are validated and processed in real-time
        # - Events are matched to customers using customer IDs or customer ingest aliases
        # - Events are matched to billable metrics and are immediately available for usage
        #   and spend calculations
        #
        # ### Usage guidelines:
        #
        # - Historical events can be backdated up to 34 days and will immediately impact
        #   live customer spend
        # - Duplicate events are automatically detected and ignored (34-day deduplication
        #   window)
        #
        # #### Event structure:
        #
        # Usage events are simple JSON objects designed for flexibility and ease of
        # integration:
        #
        # ```json
        # {
        #   "transaction_id": "2021-01-01T00:00:00Z_cluster42",
        #   "customer_id": "team@example.com",
        #   "event_type": "api_request",
        #   "timestamp": "2021-01-01T00:00:00Z",
        #   "properties": {
        #     "endpoint": "/v1/users",
        #     "method": "POST",
        #     "response_time_ms": 45,
        #     "region": "us-west-2"
        #   }
        # }
        # ```
        #
        # Learn more about
        # [usage event structure definitions](/guides/events/design-usage-events).
        #
        # #### Transaction ID
        #
        # The transaction_id serves as your idempotency key, ensuring events are processed
        # exactly once. Metronome maintains a 34-day deduplication window - significantly
        # longer than typical 12-hour windows - enabling robust backfill scenarios without
        # duplicate billing.
        #
        # - Best Practices:
        #   - Use UUIDs for one-time events: uuid4()
        #   - For heartbeat events, use deterministic IDs
        #   - Include enough context to avoid collisions across different event sources
        #
        # #### Customer ID
        #
        # Identifies which customer should be billed for this usage. Supports two
        # identification methods:
        #
        # - Metronome Customer ID: The UUID returned when creating a customer
        # - Ingest Alias: Your system's identifier (email, account number, etc.)
        #
        # Ingest aliases enable seamless integration without requiring ID mapping, and
        # customers can have multiple aliases for flexibility.
        #
        # #### Event Type:
        #
        # Categorizes the event type for billable metric matching. Choose descriptive
        # names that aligns with the product surface area.
        #
        # #### Properties:
        #
        # Flexible metadata also used to match billable metrics or to be used to serve as
        # group keys to create multiple pricing dimensions or breakdown costs by novel
        # properties for end customers or internal finance teams measuring underlying
        # COGs.
        sig do
          params(
            usage: T::Array[MetronomeSDK::V1::UsageIngestParams::Usage::OrHash],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def ingest(usage: nil, request_options: {})
        end

        # Retrieve granular usage data for a specific customer and billable metric, with
        # the ability to break down usage by custom grouping dimensions. This endpoint
        # enables deep usage analytics by segmenting data across attributes like region,
        # user, model type, or any custom dimension defined in your billable metrics.
        #
        # ### Use this endpoint to:
        #
        # - Analyze usage patterns broken down by specific attributes (region, user,
        #   department, etc.)
        # - Build detailed usage dashboards with dimensional filtering
        # - Identify high-usage segments for optimization opportunities
        #
        # ### Request parameters
        #
        # Use [`group_key`](#body-group-key) and [`group_filters`](#body-group-filters) to
        # group by one or more dimensions. This is required for compound group keys and
        # recommended for all new integrations:
        #
        # ```json
        # {
        #   "group_key": ["region", "team"],
        #   "group_filters": {
        #     "region": ["US-East", "US-West"]
        #   }
        # }
        # ```
        #
        # Important: For compound group keys, you must pass the complete set of keys that
        # make up the compound key. Partial key combinations are not supported. For
        # example, if your billable metric has a compound group key [region, team,
        # environment], you must pass all three keys in group_key—you cannot pass just
        # `[region]` or `[region, team]`.
        #
        # ### Key response fields:
        #
        # An array of `PagedUsageAggregate` objects containing:
        #
        # - `starting_on` and `ending_before`: Time window boundaries
        # - `group`: Object mapping group keys to their values
        #   - For simple groups, this will be a map with a single key-value pair (e.g.,
        #     `{"region": "US-East"}`)
        #   - For compound groups, this will be a map with multiple key-value pairs (e.g.,
        #     `{"region": "US-East", "team": "engineering"}`)
        # - `value`: Aggregated usage for this group and time window
        # - `next_page`: Pagination cursor for large datasets
        #
        # ### Usage guidelines:
        #
        # - Required parameters: Must specify `customer_id`, `billable_metric_id`, and
        #   `window_size`
        # - Time windows: Set `window_size` to hour, day, or none for different
        #   granularities
        # - Group filtering: Use `group_key` and `group_filters` to specify groups and
        #   group filters
        # - Limits: When using compound group keys (2+ keys in `group_key`), the default
        #   and max limit is 100
        # - Pagination: Use limit and `next_page` for large result sets
        # - Null handling: Group values may be null for events missing the group key
        #   property
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
            group_filters: T::Hash[Symbol, T::Array[String]],
            group_key: T::Array[String],
            starting_on: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::UsageListWithGroupsResponse
            ]
          )
        end
        def list_with_groups(
          # Body param
          billable_metric_id:,
          # Body param
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
          # Body param
          ending_before: nil,
          # Body param: Use group_key and group_filters instead. Use a single group key to
          # group by. Compound group keys are not supported.
          group_by: nil,
          # Body param: Object mapping group keys to arrays of values to filter on. Only
          # usage matching these filter values will be returned. Keys must be present in
          # group_key. Omit a key or use an empty array to include all values for that
          # dimension.
          group_filters: nil,
          # Body param: Group key to group usage by. Supports both simple (single key) and
          # compound (multiple keys) group keys.
          #
          # For simple group keys, provide a single key e.g. `["region"]`. For compound
          # group keys, provide multiple keys e.g. `["region", "team"]`.
          #
          # For streaming metrics, the keys must be defined as a simple or compound group
          # key on the billable metric. For compound group keys, all keys must match an
          # exact compound group key definition — partial matches are not allowed.
          #
          # Cannot be used together with `group_by`.
          group_key: nil,
          # Body param
          starting_on: nil,
          request_options: {}
        )
        end

        # This endpoint retrieves events by transaction ID for events that occurred within
        # the last 34 days. It is specifically designed for sampling-based testing
        # workflows to detect revenue leakage. The Event Search API provides a critical
        # observability tool that validates the integrity of your usage pipeline by
        # allowing you to sample raw events and verify their matching against active
        # billable metrics.
        #
        # Why event observability matters for revenue leakage: Silent revenue loss occurs
        # when events are dropped, delayed, or fail to match billable metrics due to:
        #
        # - Upstream system failures
        # - Event format changes
        # - Misconfigured billable metrics
        #
        # ### Use this endpoint to:
        #
        # - Sample raw events and validate they match the expected billable metrics
        # - Build custom leakage detection alerts to prevent silent revenue loss
        # - Verify event processing accuracy during system changes or metric updates
        # - Debug event matching issues in real-time
        #
        # ### Key response fields:
        #
        # - Complete event details including transaction ID, customer ID, and properties
        # - Matched Metronome customer (if any)
        # - Matched billable metric information (if any)
        # - Processing status and duplicate detection flags
        #
        # ### Usage guidelines:
        #
        # ⚠️ Important: This endpoint is heavily rate limited and designed for sampling
        # workflows only. Do not use this endpoint to check every event in your system.
        # Instead, implement a sampling strategy to randomly validate a subset of events
        # for observability purposes.
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
