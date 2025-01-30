# typed: strong

module Metronome
  module Models
    class UsageListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            ending_before: Time,
            starting_on: Time,
            window_size: Symbol,
            next_page: String,
            billable_metrics: T::Array[Metronome::Models::UsageListParams::BillableMetric],
            customer_ids: T::Array[String]
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(Time) }
      attr_accessor :ending_before

      sig { returns(Time) }
      attr_accessor :starting_on

      sig { returns(Symbol) }
      attr_accessor :window_size

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig { returns(T.nilable(T::Array[Metronome::Models::UsageListParams::BillableMetric])) }
      attr_reader :billable_metrics

      sig { params(billable_metrics: T::Array[Metronome::Models::UsageListParams::BillableMetric]).void }
      attr_writer :billable_metrics

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :customer_ids

      sig { params(customer_ids: T::Array[String]).void }
      attr_writer :customer_ids

      sig do
        params(
          ending_before: Time,
          starting_on: Time,
          window_size: Symbol,
          next_page: String,
          billable_metrics: T::Array[Metronome::Models::UsageListParams::BillableMetric],
          customer_ids: T::Array[String],
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(
        ending_before:,
        starting_on:,
        window_size:,
        next_page: nil,
        billable_metrics: nil,
        customer_ids: nil,
        request_options: {}
      ); end

      sig { returns(Metronome::Models::UsageListParams::Shape) }
      def to_h; end

      class WindowSize < Metronome::Enum
        abstract!

        HOUR = :HOUR
        DAY = :DAY
        NONE = :NONE

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class BillableMetric < Metronome::BaseModel
        Shape = T.type_alias do
          {id: String, group_by: Metronome::Models::UsageListParams::BillableMetric::GroupBy}
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Metronome::Models::UsageListParams::BillableMetric::GroupBy)) }
        attr_reader :group_by

        sig { params(group_by: Metronome::Models::UsageListParams::BillableMetric::GroupBy).void }
        attr_writer :group_by

        sig { params(id: String, group_by: Metronome::Models::UsageListParams::BillableMetric::GroupBy).void }
        def initialize(id:, group_by: nil); end

        sig { returns(Metronome::Models::UsageListParams::BillableMetric::Shape) }
        def to_h; end

        class GroupBy < Metronome::BaseModel
          Shape = T.type_alias { {key: String, values: T::Array[String]} }

          sig { returns(String) }
          attr_accessor :key

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :values

          sig { params(values: T::Array[String]).void }
          attr_writer :values

          sig { params(key: String, values: T::Array[String]).void }
          def initialize(key:, values: nil); end

          sig { returns(Metronome::Models::UsageListParams::BillableMetric::GroupBy::Shape) }
          def to_h; end
        end
      end
    end
  end
end
