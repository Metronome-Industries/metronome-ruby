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

        # @!attribute [rw] name_
        #   The display name of the billable metric.
        #   @return [String]
        required :name_, String, api_name: :name

        # @!attribute [rw] aggregation_key
        #   A key that specifies which property of the event is used to aggregate data. This key must be one of the property filter names and is not applicable when the aggregation type is 'count'.
        #   @return [String]
        optional :aggregation_key, String

        # @!attribute [rw] aggregation_type
        #   Specifies the type of aggregation performed on matching events.
        #   @return [Symbol, Metronome::Models::BillableMetricRetrieveResponse::Data::AggregationType]
        optional :aggregation_type,
                 enum: -> { Metronome::Models::BillableMetricRetrieveResponse::Data::AggregationType }

        # @!attribute [rw] archived_at
        #   RFC 3339 timestamp indicating when the billable metric was archived. If not provided, the billable metric is not archived.
        #   @return [Time]
        optional :archived_at, Time

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

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id ID of the billable metric
        #   #   @option data [String] :name The display name of the billable metric.
        #   #   @option data [String, nil] :aggregation_key A key that specifies which property of the event is used to aggregate data. This
        #   #     key must be one of the property filter names and is not applicable when the
        #   #     aggregation type is 'count'.
        #   #   @option data [String, nil] :aggregation_type Specifies the type of aggregation performed on matching events.
        #   #   @option data [String, nil] :archived_at RFC 3339 timestamp indicating when the billable metric was archived. If not
        #   #     provided, the billable metric is not archived.
        #   #   @option data [Hash, nil] :custom_fields
        #   #   @option data [Object, nil] :event_type_filter An optional filtering rule to match the 'event_type' property of an event.
        #   #   @option data [Array<Array<String>>, nil] :group_keys Property names that are used to group usage costs on an invoice. Each entry
        #   #     represents a set of properties used to slice events into distinct buckets.
        #   #   @option data [Array<Object>, nil] :property_filters A list of filters to match events to this billable metric. Each filter defines a
        #   #     rule on an event property. All rules must pass for the event to match the
        #   #     billable metric.
        #   #   @option data [String, nil] :sql The SQL query associated with the billable metric
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of BillableMetricRetrieveResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :data
      #   def initialize(data = {}) = super
    end
  end
end
