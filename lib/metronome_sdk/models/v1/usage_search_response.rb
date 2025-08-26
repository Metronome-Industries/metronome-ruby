# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class UsageSearchResponseItem < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute customer_id
        #   The ID of the customer in the ingest event body
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute event_type
        #
        #   @return [String]
        required :event_type, String

        # @!attribute timestamp
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!attribute is_duplicate
        #
        #   @return [Boolean, nil]
        optional :is_duplicate, MetronomeSDK::Internal::Type::Boolean

        # @!attribute matched_billable_metrics
        #
        #   @return [Array<MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric>, nil]
        optional :matched_billable_metrics,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric] }

        # @!attribute matched_customer
        #   The customer the event was matched to if a match was found
        #
        #   @return [MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedCustomer, nil]
        optional :matched_customer, -> { MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedCustomer }

        # @!attribute processed_at
        #
        #   @return [Time, nil]
        optional :processed_at, Time

        # @!attribute properties
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :properties, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

        # @!method initialize(id:, customer_id:, event_type:, timestamp:, transaction_id:, is_duplicate: nil, matched_billable_metrics: nil, matched_customer: nil, processed_at: nil, properties: nil)
        #   @param id [String]
        #
        #   @param customer_id [String] The ID of the customer in the ingest event body
        #
        #   @param event_type [String]
        #
        #   @param timestamp [Time]
        #
        #   @param transaction_id [String]
        #
        #   @param is_duplicate [Boolean]
        #
        #   @param matched_billable_metrics [Array<MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric>]
        #
        #   @param matched_customer [MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedCustomer] The customer the event was matched to if a match was found
        #
        #   @param processed_at [Time]
        #
        #   @param properties [Hash{Symbol=>Object}]

        class MatchedBillableMetric < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType, nil]
          optional :aggregation_type,
                   enum: -> { MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType }

          # @!attribute archived_at
          #   RFC 3339 timestamp indicating when the billable metric was archived. If not
          #   provided, the billable metric is not archived.
          #
          #   @return [Time, nil]
          optional :archived_at, Time

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute event_type_filter
          #   An optional filtering rule to match the 'event_type' property of an event.
          #
          #   @return [MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::EventTypeFilter, nil]
          optional :event_type_filter,
                   -> { MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::EventTypeFilter }

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
          #   @return [Array<MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::PropertyFilter>, nil]
          optional :property_filters,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::PropertyFilter] }

          # @!attribute sql
          #   The SQL query associated with the billable metric
          #
          #   @return [String, nil]
          optional :sql, String

          # @!method initialize(id:, name:, aggregate: nil, aggregate_keys: nil, aggregation_key: nil, aggregation_type: nil, archived_at: nil, custom_fields: nil, event_type_filter: nil, filter: nil, group_by: nil, group_keys: nil, property_filters: nil, sql: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric} for
          #   more details.
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
          #   @param aggregation_type [Symbol, MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType] Specifies the type of aggregation performed on matching events.
          #
          #   @param archived_at [Time] RFC 3339 timestamp indicating when the billable metric was archived. If not prov
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param event_type_filter [MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::EventTypeFilter] An optional filtering rule to match the 'event_type' property of an event.
          #
          #   @param filter [Hash{Symbol=>Object}] (DEPRECATED) use property_filters & event_type_filter instead
          #
          #   @param group_by [Array<String>] (DEPRECATED) use group_keys instead
          #
          #   @param group_keys [Array<Array<String>>] Property names that are used to group usage costs on an invoice. Each entry repr
          #
          #   @param property_filters [Array<MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::PropertyFilter>] A list of filters to match events to this billable metric. Each filter defines a
          #
          #   @param sql [String] The SQL query associated with the billable metric

          # Specifies the type of aggregation performed on matching events.
          #
          # @see MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric#aggregation_type
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

          # @see MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric#event_type_filter
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
            #   {MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::EventTypeFilter}
            #   for more details.
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
            #   {MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::PropertyFilter}
            #   for more details.
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

        # @see MetronomeSDK::Models::V1::UsageSearchResponseItem#matched_customer
        class MatchedCustomer < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id: nil, name: nil)
          #   The customer the event was matched to if a match was found
          #
          #   @param id [String]
          #   @param name [String]
        end
      end

      # @type [MetronomeSDK::Internal::Type::Converter]
      UsageSearchResponse =
        MetronomeSDK::Internal::Type::ArrayOf[-> { MetronomeSDK::Models::V1::UsageSearchResponseItem }]
    end
  end
end
