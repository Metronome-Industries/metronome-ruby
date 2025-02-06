# typed: strong

module Metronome
  module Models
    class CustomerListBillableMetricsResponse < Metronome::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_reader :aggregate

      sig { params(aggregate: String).void }
      attr_writer :aggregate

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :aggregate_keys

      sig { params(aggregate_keys: T::Array[String]).void }
      attr_writer :aggregate_keys

      sig { returns(T.nilable(String)) }
      attr_reader :aggregation_key

      sig { params(aggregation_key: String).void }
      attr_writer :aggregation_key

      sig { returns(T.nilable(Symbol)) }
      attr_reader :aggregation_type

      sig { params(aggregation_type: Symbol).void }
      attr_writer :aggregation_type

      sig { returns(T.nilable(Time)) }
      attr_reader :archived_at

      sig { params(archived_at: Time).void }
      attr_writer :archived_at

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(Metronome::Models::EventTypeFilter)) }
      attr_reader :event_type_filter

      sig { params(event_type_filter: Metronome::Models::EventTypeFilter).void }
      attr_writer :event_type_filter

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :filter

      sig { params(filter: T::Hash[Symbol, T.anything]).void }
      attr_writer :filter

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :group_by

      sig { params(group_by: T::Array[String]).void }
      attr_writer :group_by

      sig { returns(T.nilable(T::Array[T::Array[String]])) }
      attr_reader :group_keys

      sig { params(group_keys: T::Array[T::Array[String]]).void }
      attr_writer :group_keys

      sig { returns(T.nilable(T::Array[Metronome::Models::PropertyFilter])) }
      attr_reader :property_filters

      sig { params(property_filters: T::Array[Metronome::Models::PropertyFilter]).void }
      attr_writer :property_filters

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
          aggregation_type: Symbol,
          archived_at: Time,
          custom_fields: T::Hash[Symbol, String],
          event_type_filter: Metronome::Models::EventTypeFilter,
          filter: T::Hash[Symbol, T.anything],
          group_by: T::Array[String],
          group_keys: T::Array[T::Array[String]],
          property_filters: T::Array[Metronome::Models::PropertyFilter],
          sql: String
        ).void
      end
      def initialize(
        id:,
        name:,
        aggregate: nil,
        aggregate_keys: nil,
        aggregation_key: nil,
        aggregation_type: nil,
        archived_at: nil,
        custom_fields: nil,
        event_type_filter: nil,
        filter: nil,
        group_by: nil,
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
            aggregate: String,
            aggregate_keys: T::Array[String],
            aggregation_key: String,
            aggregation_type: Symbol,
            archived_at: Time,
            custom_fields: T::Hash[Symbol, String],
            event_type_filter: Metronome::Models::EventTypeFilter,
            filter: T::Hash[Symbol, T.anything],
            group_by: T::Array[String],
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
