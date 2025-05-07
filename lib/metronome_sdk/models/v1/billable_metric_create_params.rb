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
        #   @return [Symbol, MetronomeSDK::V1::BillableMetricCreateParams::AggregationType, nil]
        optional :aggregation_type, enum: -> { MetronomeSDK::V1::BillableMetricCreateParams::AggregationType }

        # @!attribute custom_fields
        #   Custom fields to attach to the billable metric.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute event_type_filter
        #   An optional filtering rule to match the 'event_type' property of an event.
        #
        #   @return [MetronomeSDK::EventTypeFilter, nil]
        optional :event_type_filter, -> { MetronomeSDK::EventTypeFilter }

        # @!attribute group_keys
        #   Property names that are used to group usage costs on an invoice. Each entry
        #   represents a set of properties used to slice events into distinct buckets.
        #
        #   @return [Array<Array<String>>, nil]
        optional :group_keys,
                 MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Internal::Type::ArrayOf[String]]

        # @!attribute property_filters
        #   A list of filters to match events to this billable metric. Each filter defines a
        #   rule on an event property. All rules must pass for the event to match the
        #   billable metric.
        #
        #   @return [Array<MetronomeSDK::PropertyFilter>, nil]
        optional :property_filters, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PropertyFilter] }

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
        #   @param aggregation_type [Symbol, MetronomeSDK::V1::BillableMetricCreateParams::AggregationType] Specifies the type of aggregation performed on matching events.
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to attach to the billable metric.
        #
        #   @param event_type_filter [MetronomeSDK::EventTypeFilter] An optional filtering rule to match the 'event_type' property of an event.
        #
        #   @param group_keys [Array<Array<String>>] Property names that are used to group usage costs on an invoice. Each entry repr
        #
        #   @param property_filters [Array<MetronomeSDK::PropertyFilter>] A list of filters to match events to this billable metric. Each filter defines a
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
      end
    end
  end
end
