# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::BillableMetricRetrieveResponse::Data]
      required :data, -> { Metronome::Models::BillableMetricRetrieveResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   ID of the billable metric
        #   @return [String]
        required :id, String

        # @!attribute [rw] aggregation_type
        #   Specifies the type of aggregation performed on matching events.
        #   @return [Symbol]
        required :aggregation_type,
                 Metronome::Enum.new(
                   :count,
                   :Count,
                   :COUNT,
                   :latest,
                   :Latest,
                   :LATEST,
                   :max,
                   :Max,
                   :MAX,
                   :sum,
                   :Sum,
                   :SUM,
                   :unique,
                   :Unique,
                   :UNIQUE
                 )

        # @!attribute [rw] name_
        #   The display name of the billable metric.
        #   @return [String]
        required :name_, String

        # @!attribute [rw] aggregation_key
        #   A key that specifies which property of the event is used to aggregate data. This key must be one of the property filter names and is not applicable when the aggregation type is 'count'.
        #   @return [String]
        optional :aggregation_key, String

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] event_type_filter
        #   An optional filtering rule to match the 'event_type' property of an event.
        #   @return [Metronome::Models::BillableMetricRetrieveResponse::Data::EventTypeFilter]
        optional :event_type_filter,
                 -> { Metronome::Models::BillableMetricRetrieveResponse::Data::EventTypeFilter }

        # @!attribute [rw] group_keys
        #   Property names that are used to group usage costs on an invoice. Each entry represents a set of properties used to slice events into distinct buckets.
        #   @return [Array<Array<String>>]
        optional :group_keys, Metronome::ArrayOf.new(Metronome::ArrayOf.new(String))

        # @!attribute [rw] property_filters
        #   A list of filters to match events to this billable metric. Each filter defines a rule on an event property. All rules must pass for the event to match the billable metric.
        #   @return [Array<Metronome::Models::BillableMetricRetrieveResponse::Data::PropertyFilter>]
        optional :property_filters,
                 Metronome::ArrayOf.new(-> { Metronome::Models::BillableMetricRetrieveResponse::Data::PropertyFilter })

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
end
