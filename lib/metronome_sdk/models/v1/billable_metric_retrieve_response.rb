# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::BillableMetrics#retrieve
      class BillableMetricRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data]

        # @see MetronomeSDK::Models::V1::BillableMetricRetrieveResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
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
          #   A key that specifies which property of the event is used to aggregate data. This
          #   key must be one of the property filter names and is not applicable when the
          #   aggregation type is 'count'.
          #
          #   @return [String, nil]
          optional :aggregation_key, String

          # @!attribute aggregation_type
          #   Specifies the type of aggregation performed on matching events.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType, nil]
          optional :aggregation_type,
                   enum: -> { MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType }

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
          optional :property_filters,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::PropertyFilter]
                   }

          # @!attribute sql
          #   The SQL query associated with the billable metric
          #
          #   @return [String, nil]
          optional :sql, String

          # @!method initialize(id:, name:, aggregation_key: nil, aggregation_type: nil, archived_at: nil, custom_fields: nil, event_type_filter: nil, group_keys: nil, property_filters: nil, sql: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data} for more
          #   details.
          #
          #   @param id [String] ID of the billable metric
          #
          #   @param name [String] The display name of the billable metric.
          #
          #   @param aggregation_key [String] A key that specifies which property of the event is used to aggregate data. This
          #
          #   @param aggregation_type [Symbol, MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType] Specifies the type of aggregation performed on matching events.
          #
          #   @param archived_at [Time] RFC 3339 timestamp indicating when the billable metric was archived. If not prov
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param event_type_filter [MetronomeSDK::EventTypeFilter] An optional filtering rule to match the 'event_type' property of an event.
          #
          #   @param group_keys [Array<Array<String>>] Property names that are used to group usage costs on an invoice. Each entry repr
          #
          #   @param property_filters [Array<MetronomeSDK::PropertyFilter>] A list of filters to match events to this billable metric. Each filter defines a
          #
          #   @param sql [String] The SQL query associated with the billable metric

          # Specifies the type of aggregation performed on matching events.
          #
          # @see MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data#aggregation_type
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
end
