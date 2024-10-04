# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListBillableMetricsResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] name_
      #   @return [String]
      required :name_, String

      # @!attribute [rw] aggregate
      #   (DEPRECATED) use aggregation_type instead
      #   @return [String]
      optional :aggregate, String

      # @!attribute [rw] aggregate_keys
      #   (DEPRECATED) use aggregation_key instead
      #   @return [Array<String>]
      optional :aggregate_keys, Metronome::ArrayOf.new(String)

      # @!attribute [rw] aggregation_key
      #   A key that specifies which property of the event is used to aggregate data. This key must be one of the property filter names and is not applicable when the aggregation type is 'count'.
      #   @return [String]
      optional :aggregation_key, String

      # @!attribute [rw] aggregation_type
      #   Specifies the type of aggregation performed on matching events.
      #   @return [Symbol, Metronome::Models::CustomerListBillableMetricsResponse::AggregationType]
      optional :aggregation_type,
               enum: -> { Metronome::Models::CustomerListBillableMetricsResponse::AggregationType }

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute [rw] event_type_filter
      #   An optional filtering rule to match the 'event_type' property of an event.
      #   @return [Metronome::Models::EventTypeFilter]
      optional :event_type_filter, -> { Metronome::Models::EventTypeFilter }

      # @!attribute [rw] filter
      #   (DEPRECATED) use property_filters & event_type_filter instead
      #   @return [Hash]
      optional :filter, Hash

      # @!attribute [rw] group_by
      #   (DEPRECATED) use group_keys instead
      #   @return [Array<String>]
      optional :group_by, Metronome::ArrayOf.new(String)

      # @!attribute [rw] group_keys
      #   Property names that are used to group usage costs on an invoice. Each entry represents a set of properties used to slice events into distinct buckets.
      #   @return [Array<Array<String>>]
      optional :group_keys, Metronome::ArrayOf.new(Metronome::ArrayOf.new(String))

      # @!attribute [rw] property_filters
      #   A list of filters to match events to this billable metric. Each filter defines a rule on an event property. All rules must pass for the event to match the billable metric.
      #   @return [Array<Metronome::Models::PropertyFilter>]
      optional :property_filters, Metronome::ArrayOf.new(-> { Metronome::Models::PropertyFilter })

      # @!attribute [rw] sql
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
    end
  end
end
