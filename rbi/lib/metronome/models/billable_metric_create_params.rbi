# typed: strong

module Metronome
  module Models
    class BillableMetricCreateParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

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
          name: String,
          aggregation_key: String,
          aggregation_type: Symbol,
          custom_fields: T::Hash[Symbol, String],
          event_type_filter: Metronome::Models::EventTypeFilter,
          group_keys: T::Array[T::Array[String]],
          property_filters: T::Array[Metronome::Models::PropertyFilter],
          sql: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        name:,
        aggregation_key: nil,
        aggregation_type: nil,
        custom_fields: nil,
        event_type_filter: nil,
        group_keys: nil,
        property_filters: nil,
        sql: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              name: String,
              aggregation_key: String,
              aggregation_type: Symbol,
              custom_fields: T::Hash[Symbol, String],
              event_type_filter: Metronome::Models::EventTypeFilter,
              group_keys: T::Array[T::Array[String]],
              property_filters: T::Array[Metronome::Models::PropertyFilter],
              sql: String,
              request_options: Metronome::RequestOptions
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
