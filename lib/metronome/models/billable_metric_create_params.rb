# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricCreateParams < Metronome::BaseModel
      # @!attribute name
      #   The display name of the billable metric.
      #
      #   @return [String]
      required :name, String

      # @!attribute aggregation_key
      #   Specifies the type of aggregation performed on matching events. Required if `sql` is not provided.
      #
      #   @return [String]
      optional :aggregation_key, String

      # @!attribute aggregation_type
      #   Specifies the type of aggregation performed on matching events.
      #
      #   @return [Symbol, Metronome::Models::BillableMetricCreateParams::AggregationType]
      optional :aggregation_type, enum: -> { Metronome::Models::BillableMetricCreateParams::AggregationType }

      # @!attribute custom_fields
      #   Custom fields to attach to the billable metric.
      #
      #   @return [Hash]
      optional :custom_fields, Hash

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
      #   The SQL query associated with the billable metric. This field is mutually exclusive with aggregation_type, event_type_filter, property_filters, aggregation_key, and group_keys. If provided, these other fields must be omitted.
      #
      #   @return [String]
      optional :sql, String

      # @!parse
      #   # @param name [String] The display name of the billable metric.
      #   #
      #   # @param aggregation_key [String, nil] Specifies the type of aggregation performed on matching events. Required if
      #   #   `sql` is not provided.
      #   #
      #   # @param aggregation_type [String, nil] Specifies the type of aggregation performed on matching events.
      #   #
      #   # @param custom_fields [Hash, nil] Custom fields to attach to the billable metric.
      #   #
      #   # @param event_type_filter [Metronome::Models::EventTypeFilter, nil] An optional filtering rule to match the 'event_type' property of an event.
      #   #
      #   # @param group_keys [Array<Array<String>>, nil] Property names that are used to group usage costs on an invoice. Each entry
      #   #   represents a set of properties used to slice events into distinct buckets.
      #   #
      #   # @param property_filters [Array<Metronome::Models::PropertyFilter>, nil] A list of filters to match events to this billable metric. Each filter defines a
      #   #   rule on an event property. All rules must pass for the event to match the
      #   #   billable metric.
      #   #
      #   # @param sql [String, nil] The SQL query associated with the billable metric. This field is mutually
      #   #   exclusive with aggregation_type, event_type_filter, property_filters,
      #   #   aggregation_key, and group_keys. If provided, these other fields must be
      #   #   omitted.
      #   #
      #   def initialize(
      #     name:,
      #     aggregation_key: nil,
      #     aggregation_type: nil,
      #     custom_fields: nil,
      #     event_type_filter: nil,
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
