# typed: strong

module Metronome
  module Resources
    class Usage
      sig do
        params(
          params: T.any(Metronome::Models::UsageListParams, T::Hash[Symbol, T.anything]),
          ending_before: Time,
          starting_on: Time,
          window_size: Symbol,
          next_page: String,
          billable_metrics: T::Array[Metronome::Models::UsageListParams::BillableMetric],
          customer_ids: T::Array[String],
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::UsageListResponse)
      end
      def list(
        params,
        ending_before:,
        starting_on:,
        window_size:,
        next_page:,
        billable_metrics:,
        customer_ids:,
        request_options: {}
      ); end

      sig do
        params(
          params: T.any(Metronome::Models::UsageIngestParams, T::Hash[Symbol, T.anything]),
          usage: T::Array[Metronome::Models::UsageIngestParams::Usage],
          request_options: Metronome::RequestOpts
        ).returns(NilClass)
      end
      def ingest(params, usage:, request_options: {}); end

      sig do
        params(
          params: T.any(Metronome::Models::UsageListWithGroupsParams, T::Hash[Symbol, T.anything]),
          billable_metric_id: String,
          customer_id: String,
          window_size: Symbol,
          limit: Integer,
          next_page: String,
          current_period: T::Boolean,
          ending_before: Time,
          group_by: Metronome::Models::UsageListWithGroupsParams::GroupBy,
          starting_on: Time,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::CursorPage[Metronome::Models::UsageListWithGroupsResponse])
      end
      def list_with_groups(
        params,
        billable_metric_id:,
        customer_id:,
        window_size:,
        limit:,
        next_page:,
        current_period:,
        ending_before:,
        group_by:,
        starting_on:,
        request_options: {}
      ); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
