# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricListResponse < BaseModel
      # @!attribute [rw] id
      #   ID of the billable metric
      #   @return [String]
      required :id, String

      # @!attribute [rw] name_
      #   The display name of the billable metric.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] aggregation_key
      #   A key that specifies which property of the event is used to aggregate data. This key must be one of the property filter names and is not applicable when the aggregation type is 'count'.
      #   @return [String]
      optional :aggregation_key, String

      # @!attribute [rw] aggregation_type
      #   Specifies the type of aggregation performed on matching events.
      #   @return [Symbol, Metronome::Models::BillableMetricListResponse::AggregationType]
      optional :aggregation_type, enum: -> { Metronome::Models::BillableMetricListResponse::AggregationType }

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute [rw] event_type_filter
      #   An optional filtering rule to match the 'event_type' property of an event.
      #   @return [Metronome::Models::EventTypeFilter]
      optional :event_type_filter, -> { Metronome::Models::EventTypeFilter }

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

      # Create a new instance of BillableMetricListResponse from a Hash of raw data.
      #
      # @overload initialize(id: nil, name: nil, aggregation_key: nil, aggregation_type: nil, custom_fields: nil, event_type_filter: nil, group_keys: nil, property_filters: nil, sql: nil)
      # @param id [String] ID of the billable metric
      # @param name [String] The display name of the billable metric.
      # @param aggregation_key [String] A key that specifies which property of the event is used to aggregate data. This
      #   key must be one of the property filter names and is not applicable when the
      #   aggregation type is 'count'.
      # @param aggregation_type [String] Specifies the type of aggregation performed on matching events.
      # @param custom_fields [Hash]
      # @param event_type_filter [Object] An optional filtering rule to match the 'event_type' property of an event.
      # @param group_keys [Array<Array<String>>] Property names that are used to group usage costs on an invoice. Each entry
      #   represents a set of properties used to slice events into distinct buckets.
      # @param property_filters [Array<Object>] A list of filters to match events to this billable metric. Each filter defines a
      #   rule on an event property. All rules must pass for the event to match the
      #   billable metric.
      # @param sql [String] The SQL query associated with the billable metric
      def initialize(data = {})
        super
      end
    end
  end
end
