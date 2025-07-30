# typed: strong

module MetronomeSDK
  module Models
    module V1
      class BillableMetricCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::BillableMetricCreateParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

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
        sig do
          returns(
            T.nilable(
              MetronomeSDK::V1::BillableMetricCreateParams::EventTypeFilter
            )
          )
        end
        attr_reader :event_type_filter

        sig do
          params(
            event_type_filter:
              MetronomeSDK::V1::BillableMetricCreateParams::EventTypeFilter::OrHash
          ).void
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
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V1::BillableMetricCreateParams::PropertyFilter
              ]
            )
          )
        end
        attr_reader :property_filters

        sig do
          params(
            property_filters:
              T::Array[
                MetronomeSDK::V1::BillableMetricCreateParams::PropertyFilter::OrHash
              ]
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
            event_type_filter:
              MetronomeSDK::V1::BillableMetricCreateParams::EventTypeFilter::OrHash,
            group_keys: T::Array[T::Array[String]],
            property_filters:
              T::Array[
                MetronomeSDK::V1::BillableMetricCreateParams::PropertyFilter::OrHash
              ],
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
              event_type_filter:
                MetronomeSDK::V1::BillableMetricCreateParams::EventTypeFilter,
              group_keys: T::Array[T::Array[String]],
              property_filters:
                T::Array[
                  MetronomeSDK::V1::BillableMetricCreateParams::PropertyFilter
                ],
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

        class EventTypeFilter < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::BillableMetricCreateParams::EventTypeFilter,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # A list of event types that are explicitly included in the billable metric. If
          # specified, only events of these types will match the billable metric. Must be
          # non-empty if present.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :in_values

          sig { params(in_values: T::Array[String]).void }
          attr_writer :in_values

          # A list of event types that are explicitly excluded from the billable metric. If
          # specified, events of these types will not match the billable metric. Must be
          # non-empty if present.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :not_in_values

          sig { params(not_in_values: T::Array[String]).void }
          attr_writer :not_in_values

          # An optional filtering rule to match the 'event_type' property of an event.
          sig do
            params(
              in_values: T::Array[String],
              not_in_values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # A list of event types that are explicitly included in the billable metric. If
            # specified, only events of these types will match the billable metric. Must be
            # non-empty if present.
            in_values: nil,
            # A list of event types that are explicitly excluded from the billable metric. If
            # specified, events of these types will not match the billable metric. Must be
            # non-empty if present.
            not_in_values: nil
          )
          end

          sig do
            override.returns(
              { in_values: T::Array[String], not_in_values: T::Array[String] }
            )
          end
          def to_hash
          end
        end

        class PropertyFilter < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::BillableMetricCreateParams::PropertyFilter,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The name of the event property.
          sig { returns(String) }
          attr_accessor :name

          # Determines whether the property must exist in the event. If true, only events
          # with this property will pass the filter. If false, only events without this
          # property will pass the filter. If null or omitted, the existence of the property
          # is optional.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :exists

          sig { params(exists: T::Boolean).void }
          attr_writer :exists

          # Specifies the allowed values for the property to match an event. An event will
          # pass the filter only if its property value is included in this list. If
          # undefined, all property values will pass the filter. Must be non-empty if
          # present.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :in_values

          sig { params(in_values: T::Array[String]).void }
          attr_writer :in_values

          # Specifies the values that prevent an event from matching the filter. An event
          # will not pass the filter if its property value is included in this list. If null
          # or empty, all property values will pass the filter. Must be non-empty if
          # present.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :not_in_values

          sig { params(not_in_values: T::Array[String]).void }
          attr_writer :not_in_values

          sig do
            params(
              name: String,
              exists: T::Boolean,
              in_values: T::Array[String],
              not_in_values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The name of the event property.
            name:,
            # Determines whether the property must exist in the event. If true, only events
            # with this property will pass the filter. If false, only events without this
            # property will pass the filter. If null or omitted, the existence of the property
            # is optional.
            exists: nil,
            # Specifies the allowed values for the property to match an event. An event will
            # pass the filter only if its property value is included in this list. If
            # undefined, all property values will pass the filter. Must be non-empty if
            # present.
            in_values: nil,
            # Specifies the values that prevent an event from matching the filter. An event
            # will not pass the filter if its property value is included in this list. If null
            # or empty, all property values will pass the filter. Must be non-empty if
            # present.
            not_in_values: nil
          )
          end

          sig do
            override.returns(
              {
                name: String,
                exists: T::Boolean,
                in_values: T::Array[String],
                not_in_values: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
