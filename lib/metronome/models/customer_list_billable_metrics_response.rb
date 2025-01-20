# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # customer_list_billable_metrics_response => {
    #   id: String,
    #   name: String,
    #   aggregate: String,
    #   aggregate_keys: -> { Metronome::ArrayOf[String] === _1 },
    #   aggregation_key: String,
    #   **_
    # }
    # ```
    class CustomerListBillableMetricsResponse < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute [r] aggregate
      #   (DEPRECATED) use aggregation_type instead
      #
      #   @return [String, nil]
      optional :aggregate, String

      # @!parse
      #   # @return [String]
      #   attr_writer :aggregate

      # @!attribute [r] aggregate_keys
      #   (DEPRECATED) use aggregation_key instead
      #
      #   @return [Array<String>]
      optional :aggregate_keys, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :aggregate_keys

      # @!attribute [r] aggregation_key
      #   A key that specifies which property of the event is used to aggregate data. This key must be one of the property filter names and is not applicable when the aggregation type is 'count'.
      #
      #   @return [String, nil]
      optional :aggregation_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :aggregation_key

      # @!attribute [r] aggregation_type
      #   Specifies the type of aggregation performed on matching events.
      #
      #   @return [Symbol, Metronome::Models::CustomerListBillableMetricsResponse::AggregationType, nil]
      optional :aggregation_type,
               enum: -> { Metronome::Models::CustomerListBillableMetricsResponse::AggregationType }

      # @!parse
      #   # @return [Symbol, Metronome::Models::CustomerListBillableMetricsResponse::AggregationType]
      #   attr_writer :aggregation_type

      # @!attribute [r] archived_at
      #   RFC 3339 timestamp indicating when the billable metric was archived. If not provided, the billable metric is not archived.
      #
      #   @return [Time, nil]
      optional :archived_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :archived_at

      # @!attribute [r] custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, Metronome::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :custom_fields

      # @!attribute [r] event_type_filter
      #   An optional filtering rule to match the 'event_type' property of an event.
      #
      #   @return [Metronome::Models::EventTypeFilter, nil]
      optional :event_type_filter, -> { Metronome::Models::EventTypeFilter }

      # @!parse
      #   # @return [Metronome::Models::EventTypeFilter]
      #   attr_writer :event_type_filter

      # @!attribute [r] filter
      #   (DEPRECATED) use property_filters & event_type_filter instead
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :filter, Metronome::HashOf[Metronome::Unknown]

      # @!parse
      #   # @return [Hash{Symbol=>Object}]
      #   attr_writer :filter

      # @!attribute [r] group_by
      #   (DEPRECATED) use group_keys instead
      #
      #   @return [Array<String>]
      optional :group_by, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :group_by

      # @!attribute [r] group_keys
      #   Property names that are used to group usage costs on an invoice. Each entry represents a set of properties used to slice events into distinct buckets.
      #
      #   @return [Array<Array<String>>]
      optional :group_keys, Metronome::ArrayOf[Metronome::ArrayOf[String]]

      # @!parse
      #   # @return [Array<Array<String>>]
      #   attr_writer :group_keys

      # @!attribute [r] property_filters
      #   A list of filters to match events to this billable metric. Each filter defines a rule on an event property. All rules must pass for the event to match the billable metric.
      #
      #   @return [Array<Metronome::Models::PropertyFilter>]
      optional :property_filters, -> { Metronome::ArrayOf[Metronome::Models::PropertyFilter] }

      # @!parse
      #   # @return [Array<Metronome::Models::PropertyFilter>]
      #   attr_writer :property_filters

      # @!attribute [r] sql
      #   The SQL query associated with the billable metric
      #
      #   @return [String, nil]
      optional :sql, String

      # @!parse
      #   # @return [String]
      #   attr_writer :sql

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param name [String]
      #   #
      #   # @param aggregate [String] (DEPRECATED) use aggregation_type instead
      #   #
      #   # @param aggregate_keys [Array<String>] (DEPRECATED) use aggregation_key instead
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
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   #
      #   # @param event_type_filter [Metronome::Models::EventTypeFilter] An optional filtering rule to match the 'event_type' property of an event.
      #   #
      #   # @param filter [Hash{Symbol=>Object}] (DEPRECATED) use property_filters & event_type_filter instead
      #   #
      #   # @param group_by [Array<String>] (DEPRECATED) use group_keys instead
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
      #     aggregate: nil,
      #     aggregate_keys: nil,
      #     aggregation_key: nil,
      #     aggregation_type: nil,
      #     archived_at: nil,
      #     custom_fields: nil,
      #     event_type_filter: nil,
      #     filter: nil,
      #     group_by: nil,
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
