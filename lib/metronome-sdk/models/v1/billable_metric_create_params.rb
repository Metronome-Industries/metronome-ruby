# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class BillableMetricCreateParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute name
        #   The display name of the billable metric.
        #
        #   @return [String]
        required :name, String

        # @!attribute [r] aggregation_key
        #   Specifies the type of aggregation performed on matching events. Required if
        #     `sql` is not provided.
        #
        #   @return [String, nil]
        optional :aggregation_key, String

        # @!parse
        #   # @return [String]
        #   attr_writer :aggregation_key

        # @!attribute [r] aggregation_type
        #   Specifies the type of aggregation performed on matching events.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType, nil]
        optional :aggregation_type,
                 enum: -> { MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType }

        # @!parse
        #   # @return [Symbol, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType]
        #   attr_writer :aggregation_type

        # @!attribute [r] custom_fields
        #   Custom fields to attach to the billable metric.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :custom_fields

        # @!attribute [r] event_type_filter
        #   An optional filtering rule to match the 'event_type' property of an event.
        #
        #   @return [MetronomeSDK::Models::EventTypeFilter, nil]
        optional :event_type_filter, -> { MetronomeSDK::Models::EventTypeFilter }

        # @!parse
        #   # @return [MetronomeSDK::Models::EventTypeFilter]
        #   attr_writer :event_type_filter

        # @!attribute [r] group_keys
        #   Property names that are used to group usage costs on an invoice. Each entry
        #     represents a set of properties used to slice events into distinct buckets.
        #
        #   @return [Array<Array<String>>, nil]
        optional :group_keys, MetronomeSDK::ArrayOf[MetronomeSDK::ArrayOf[String]]

        # @!parse
        #   # @return [Array<Array<String>>]
        #   attr_writer :group_keys

        # @!attribute [r] property_filters
        #   A list of filters to match events to this billable metric. Each filter defines a
        #     rule on an event property. All rules must pass for the event to match the
        #     billable metric.
        #
        #   @return [Array<MetronomeSDK::Models::PropertyFilter>, nil]
        optional :property_filters, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::PropertyFilter] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::PropertyFilter>]
        #   attr_writer :property_filters

        # @!attribute [r] sql
        #   The SQL query associated with the billable metric. This field is mutually
        #     exclusive with aggregation_type, event_type_filter, property_filters,
        #     aggregation_key, and group_keys. If provided, these other fields must be
        #     omitted.
        #
        #   @return [String, nil]
        optional :sql, String

        # @!parse
        #   # @return [String]
        #   attr_writer :sql

        # @!parse
        #   # @param name [String]
        #   # @param aggregation_key [String]
        #   # @param aggregation_type [Symbol, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param event_type_filter [MetronomeSDK::Models::EventTypeFilter]
        #   # @param group_keys [Array<Array<String>>]
        #   # @param property_filters [Array<MetronomeSDK::Models::PropertyFilter>]
        #   # @param sql [String]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     name:,
        #     aggregation_key: nil,
        #     aggregation_type: nil,
        #     custom_fields: nil,
        #     event_type_filter: nil,
        #     group_keys: nil,
        #     property_filters: nil,
        #     sql: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        # @abstract
        #
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
        class AggregationType < MetronomeSDK::Enum
          COUNT = :COUNT
          LATEST = :LATEST
          MAX = :MAX
          SUM = :SUM
          UNIQUE = :UNIQUE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
