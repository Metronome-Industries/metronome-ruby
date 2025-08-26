# typed: strong

module MetronomeSDK
  module Models
    module V1
      class UsageSearchResponseItem < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::UsageSearchResponseItem,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The ID of the customer in the ingest event body
        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :event_type

        sig { returns(Time) }
        attr_accessor :timestamp

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_duplicate

        sig { params(is_duplicate: T::Boolean).void }
        attr_writer :is_duplicate

        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric
              ]
            )
          )
        end
        attr_reader :matched_billable_metrics

        sig do
          params(
            matched_billable_metrics:
              T::Array[
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::OrHash
              ]
          ).void
        end
        attr_writer :matched_billable_metrics

        # The customer the event was matched to if a match was found
        sig do
          returns(
            T.nilable(
              MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedCustomer
            )
          )
        end
        attr_reader :matched_customer

        sig do
          params(
            matched_customer:
              MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedCustomer::OrHash
          ).void
        end
        attr_writer :matched_customer

        sig { returns(T.nilable(Time)) }
        attr_reader :processed_at

        sig { params(processed_at: Time).void }
        attr_writer :processed_at

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :properties

        sig { params(properties: T::Hash[Symbol, T.anything]).void }
        attr_writer :properties

        sig do
          params(
            id: String,
            customer_id: String,
            event_type: String,
            timestamp: Time,
            transaction_id: String,
            is_duplicate: T::Boolean,
            matched_billable_metrics:
              T::Array[
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::OrHash
              ],
            matched_customer:
              MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedCustomer::OrHash,
            processed_at: Time,
            properties: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The ID of the customer in the ingest event body
          customer_id:,
          event_type:,
          timestamp:,
          transaction_id:,
          is_duplicate: nil,
          matched_billable_metrics: nil,
          # The customer the event was matched to if a match was found
          matched_customer: nil,
          processed_at: nil,
          properties: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              customer_id: String,
              event_type: String,
              timestamp: Time,
              transaction_id: String,
              is_duplicate: T::Boolean,
              matched_billable_metrics:
                T::Array[
                  MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric
                ],
              matched_customer:
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedCustomer,
              processed_at: Time,
              properties: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end

        class MatchedBillableMetric < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric,
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
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType::TaggedSymbol
              )
            )
          end
          attr_reader :aggregation_type

          sig do
            params(
              aggregation_type:
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType::OrSymbol
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
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::EventTypeFilter
              )
            )
          end
          attr_reader :event_type_filter

          sig do
            params(
              event_type_filter:
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::EventTypeFilter::OrHash
            ).void
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
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::PropertyFilter
                ]
              )
            )
          end
          attr_reader :property_filters

          sig do
            params(
              property_filters:
                T::Array[
                  MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::PropertyFilter::OrHash
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
              aggregate: String,
              aggregate_keys: T::Array[String],
              aggregation_key: String,
              aggregation_type:
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType::OrSymbol,
              archived_at: Time,
              custom_fields: T::Hash[Symbol, String],
              event_type_filter:
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::EventTypeFilter::OrHash,
              filter: T::Hash[Symbol, T.anything],
              group_by: T::Array[String],
              group_keys: T::Array[T::Array[String]],
              property_filters:
                T::Array[
                  MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::PropertyFilter::OrHash
                ],
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
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
                  MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType::TaggedSymbol,
                archived_at: Time,
                custom_fields: T::Hash[Symbol, String],
                event_type_filter:
                  MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::EventTypeFilter,
                filter: T::Hash[Symbol, T.anything],
                group_by: T::Array[String],
                group_keys: T::Array[T::Array[String]],
                property_filters:
                  T::Array[
                    MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::PropertyFilter
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
                  MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COUNT =
              T.let(
                :COUNT,
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType::TaggedSymbol
              )
            LATEST =
              T.let(
                :LATEST,
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType::TaggedSymbol
              )
            MAX =
              T.let(
                :MAX,
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType::TaggedSymbol
              )
            SUM =
              T.let(
                :SUM,
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType::TaggedSymbol
              )
            UNIQUE =
              T.let(
                :UNIQUE,
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::AggregationType::TaggedSymbol
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
                  MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::EventTypeFilter,
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
                  MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedBillableMetric::PropertyFilter,
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

        class MatchedCustomer < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::UsageSearchResponseItem::MatchedCustomer,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The customer the event was matched to if a match was found
          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id: nil, name: nil)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end
      end

      UsageSearchResponse =
        T.let(
          MetronomeSDK::Internal::Type::ArrayOf[
            MetronomeSDK::Models::V1::UsageSearchResponseItem
          ],
          MetronomeSDK::Internal::Type::Converter
        )
    end
  end
end
