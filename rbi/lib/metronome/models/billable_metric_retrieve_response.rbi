# typed: strong

module Metronome
  module Models
    class BillableMetricRetrieveResponse < Metronome::BaseModel
      sig { returns(Metronome::Models::BillableMetricRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: Metronome::Models::BillableMetricRetrieveResponse::Data).returns(Metronome::Models::BillableMetricRetrieveResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: Metronome::Models::BillableMetricRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Metronome::Models::BillableMetricRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < Metronome::BaseModel
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

        sig { returns(T.nilable(Metronome::Models::EventTypeFilter)) }
        def event_type_filter
        end

        sig { params(_: Metronome::Models::EventTypeFilter).returns(Metronome::Models::EventTypeFilter) }
        def event_type_filter=(_)
        end

        sig { returns(T.nilable(T::Array[T::Array[String]])) }
        def group_keys
        end

        sig { params(_: T::Array[T::Array[String]]).returns(T::Array[T::Array[String]]) }
        def group_keys=(_)
        end

        sig { returns(T.nilable(T::Array[Metronome::Models::PropertyFilter])) }
        def property_filters
        end

        sig do
          params(_: T::Array[Metronome::Models::PropertyFilter]).returns(T::Array[Metronome::Models::PropertyFilter])
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
            event_type_filter: Metronome::Models::EventTypeFilter,
            group_keys: T::Array[T::Array[String]],
            property_filters: T::Array[Metronome::Models::PropertyFilter],
            sql: String
          ).void
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
          override.returns(
            {
              id: String,
              name: String,
              aggregation_key: String,
              aggregation_type: Symbol,
              archived_at: Time,
              custom_fields: T::Hash[Symbol, String],
              event_type_filter: Metronome::Models::EventTypeFilter,
              group_keys: T::Array[T::Array[String]],
              property_filters: T::Array[Metronome::Models::PropertyFilter],
              sql: String
            }
          )
        end
        def to_hash
        end

        class AggregationType < Metronome::Enum
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
