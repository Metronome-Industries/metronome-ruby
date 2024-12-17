# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListBillableMetricsResponse < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute aggregate
      #   (DEPRECATED) use aggregation_type instead
      #
      #   @return [String]
      optional :aggregate, String

      # @!attribute aggregate_keys
      #   (DEPRECATED) use aggregation_key instead
      #
      #   @return [Array<String>]
      optional :aggregate_keys, Metronome::ArrayOf.new(String)

      # @!attribute aggregation_key
      #   A key that specifies which property of the event is used to aggregate data. This key must be one of the property filter names and is not applicable when the aggregation type is 'count'.
      #
      #   @return [String]
      optional :aggregation_key, String

      # @!attribute aggregation_type
      #   Specifies the type of aggregation performed on matching events.
      #
      #   @return [Symbol, Metronome::Models::CustomerListBillableMetricsResponse::AggregationType]
      optional :aggregation_type,
               enum: -> { Metronome::Models::CustomerListBillableMetricsResponse::AggregationType }

      # @!attribute archived_at
      #   RFC 3339 timestamp indicating when the billable metric was archived. If not provided, the billable metric is not archived.
      #
      #   @return [Time]
      optional :archived_at, Time

      # @!attribute custom_fields
      #
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute event_type_filter
      #   An optional filtering rule to match the 'event_type' property of an event.
      #
      #   @return [Metronome::Models::EventTypeFilter]
      optional :event_type_filter, -> { Metronome::Models::EventTypeFilter }

      # @!attribute filter
      #   (DEPRECATED) use property_filters & event_type_filter instead
      #
      #   @return [Hash]
      optional :filter, Hash

      # @!attribute group_by
      #   (DEPRECATED) use group_keys instead
      #
      #   @return [Array<String>]
      optional :group_by, Metronome::ArrayOf.new(String)

      # @!attribute group_keys
      #   Property names that are used to group usage costs on an invoice. Each entry represents a set of properties used to slice events into distinct buckets.
      #
      #   @return [Array<Array<String>>]
      optional :group_keys, Metronome::ArrayOf.new(Metronome::ArrayOf.new(String))

      # @!attribute property_filters
      #   A list of filters to match events to this billable metric. Each filter defines a rule on an event property. All rules must pass for the event to match the billable metric.
      #
      #   @return [Array<Metronome::Models::PropertyFilter>]
      optional :property_filters, Metronome::ArrayOf.new(-> { Metronome::Models::PropertyFilter })

      # @!attribute sql
      #   The SQL query associated with the billable metric
      #
      #   @return [String]
      optional :sql, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param name [String]
      #   #
      #   # @param aggregate [String, nil] (DEPRECATED) use aggregation_type instead
      #   #
      #   # @param aggregate_keys [Array<String>, nil] (DEPRECATED) use aggregation_key instead
      #   #
      #   # @param aggregation_key [String, nil] A key that specifies which property of the event is used to aggregate data. This
      #   #   key must be one of the property filter names and is not applicable when the
      #   #   aggregation type is 'count'.
      #   #
      #   # @param aggregation_type [String, nil] Specifies the type of aggregation performed on matching events.
      #   #
      #   # @param archived_at [String, nil] RFC 3339 timestamp indicating when the billable metric was archived. If not
      #   #   provided, the billable metric is not archived.
      #   #
      #   # @param custom_fields [Hash, nil]
      #   #
      #   # @param event_type_filter [Metronome::Models::EventTypeFilter, nil] An optional filtering rule to match the 'event_type' property of an event.
      #   #
      #   # @param filter [Hash, nil] (DEPRECATED) use property_filters & event_type_filter instead
      #   #
      #   # @param group_by [Array<String>, nil] (DEPRECATED) use group_keys instead
      #   #
      #   # @param group_keys [Array<Array<String>>, nil] Property names that are used to group usage costs on an invoice. Each entry
      #   #   represents a set of properties used to slice events into distinct buckets.
      #   #
      #   # @param property_filters [Array<Metronome::Models::PropertyFilter>, nil] A list of filters to match events to this billable metric. Each filter defines a
      #   #   rule on an event property. All rules must pass for the event to match the
      #   #   billable metric.
      #   #
      #   # @param sql [String, nil] The SQL query associated with the billable metric
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
      #     sql: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # Specifies the type of aggregation performed on matching events.
      #
      # @example
      #
      # ```ruby
      # case enum
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
      end
    end
  end
end
