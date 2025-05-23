# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerListBillableMetricsResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        # (DEPRECATED) use aggregation_type instead
        sig { returns(T.nilable(String)) }
        attr_reader :aggregate

        sig { params(aggregate: String).void }
        attr_writer :aggregate

        # (DEPRECATED) use aggregation_key instead
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :aggregate_keys

        sig { params(aggregate_keys: T::Array[String]).void }
        attr_writer :aggregate_keys

        # A key that specifies which property of the event is used to aggregate data. This
        # key must be one of the property filter names and is not applicable when the
        # aggregation type is 'count'.
        sig { returns(T.nilable(String)) }
        attr_reader :aggregation_key

        sig { params(aggregation_key: String).void }
        attr_writer :aggregation_key

        # Specifies the type of aggregation performed on matching events.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType::TaggedSymbol
            )
          )
        end
        attr_reader :aggregation_type

        sig do
          params(
            aggregation_type:
              MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType::OrSymbol
          ).void
        end
        attr_writer :aggregation_type

        # RFC 3339 timestamp indicating when the billable metric was archived. If not
        # provided, the billable metric is not archived.
        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        # An optional filtering rule to match the 'event_type' property of an event.
        sig { returns(T.nilable(MetronomeSDK::EventTypeFilter)) }
        attr_reader :event_type_filter

        sig do
          params(event_type_filter: MetronomeSDK::EventTypeFilter::OrHash).void
        end
        attr_writer :event_type_filter

        # (DEPRECATED) use property_filters & event_type_filter instead
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :filter

        sig { params(filter: T::Hash[Symbol, T.anything]).void }
        attr_writer :filter

        # (DEPRECATED) use group_keys instead
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :group_by

        sig { params(group_by: T::Array[String]).void }
        attr_writer :group_by

        # Property names that are used to group usage costs on an invoice. Each entry
        # represents a set of properties used to slice events into distinct buckets.
        sig { returns(T.nilable(T::Array[T::Array[String]])) }
        attr_reader :group_keys

        sig { params(group_keys: T::Array[T::Array[String]]).void }
        attr_writer :group_keys

        # A list of filters to match events to this billable metric. Each filter defines a
        # rule on an event property. All rules must pass for the event to match the
        # billable metric.
        sig { returns(T.nilable(T::Array[MetronomeSDK::PropertyFilter])) }
        attr_reader :property_filters

        sig do
          params(
            property_filters: T::Array[MetronomeSDK::PropertyFilter::OrHash]
          ).void
        end
        attr_writer :property_filters

        # The SQL query associated with the billable metric
        sig { returns(T.nilable(String)) }
        attr_reader :sql

        sig { params(sql: String).void }
        attr_writer :sql

        sig do
          params(
            id: String,
            name: String,
            aggregate: String,
            aggregate_keys: T::Array[String],
            aggregation_key: String,
            aggregation_type:
              MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType::OrSymbol,
            archived_at: Time,
            custom_fields: T::Hash[Symbol, String],
            event_type_filter: MetronomeSDK::EventTypeFilter::OrHash,
            filter: T::Hash[Symbol, T.anything],
            group_by: T::Array[String],
            group_keys: T::Array[T::Array[String]],
            property_filters: T::Array[MetronomeSDK::PropertyFilter::OrHash],
            sql: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          name:,
          # (DEPRECATED) use aggregation_type instead
          aggregate: nil,
          # (DEPRECATED) use aggregation_key instead
          aggregate_keys: nil,
          # A key that specifies which property of the event is used to aggregate data. This
          # key must be one of the property filter names and is not applicable when the
          # aggregation type is 'count'.
          aggregation_key: nil,
          # Specifies the type of aggregation performed on matching events.
          aggregation_type: nil,
          # RFC 3339 timestamp indicating when the billable metric was archived. If not
          # provided, the billable metric is not archived.
          archived_at: nil,
          custom_fields: nil,
          # An optional filtering rule to match the 'event_type' property of an event.
          event_type_filter: nil,
          # (DEPRECATED) use property_filters & event_type_filter instead
          filter: nil,
          # (DEPRECATED) use group_keys instead
          group_by: nil,
          # Property names that are used to group usage costs on an invoice. Each entry
          # represents a set of properties used to slice events into distinct buckets.
          group_keys: nil,
          # A list of filters to match events to this billable metric. Each filter defines a
          # rule on an event property. All rules must pass for the event to match the
          # billable metric.
          property_filters: nil,
          # The SQL query associated with the billable metric
          sql: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: String,
              aggregate: String,
              aggregate_keys: T::Array[String],
              aggregation_key: String,
              aggregation_type:
                MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType::TaggedSymbol,
              archived_at: Time,
              custom_fields: T::Hash[Symbol, String],
              event_type_filter: MetronomeSDK::EventTypeFilter,
              filter: T::Hash[Symbol, T.anything],
              group_by: T::Array[String],
              group_keys: T::Array[T::Array[String]],
              property_filters: T::Array[MetronomeSDK::PropertyFilter],
              sql: String
            }
          )
        end
        def to_hash
        end

        # Specifies the type of aggregation performed on matching events.
        module AggregationType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COUNT =
            T.let(
              :COUNT,
              MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType::TaggedSymbol
            )
          LATEST =
            T.let(
              :LATEST,
              MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType::TaggedSymbol
            )
          MAX =
            T.let(
              :MAX,
              MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType::TaggedSymbol
            )
          SUM =
            T.let(
              :SUM,
              MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType::TaggedSymbol
            )
          UNIQUE =
            T.let(
              :UNIQUE,
              MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::Models::V1::CustomerListBillableMetricsResponse::AggregationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
