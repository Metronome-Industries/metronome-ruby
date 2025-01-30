# typed: strong

module Metronome
  module Resources
    class BillableMetrics
      sig do
        params(
          params: T.any(Metronome::Models::BillableMetricCreateParams, T::Hash[Symbol, T.anything]),
          name: String,
          aggregation_key: String,
          aggregation_type: Symbol,
          custom_fields: T::Hash[Symbol, String],
          event_type_filter: Metronome::Models::EventTypeFilter,
          group_keys: T::Array[T::Array[String]],
          property_filters: T::Array[Metronome::Models::PropertyFilter],
          sql: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::BillableMetricCreateResponse)
      end
      def create(
        params,
        name:,
        aggregation_key:,
        aggregation_type:,
        custom_fields:,
        event_type_filter:,
        group_keys:,
        property_filters:,
        sql:,
        request_options: {}
      ); end

      sig do
        params(
          params: T.any(Metronome::Models::BillableMetricRetrieveParams, T::Hash[Symbol, T.anything]),
          billable_metric_id: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::BillableMetricRetrieveResponse)
      end
      def retrieve(params, billable_metric_id:, request_options: {}); end

      sig do
        params(
          include_archived: T::Boolean,
          limit: Integer,
          next_page: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::CursorPage[Metronome::Models::BillableMetricListResponse])
      end
      def list(include_archived:, limit:, next_page:, request_options: {}); end

      sig do
        params(
          params: T.any(Metronome::Models::BillableMetricArchiveParams, T::Hash[Symbol, T.anything]),
          id: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::BillableMetricArchiveResponse)
      end
      def archive(params, id:, request_options: {}); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
