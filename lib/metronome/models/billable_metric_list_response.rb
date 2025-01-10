# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # billable_metric_list_response => {
    #   id: String,
    #   name: String,
    #   aggregation_key: String,
    #   aggregation_type: Metronome::Models::BillableMetricListResponse::AggregationType,
    #   archived_at: Time,
    #   **_
    # }
    # ```
    class BillableMetricListResponse < Metronome::BaseModel
      # @!attribute id
      #   ID of the billable metric
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   The display name of the billable metric.
      #
      #   @return [String]
      required :name, String

      # @!attribute aggregation_key
      #   A key that specifies which property of the event is used to aggregate data. This key must be one of the property filter names and is not applicable when the aggregation type is 'count'.
      #
      #   @return [String]
      optional :aggregation_key, String

      # @!attribute aggregation_type
      #   Specifies the type of aggregation performed on matching events.
      #
      #   @return [Symbol, Metronome::Models::BillableMetricListResponse::AggregationType]
      optional :aggregation_type, enum: -> { Metronome::Models::BillableMetricListResponse::AggregationType }

      # @!attribute archived_at
      #   RFC 3339 timestamp indicating when the billable metric was archived. If not provided, the billable metric is not archived.
      #
      #   @return [Time]
      optional :archived_at, Time

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol => String}]
      optional :custom_fields, Metronome::HashOf[String]

      # @!attribute event_type_filter
      #   An optional filtering rule to match the 'event_type' property of an event.
      #
      #   @return [Metronome::Models::EventTypeFilter]
      optional :event_type_filter, -> { Metronome::Models::EventTypeFilter }

      # @!attribute group_keys
      #   Property names that are used to group usage costs on an invoice. Each entry represents a set of properties used to slice events into distinct buckets.
      #
      #   @return [Array<Array<String>>]
      optional :group_keys, Metronome::ArrayOf[Metronome::ArrayOf[String]]

      # @!attribute property_filters
      #   A list of filters to match events to this billable metric. Each filter defines a rule on an event property. All rules must pass for the event to match the billable metric.
      #
      #   @return [Array<Metronome::Models::PropertyFilter>]
      optional :property_filters, Metronome::ArrayOf[-> { Metronome::Models::PropertyFilter }]

      # @!attribute sql
      #   The SQL query associated with the billable metric
      #
      #   @return [String]
      optional :sql, String

      # @!parse
      #   # @param id [String] ID of the billable metric
      #   #
      #   # @param name [String] The display name of the billable metric.
      #   #
      #   # @param aggregation_key [String] A key that specifies which property of the event is used to aggregate data. This
      #   #   key must be one of the property filter names and is not applicable when the
      #   #   aggregation type is 'count'.
      #   #
      #   # @param aggregation_type [String] Specifies the type of aggregation performed on matching events.
      #   #
      #   # @param archived_at [String] RFC 3339 timestamp indicating when the billable metric was archived. If not
      #   #   provided, the billable metric is not archived.
      #   #
      #   # @param custom_fields [Hash{Symbol => String}]
      #   #
      #   # @param event_type_filter [Metronome::Models::EventTypeFilter] An optional filtering rule to match the 'event_type' property of an event.
      #   #
      #   # @param group_keys [Array<Array<String>>] Property names that are used to group usage costs on an invoice. Each entry
      #   #   represents a set of properties used to slice events into distinct buckets.
      #   #
      #   # @param property_filters [Array<Metronome::Models::PropertyFilter>] A list of filters to match events to this billable metric. Each filter defines a
      #   #   rule on an event property. All rules must pass for the event to match the
      #   #   billable metric.
      #   #
      #   # @param sql [String] The SQL query associated with the billable metric
      #   #
      #   def initialize(
      #     id:,
      #     name:,
      #     aggregation_key: nil,
      #     aggregation_type: nil,
      #     archived_at: nil,
      #     custom_fields: nil,
      #     event_type_filter: nil,
      #     group_keys: nil,
      #     property_filters: nil,
      #     sql: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # Specifies the type of aggregation performed on matching events.
      #
      # @example
      #
      # ```ruby
      # case aggregation_type
      # in :COUNT
      #   # ...
      # in :LATEST
      #   # ...
      # in :MAX
      #   # ...
      # in :SUM
      #   # ...
      # in :UNIQUE
      #   # ...
      # end
      # ```
      class AggregationType < Metronome::Enum
        COUNT = :COUNT
        LATEST = :LATEST
        MAX = :MAX
        SUM = :SUM
        UNIQUE = :UNIQUE

        finalize!
      end
    end
  end
end
