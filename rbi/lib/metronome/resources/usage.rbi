# typed: strong

module Metronome
  module Resources
    class Usage
      sig do
        params(
          ending_before: Time,
          starting_on: Time,
          window_size: Symbol,
          next_page: String,
          billable_metrics: T::Array[Metronome::Models::UsageListParams::BillableMetric],
          customer_ids: T::Array[String],
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::Models::UsageListResponse)
      end
      def list(
        ending_before:,
        starting_on:,
        window_size:,
        next_page: nil,
        billable_metrics: nil,
        customer_ids: nil,
        request_options: {}
      )
      end

      sig do
        params(
          usage: T::Array[Metronome::Models::UsageIngestParams::Usage],
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def ingest(usage: nil, request_options: {})
      end

      sig do
        params(
          billable_metric_id: String,
          customer_id: String,
          window_size: Symbol,
          limit: Integer,
          next_page: String,
          current_period: T::Boolean,
          ending_before: Time,
          group_by: Metronome::Models::UsageListWithGroupsParams::GroupBy,
          starting_on: Time,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::CursorPage[Metronome::Models::UsageListWithGroupsResponse])
      end
      def list_with_groups(
        billable_metric_id:,
        customer_id:,
        window_size:,
        limit: nil,
        next_page: nil,
        current_period: nil,
        ending_before: nil,
        group_by: nil,
        starting_on: nil,
        request_options: {}
      )
      end

      sig { params(client: Metronome::Client).void }
      def initialize(client:)
      end
    end
  end
end
