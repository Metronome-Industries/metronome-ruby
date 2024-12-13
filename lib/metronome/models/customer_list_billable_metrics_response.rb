# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListBillableMetricsResponse < Metronome::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute name
      #   @return [String]
      required :name, String

      # @!attribute aggregate
      #   (DEPRECATED) use aggregation_type instead
      #   @return [String]
      optional :aggregate, String

      # @!attribute aggregate_keys
      #   (DEPRECATED) use aggregation_key instead
      #   @return [Array<String>]
      optional :aggregate_keys, Metronome::ArrayOf.new(String)

      # @!attribute aggregation_key
      #   A key that specifies which property of the event is used to aggregate data. This key must be one of the property filter names and is not applicable when the aggregation type is 'count'.
      #   @return [String]
      optional :aggregation_key, String

      # @!attribute aggregation_type
      #   Specifies the type of aggregation performed on matching events.
      #   @return [Symbol, Metronome::Models::CustomerListBillableMetricsResponse::AggregationType]
      optional :aggregation_type,
               enum: -> { Metronome::Models::CustomerListBillableMetricsResponse::AggregationType }

      # @!attribute archived_at
      #   RFC 3339 timestamp indicating when the billable metric was archived. If not provided, the billable metric is not archived.
      #   @return [Time]
      optional :archived_at, Time

      # @!attribute custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute event_type_filter
      #   An optional filtering rule to match the 'event_type' property of an event.
      #   @return [Metronome::Models::EventTypeFilter]
      optional :event_type_filter, -> { Metronome::Models::EventTypeFilter }

      # @!attribute filter
      #   (DEPRECATED) use property_filters & event_type_filter instead
      #   @return [Hash]
      optional :filter, Hash

      # @!attribute group_by
      #   (DEPRECATED) use group_keys instead
      #   @return [Array<String>]
      optional :group_by, Metronome::ArrayOf.new(String)

      # @!attribute group_keys
      #   Property names that are used to group usage costs on an invoice. Each entry represents a set of properties used to slice events into distinct buckets.
      #   @return [Array<Array<String>>]
      optional :group_keys, Metronome::ArrayOf.new(Metronome::ArrayOf.new(String))

      # @!attribute property_filters
      #   A list of filters to match events to this billable metric. Each filter defines a rule on an event property. All rules must pass for the event to match the billable metric.
      #   @return [Array<Metronome::Models::PropertyFilter>]
      optional :property_filters, Metronome::ArrayOf.new(-> { Metronome::Models::PropertyFilter })

      # @!attribute sql
      #   The SQL query associated with the billable metric
      #   @return [String]
      optional :sql, String

      # Specifies the type of aggregation performed on matching events.
      class AggregationType < Metronome::Enum
        COUNT = :COUNT
        LATEST = :LATEST
        MAX = :MAX
        SUM = :SUM
        UNIQUE = :UNIQUE
      end

      # @!parse
      #   # Create a new instance of CustomerListBillableMetricsResponse from a Hash of raw
      #   #   data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :name
      #   #   @option data [String, nil] :aggregate (DEPRECATED) use aggregation_type instead
      #   #   @option data [Array<String>, nil] :aggregate_keys (DEPRECATED) use aggregation_key instead
      #   #   @option data [String, nil] :aggregation_key A key that specifies which property of the event is used to aggregate data. This
      #   #     key must be one of the property filter names and is not applicable when the
      #   #     aggregation type is 'count'.
      #   #   @option data [String, nil] :aggregation_type Specifies the type of aggregation performed on matching events.
      #   #   @option data [String, nil] :archived_at RFC 3339 timestamp indicating when the billable metric was archived. If not
      #   #     provided, the billable metric is not archived.
      #   #   @option data [Hash, nil] :custom_fields
      #   #   @option data [Object, nil] :event_type_filter An optional filtering rule to match the 'event_type' property of an event.
      #   #   @option data [Hash, nil] :filter (DEPRECATED) use property_filters & event_type_filter instead
      #   #   @option data [Array<String>, nil] :group_by (DEPRECATED) use group_keys instead
      #   #   @option data [Array<Array<String>>, nil] :group_keys Property names that are used to group usage costs on an invoice. Each entry
      #   #     represents a set of properties used to slice events into distinct buckets.
      #   #   @option data [Array<Object>, nil] :property_filters A list of filters to match events to this billable metric. Each filter defines a
      #   #     rule on an event property. All rules must pass for the event to match the
      #   #     billable metric.
      #   #   @option data [String, nil] :sql The SQL query associated with the billable metric
      #   def initialize(data = {}) = super
    end
  end
end
