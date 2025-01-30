# typed: strong

module Metronome
  module Models
    class BillableMetricCreateParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            name: String,
            aggregation_key: String,
            aggregation_type: Symbol,
            custom_fields: T::Hash[Symbol, String],
            event_type_filter: Metronome::Models::EventTypeFilter,
            group_keys: T::Array[T::Array[String]],
            property_filters: T::Array[Metronome::Models::PropertyFilter],
            sql: String
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_reader :aggregation_key

      sig { params(aggregation_key: String).void }
      attr_writer :aggregation_key

      sig { returns(T.nilable(Symbol)) }
      attr_reader :aggregation_type

      sig { params(aggregation_type: Symbol).void }
      attr_writer :aggregation_type

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(Metronome::Models::EventTypeFilter)) }
      attr_reader :event_type_filter

      sig { params(event_type_filter: Metronome::Models::EventTypeFilter).void }
      attr_writer :event_type_filter

      sig { returns(T::Array[T::Array[String]]) }
      attr_reader :group_keys

      sig { params(group_keys: T::Array[T::Array[String]]).void }
      attr_writer :group_keys

      sig { returns(T::Array[Metronome::Models::PropertyFilter]) }
      attr_reader :property_filters

      sig { params(property_filters: T::Array[Metronome::Models::PropertyFilter]).void }
      attr_writer :property_filters

      sig { returns(T.nilable(String)) }
      attr_reader :sql

      sig { params(sql: String).void }
      attr_writer :sql

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
          request_options: Metronome::RequestOpts
        ).void
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
      ); end

      sig { returns(Metronome::Models::BillableMetricCreateParams::Shape) }
      def to_h; end

      class AggregationType < Metronome::Enum
        abstract!

        COUNT = :COUNT
        LATEST = :LATEST
        MAX = :MAX
        SUM = :SUM
        UNIQUE = :UNIQUE

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
