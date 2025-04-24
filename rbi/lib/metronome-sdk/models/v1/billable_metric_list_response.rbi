# typed: strong

module MetronomeSDK
  module Models
    module V1
      class BillableMetricListResponse < MetronomeSDK::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(String)) }
        def aggregation_key
        end

        sig { params(_: String).returns(String) }
        def aggregation_key=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def aggregation_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def aggregation_type=(_)
        end

        sig { returns(T.nilable(Time)) }
        def archived_at
        end

        sig { params(_: Time).returns(Time) }
        def archived_at=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::EventTypeFilter)) }
        def event_type_filter
        end

        sig { params(_: MetronomeSDK::Models::EventTypeFilter).returns(MetronomeSDK::Models::EventTypeFilter) }
        def event_type_filter=(_)
        end

        sig { returns(T.nilable(T::Array[T::Array[String]])) }
        def group_keys
        end

        sig { params(_: T::Array[T::Array[String]]).returns(T::Array[T::Array[String]]) }
        def group_keys=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::PropertyFilter])) }
        def property_filters
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::PropertyFilter])
            .returns(T::Array[MetronomeSDK::Models::PropertyFilter])
        end
        def property_filters=(_)
        end

        sig { returns(T.nilable(String)) }
        def sql
        end

        sig { params(_: String).returns(String) }
        def sql=(_)
        end

        sig do
          params(
            id: String,
            name: String,
            aggregation_key: String,
            aggregation_type: Symbol,
            archived_at: Time,
            custom_fields: T::Hash[Symbol, String],
            event_type_filter: MetronomeSDK::Models::EventTypeFilter,
            group_keys: T::Array[T::Array[String]],
            property_filters: T::Array[MetronomeSDK::Models::PropertyFilter],
            sql: String
          )
            .void
        end
        def initialize(
          id:,
          name:,
          aggregation_key: nil,
          aggregation_type: nil,
          archived_at: nil,
          custom_fields: nil,
          event_type_filter: nil,
          group_keys: nil,
          property_filters: nil,
          sql: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                name: String,
                aggregation_key: String,
                aggregation_type: Symbol,
                archived_at: Time,
                custom_fields: T::Hash[Symbol, String],
                event_type_filter: MetronomeSDK::Models::EventTypeFilter,
                group_keys: T::Array[T::Array[String]],
                property_filters: T::Array[MetronomeSDK::Models::PropertyFilter],
                sql: String
              }
            )
        end
        def to_hash
        end

        class AggregationType < MetronomeSDK::Enum
          abstract!

          COUNT = :COUNT
          LATEST = :LATEST
          MAX = :MAX
          SUM = :SUM
          UNIQUE = :UNIQUE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
