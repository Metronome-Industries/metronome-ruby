# typed: strong

module MetronomeSDK
  module Models
    module V1
      class BillableMetricCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

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
        sig { returns(T.nilable(MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType::OrSymbol)) }
        attr_reader :aggregation_type

        sig do
          params(aggregation_type: MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType::OrSymbol)
            .void
        end
        attr_writer :aggregation_type

        # Custom fields to attach to the billable metric.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_fields

        sig { params(custom_fields: T::Hash[Symbol, String]).void }
        attr_writer :custom_fields

        # An optional filtering rule to match the 'event_type' property of an event.
        sig { returns(T.nilable(MetronomeSDK::Models::EventTypeFilter)) }
        attr_reader :event_type_filter

        sig do
          params(event_type_filter: T.any(MetronomeSDK::Models::EventTypeFilter, MetronomeSDK::Internal::AnyHash))
            .void
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
        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::PropertyFilter])) }
        attr_reader :property_filters

        sig do
          params(
            property_filters: T::Array[T.any(MetronomeSDK::Models::PropertyFilter, MetronomeSDK::Internal::AnyHash)]
          )
            .void
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
            aggregation_type: MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType::OrSymbol,
            custom_fields: T::Hash[Symbol, String],
            event_type_filter: T.any(MetronomeSDK::Models::EventTypeFilter, MetronomeSDK::Internal::AnyHash),
            group_keys: T::Array[T::Array[String]],
            property_filters: T::Array[T.any(MetronomeSDK::Models::PropertyFilter, MetronomeSDK::Internal::AnyHash)],
            sql: String,
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
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
        ); end
        sig do
          override
            .returns(
              {
                name: String,
                aggregation_key: String,
                aggregation_type: MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType::OrSymbol,
                custom_fields: T::Hash[Symbol, String],
                event_type_filter: MetronomeSDK::Models::EventTypeFilter,
                group_keys: T::Array[T::Array[String]],
                property_filters: T::Array[MetronomeSDK::Models::PropertyFilter],
                sql: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end

        # Specifies the type of aggregation performed on matching events.
        module AggregationType
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COUNT =
            T.let(:COUNT, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol)
          LATEST =
            T.let(:LATEST, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol)
          MAX = T.let(:MAX, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol)
          SUM = T.let(:SUM, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol)
          UNIQUE =
            T.let(:UNIQUE, MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol)

          sig do
            override
              .returns(T::Array[MetronomeSDK::Models::V1::BillableMetricCreateParams::AggregationType::TaggedSymbol])
          end
          def self.values; end
        end
      end
    end
  end
end
