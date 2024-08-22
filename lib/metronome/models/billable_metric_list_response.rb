# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricListResponse < BaseModel
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
      #   @return [Symbol]
      optional :aggregation_type, Metronome::Enum.new(:COUNT, :LATEST, :MAX, :SUM, :UNIQUE)

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute [rw] event_type_filter
      #   An optional filtering rule to match the 'event_type' property of an event.
      #   @return [Metronome::Models::BillableMetricListResponse::EventTypeFilter]
      optional :event_type_filter, -> { Metronome::Models::BillableMetricListResponse::EventTypeFilter }

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
      #   @return [Array<Metronome::Models::BillableMetricListResponse::PropertyFilter>]
      optional :property_filters,
               Metronome::ArrayOf.new(-> { Metronome::Models::BillableMetricListResponse::PropertyFilter })

      # @!attribute [rw] sql
      #   The SQL query associated with the billable metric
      #   @return [String]
      optional :sql, String

      class EventTypeFilter < BaseModel
        # @!attribute [rw] in_values
        #   A list of event types that are explicitly included in the billable metric. If specified, only events of these types will match the billable metric. Must be non-empty if present.
        #   @return [Array<String>]
        optional :in_values, Metronome::ArrayOf.new(String)

        # @!attribute [rw] not_in_values
        #   A list of event types that are explicitly excluded from the billable metric. If specified, events of these types will not match the billable metric. Must be non-empty if present.
        #   @return [Array<String>]
        optional :not_in_values, Metronome::ArrayOf.new(String)
      end

      class PropertyFilter < BaseModel
        # @!attribute [rw] name_
        #   The name of the event property.
        #   @return [String]
        required :name_, String

        # @!attribute [rw] exists
        #   Determines whether the property must exist in the event. If true, only events with this property will pass the filter. If false, only events without this property will pass the filter. If null or omitted, the existence of the property is optional.
        #   @return [Boolean]
        optional :exists, Metronome::BooleanModel

        # @!attribute [rw] in_values
        #   Specifies the allowed values for the property to match an event. An event will pass the filter only if its property value is included in this list. If undefined, all property values will pass the filter. Must be non-empty if present.
        #   @return [Array<String>]
        optional :in_values, Metronome::ArrayOf.new(String)

        # @!attribute [rw] not_in_values
        #   Specifies the values that prevent an event from matching the filter. An event will not pass the filter if its property value is included in this list. If null or empty, all property values will pass the filter. Must be non-empty if present.
        #   @return [Array<String>]
        optional :not_in_values, Metronome::ArrayOf.new(String)
      end
    end
  end
end
