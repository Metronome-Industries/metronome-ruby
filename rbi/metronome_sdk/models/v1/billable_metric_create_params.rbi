# typed: strong

module MetronomeSDK
  module Models
    module V1
      class BillableMetricCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        # The display name of the billable metric.
        sig { returns(String) }
        attr_accessor :name

        # Specifies the type of aggregation performed on matching events. Required if
        # `sql` is not provided.
        sig { returns(T.nilable(String)) }
        attr_reader :aggregation_key

        sig { params(aggregation_key: String).void }
        attr_writer :aggregation_key

        # Specifies the type of aggregation performed on matching events.
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::OrSymbol
            )
          )
        end
        attr_reader :aggregation_type

        sig do
          params(
            aggregation_type:
              MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::OrSymbol
          ).void
        end
        attr_writer :aggregation_type

        # Custom fields to attach to the billable metric.
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

        # The SQL query associated with the billable metric. This field is mutually
        # exclusive with aggregation_type, event_type_filter, property_filters,
        # aggregation_key, and group_keys. If provided, these other fields must be
        # omitted.
        sig { returns(T.nilable(String)) }
        attr_reader :sql

        sig { params(sql: String).void }
        attr_writer :sql

        sig do
          params(
            name: String,
            aggregation_key: String,
            aggregation_type:
              MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::OrSymbol,
            custom_fields: T::Hash[Symbol, String],
            event_type_filter: MetronomeSDK::EventTypeFilter::OrHash,
            group_keys: T::Array[T::Array[String]],
            property_filters: T::Array[MetronomeSDK::PropertyFilter::OrHash],
            sql: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The display name of the billable metric.
          name:,
          # Specifies the type of aggregation performed on matching events. Required if
          # `sql` is not provided.
          aggregation_key: nil,
          # Specifies the type of aggregation performed on matching events.
          aggregation_type: nil,
          # Custom fields to attach to the billable metric.
          custom_fields: nil,
          # An optional filtering rule to match the 'event_type' property of an event.
          event_type_filter: nil,
          # Property names that are used to group usage costs on an invoice. Each entry
          # represents a set of properties used to slice events into distinct buckets.
          group_keys: nil,
          # A list of filters to match events to this billable metric. Each filter defines a
          # rule on an event property. All rules must pass for the event to match the
          # billable metric.
          property_filters: nil,
          # The SQL query associated with the billable metric. This field is mutually
          # exclusive with aggregation_type, event_type_filter, property_filters,
          # aggregation_key, and group_keys. If provided, these other fields must be
          # omitted.
          sql: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              aggregation_key: String,
              aggregation_type:
                MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::OrSymbol,
              custom_fields: T::Hash[Symbol, String],
              event_type_filter: MetronomeSDK::EventTypeFilter,
              group_keys: T::Array[T::Array[String]],
              property_filters: T::Array[MetronomeSDK::PropertyFilter],
              sql: String,
              request_options: MetronomeSDK::RequestOptions
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
                MetronomeSDK::V1::BillableMetricCreateParams::AggregationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COUNT =
            T.let(
              :COUNT,
              MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol
            )
          LATEST =
            T.let(
              :LATEST,
              MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol
            )
          MAX =
            T.let(
              :MAX,
              MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol
            )
          SUM =
            T.let(
              :SUM,
              MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol
            )
          UNIQUE =
            T.let(
              :UNIQUE,
              MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol
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
