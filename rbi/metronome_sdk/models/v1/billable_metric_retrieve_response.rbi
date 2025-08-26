# typed: strong

module MetronomeSDK
  module Models
    module V1
      class BillableMetricRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::BillableMetricRetrieveResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # ID of the billable metric
          sig { returns(String) }
          attr_accessor :id

          # The display name of the billable metric.
          sig { returns(String) }
          attr_accessor :name

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
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType::TaggedSymbol
              )
            )
          end
          attr_reader :aggregation_type

          sig do
            params(
              aggregation_type:
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType::OrSymbol
            ).void
          end
          attr_writer :aggregation_type

          # RFC 3339 timestamp indicating when the billable metric was archived. If not
          # provided, the billable metric is not archived.
          sig { returns(T.nilable(Time)) }
          attr_reader :archived_at

          sig { params(archived_at: Time).void }
          attr_writer :archived_at

          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :custom_fields

          sig { params(custom_fields: T::Hash[Symbol, String]).void }
          attr_writer :custom_fields

          # An optional filtering rule to match the 'event_type' property of an event.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::EventTypeFilter
              )
            )
          end
          attr_reader :event_type_filter

          sig do
            params(
              event_type_filter:
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::EventTypeFilter::OrHash
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
                  MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::PropertyFilter
                ]
              )
            )
          end
          attr_reader :property_filters

          sig do
            params(
              property_filters:
                T::Array[
                  MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::PropertyFilter::OrHash
                ]
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
              aggregation_key: String,
              aggregation_type:
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType::OrSymbol,
              archived_at: Time,
              custom_fields: T::Hash[Symbol, String],
              event_type_filter:
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::EventTypeFilter::OrHash,
              group_keys: T::Array[T::Array[String]],
              property_filters:
                T::Array[
                  MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::PropertyFilter::OrHash
                ],
              sql: String
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the billable metric
            id:,
            # The display name of the billable metric.
            name:,
            # A key that specifies which property of the event is used to aggregate data. This
            # key must be one of the property filter names and is not applicable when the
            # aggregation type is 'count'.
            aggregation_key: nil,
            # Specifies the type of aggregation performed on matching events.
            aggregation_type: nil,
            # RFC 3339 timestamp indicating when the billable metric was archived. If not
            # provided, the billable metric is not archived.
            archived_at: nil,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
            # The SQL query associated with the billable metric
            sql: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: String,
                aggregation_key: String,
                aggregation_type:
                  MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType::TaggedSymbol,
                archived_at: Time,
                custom_fields: T::Hash[Symbol, String],
                event_type_filter:
                  MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::EventTypeFilter,
                group_keys: T::Array[T::Array[String]],
                property_filters:
                  T::Array[
                    MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::PropertyFilter
                  ],
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
                  MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COUNT =
              T.let(
                :COUNT,
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType::TaggedSymbol
              )
            LATEST =
              T.let(
                :LATEST,
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType::TaggedSymbol
              )
            MAX =
              T.let(
                :MAX,
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType::TaggedSymbol
              )
            SUM =
              T.let(
                :SUM,
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType::TaggedSymbol
              )
            UNIQUE =
              T.let(
                :UNIQUE,
                MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::AggregationType::TaggedSymbol
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
                  MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::EventTypeFilter,
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
                  MetronomeSDK::Models::V1::BillableMetricRetrieveResponse::Data::PropertyFilter,
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
end
