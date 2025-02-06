# typed: strong

module Metronome
  module Resources
    class BillableMetrics
      sig do
        params(
          name: String,
          aggregation_key: String,
          aggregation_type: Symbol,
          custom_fields: T::Hash[Symbol, String],
          event_type_filter: Metronome::Models::EventTypeFilter,
          group_keys: T::Array[T::Array[String]],
          property_filters: T::Array[Metronome::Models::PropertyFilter],
          sql: String,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Metronome::Models::BillableMetricCreateResponse)
      end
      def create(
        name:,
        aggregation_key: nil,
        aggregation_type: nil,
        custom_fields: nil,
        event_type_filter: nil,
        group_keys: nil,
        property_filters: nil,
        sql: nil,
        request_options: {}
      ); end

      sig do
        params(
          billable_metric_id: String,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Metronome::Models::BillableMetricRetrieveResponse)
      end
      def retrieve(billable_metric_id:, request_options: {}); end

      sig do
        params(
          include_archived: T::Boolean,
          limit: Integer,
          next_page: String,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Metronome::CursorPage[Metronome::Models::BillableMetricListResponse])
      end
      def list(include_archived: nil, limit: nil, next_page: nil, request_options: {}); end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Metronome::Models::BillableMetricArchiveResponse)
      end
      def archive(id:, request_options: {}); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
