# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::BillableMetrics#create
      class BillableMetricCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute name
        #   The display name of the billable metric.
        #
        #   @return [String]
        required :name, String

        # @!attribute aggregation_key
        #   Specifies the type of aggregation performed on matching events. Required if
        #   `sql` is not provided.
        #
        #   @return [String, nil]
        optional :aggregation_key, String

        # @!attribute aggregation_type
        #   Specifies the type of aggregation performed on matching events.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType, nil]
        optional :aggregation_type, enum: -> { MetronomeSDK::V1::BillableMetricCreateParams::AggregationType }

        # @!attribute custom_fields
        #   Custom fields to attach to the billable metric.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute event_type_filter
        #   An optional filtering rule to match the 'event_type' property of an event.
        #
        #   @return [MetronomeSDK::Models::V1::BillableMetricCreateParams::EventTypeFilter, nil]
        optional :event_type_filter, -> { MetronomeSDK::V1::BillableMetricCreateParams::EventTypeFilter }

        # @!attribute group_keys
        #   Property names that are used to group usage costs on an invoice. Each entry
        #   represents a set of properties used to slice events into distinct buckets.
        #
        #   @return [Array<Array<String>>, nil]
        optional :group_keys, MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Internal::Type::ArrayOf[String]]

        # @!attribute property_filters
        #   A list of filters to match events to this billable metric. Each filter defines a
        #   rule on an event property. All rules must pass for the event to match the
        #   billable metric.
        #
        #   @return [Array<MetronomeSDK::Models::V1::BillableMetricCreateParams::PropertyFilter>, nil]
        optional :property_filters,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::BillableMetricCreateParams::PropertyFilter] }

        # @!attribute sql
        #   The SQL query associated with the billable metric. This field is mutually
        #   exclusive with aggregation_type, event_type_filter, property_filters,
        #   aggregation_key, and group_keys. If provided, these other fields must be
        #   omitted.
        #
        #   @return [String, nil]
        optional :sql, String

        # @!method initialize(name:, aggregation_key: nil, aggregation_type: nil, custom_fields: nil, event_type_filter: nil, group_keys: nil, property_filters: nil, sql: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::BillableMetricCreateParams} for more details.
        #
        #   @param name [String] The display name of the billable metric.
        #
        #   @param aggregation_key [String] Specifies the type of aggregation performed on matching events. Required if `sql
        #
        #   @param aggregation_type [Symbol, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType] Specifies the type of aggregation performed on matching events.
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to attach to the billable metric.
        #
        #   @param event_type_filter [MetronomeSDK::Models::V1::BillableMetricCreateParams::EventTypeFilter] An optional filtering rule to match the 'event_type' property of an event.
        #
        #   @param group_keys [Array<Array<String>>] Property names that are used to group usage costs on an invoice. Each entry repr
        #
        #   @param property_filters [Array<MetronomeSDK::Models::V1::BillableMetricCreateParams::PropertyFilter>] A list of filters to match events to this billable metric. Each filter defines a
        #
        #   @param sql [String] The SQL query associated with the billable metric. This field is mutually exclus
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # Specifies the type of aggregation performed on matching events.
        module AggregationType
          extend MetronomeSDK::Internal::Type::Enum

          COUNT = :COUNT
          LATEST = :LATEST
          MAX = :MAX
          SUM = :SUM
          UNIQUE = :UNIQUE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class EventTypeFilter < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute in_values
          #   A list of event types that are explicitly included in the billable metric. If
          #   specified, only events of these types will match the billable metric. Must be
          #   non-empty if present.
          #
          #   @return [Array<String>, nil]
          optional :in_values, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute not_in_values
          #   A list of event types that are explicitly excluded from the billable metric. If
          #   specified, events of these types will not match the billable metric. Must be
          #   non-empty if present.
          #
          #   @return [Array<String>, nil]
          optional :not_in_values, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(in_values: nil, not_in_values: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::BillableMetricCreateParams::EventTypeFilter} for more
          #   details.
          #
          #   An optional filtering rule to match the 'event_type' property of an event.
          #
          #   @param in_values [Array<String>] A list of event types that are explicitly included in the billable metric. If sp
          #
          #   @param not_in_values [Array<String>] A list of event types that are explicitly excluded from the billable metric. If
        end

        class PropertyFilter < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute name
          #   The name of the event property.
          #
          #   @return [String]
          required :name, String

          # @!attribute exists
          #   Determines whether the property must exist in the event. If true, only events
          #   with this property will pass the filter. If false, only events without this
          #   property will pass the filter. If null or omitted, the existence of the property
          #   is optional.
          #
          #   @return [Boolean, nil]
          optional :exists, MetronomeSDK::Internal::Type::Boolean

          # @!attribute in_values
          #   Specifies the allowed values for the property to match an event. An event will
          #   pass the filter only if its property value is included in this list. If
          #   undefined, all property values will pass the filter. Must be non-empty if
          #   present.
          #
          #   @return [Array<String>, nil]
          optional :in_values, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute not_in_values
          #   Specifies the values that prevent an event from matching the filter. An event
          #   will not pass the filter if its property value is included in this list. If null
          #   or empty, all property values will pass the filter. Must be non-empty if
          #   present.
          #
          #   @return [Array<String>, nil]
          optional :not_in_values, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(name:, exists: nil, in_values: nil, not_in_values: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::BillableMetricCreateParams::PropertyFilter} for more
          #   details.
          #
          #   @param name [String] The name of the event property.
          #
          #   @param exists [Boolean] Determines whether the property must exist in the event. If true, only events wi
          #
          #   @param in_values [Array<String>] Specifies the allowed values for the property to match an event. An event will p
          #
          #   @param not_in_values [Array<String>] Specifies the values that prevent an event from matching the filter. An event wi
        end
      end
    end
  end
end
