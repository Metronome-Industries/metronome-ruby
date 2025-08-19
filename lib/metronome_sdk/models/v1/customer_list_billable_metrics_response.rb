# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#list_billable_metrics
      class CustomerListBillableMetricsResponse < MetronomeSDK::Internal::Type::BaseModel
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
        #   @return [String, nil]
        optional :aggregate, String

        # @!attribute aggregate_keys
        #   (DEPRECATED) use aggregation_key instead
        #
        #   @return [Array<String>, nil]
        optional :aggregate_keys, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute aggregation_key
        #   A key that specifies which property of the event is used to aggregate data. This
        #   key must be one of the property filter names and is not applicable when the
        #   aggregation type is 'count'.
        #
        #   @return [String, nil]
        optional :aggregation_key, String

        # @!attribute aggregation_type
        #   Specifies the type of aggregation performed on matching events.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType, nil]
        optional :aggregation_type,
                 enum: -> { MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType }

        # @!attribute archived_at
        #   RFC 3339 timestamp indicating when the billable metric was archived. If not
        #   provided, the billable metric is not archived.
        #
        #   @return [Time, nil]
        optional :archived_at, Time

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute event_type_filter
        #   An optional filtering rule to match the 'event_type' property of an event.
        #
        #   @return [MetronomeSDK::Models::EventTypeFilter, nil]
        optional :event_type_filter, -> { MetronomeSDK::EventTypeFilter }

        # @!attribute filter
        #   (DEPRECATED) use property_filters & event_type_filter instead
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :filter, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

        # @!attribute group_by
        #   (DEPRECATED) use group_keys instead
        #
        #   @return [Array<String>, nil]
        optional :group_by, MetronomeSDK::Internal::Type::ArrayOf[String]

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
        #   @return [Array<MetronomeSDK::Models::PropertyFilter>, nil]
        optional :property_filters, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PropertyFilter] }

        # @!attribute sql
        #   The SQL query associated with the billable metric
        #
        #   @return [String, nil]
        optional :sql, String

        # @!method initialize(id:, name:, aggregate: nil, aggregate_keys: nil, aggregation_key: nil, aggregation_type: nil, archived_at: nil, custom_fields: nil, event_type_filter: nil, filter: nil, group_by: nil, group_keys: nil, property_filters: nil, sql: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse} for more
        #   details.
        #
        #   @param id [String]
        #
        #   @param name [String]
        #
        #   @param aggregate [String] (DEPRECATED) use aggregation_type instead
        #
        #   @param aggregate_keys [Array<String>] (DEPRECATED) use aggregation_key instead
        #
        #   @param aggregation_key [String] A key that specifies which property of the event is used to aggregate data. This
        #
        #   @param aggregation_type [Symbol, MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType] Specifies the type of aggregation performed on matching events.
        #
        #   @param archived_at [Time] RFC 3339 timestamp indicating when the billable metric was archived. If not prov
        #
        #   @param custom_fields [Hash{Symbol=>String}]
        #
        #   @param event_type_filter [MetronomeSDK::Models::EventTypeFilter] An optional filtering rule to match the 'event_type' property of an event.
        #
        #   @param filter [Hash{Symbol=>Object}] (DEPRECATED) use property_filters & event_type_filter instead
        #
        #   @param group_by [Array<String>] (DEPRECATED) use group_keys instead
        #
        #   @param group_keys [Array<Array<String>>] Property names that are used to group usage costs on an invoice. Each entry repr
        #
        #   @param property_filters [Array<MetronomeSDK::Models::PropertyFilter>] A list of filters to match events to this billable metric. Each filter defines a
        #
        #   @param sql [String] The SQL query associated with the billable metric

        # Specifies the type of aggregation performed on matching events.
        #
        # @see MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse#aggregation_type
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
