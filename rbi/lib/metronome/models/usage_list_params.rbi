# typed: strong

module Metronome
  module Models
    class UsageListParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(Time) }
      def ending_before
      end

      sig { params(_: Time).returns(Time) }
      def ending_before=(_)
      end

      sig { returns(Time) }
      def starting_on
      end

      sig { params(_: Time).returns(Time) }
      def starting_on=(_)
      end

      sig { returns(Symbol) }
      def window_size
      end

      sig { params(_: Symbol).returns(Symbol) }
      def window_size=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_page
      end

      sig { params(_: String).returns(String) }
      def next_page=(_)
      end

      sig { returns(T.nilable(T::Array[Metronome::Models::UsageListParams::BillableMetric])) }
      def billable_metrics
      end

      sig do
        params(_: T::Array[Metronome::Models::UsageListParams::BillableMetric]).returns(T::Array[Metronome::Models::UsageListParams::BillableMetric])
      end
      def billable_metrics=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def customer_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def customer_ids=(_)
      end

      sig do
        params(
          ending_before: Time,
          starting_on: Time,
          window_size: Symbol,
          next_page: String,
          billable_metrics: T::Array[Metronome::Models::UsageListParams::BillableMetric],
          customer_ids: T::Array[String],
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

      sig do
        override.returns(
          {
            ending_before: Time,
            starting_on: Time,
            window_size: Symbol,
            next_page: String,
            billable_metrics: T::Array[Metronome::Models::UsageListParams::BillableMetric],
            customer_ids: T::Array[String],
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end

      class WindowSize < Metronome::Enum
        abstract!

        HOUR = :HOUR
        DAY = :DAY
        NONE = :NONE

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class BillableMetric < Metronome::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Metronome::Models::UsageListParams::BillableMetric::GroupBy)) }
        def group_by
        end

        sig do
          params(_: Metronome::Models::UsageListParams::BillableMetric::GroupBy).returns(Metronome::Models::UsageListParams::BillableMetric::GroupBy)
        end
        def group_by=(_)
        end

        sig { params(id: String, group_by: Metronome::Models::UsageListParams::BillableMetric::GroupBy).void }
        def initialize(id:, group_by: nil)
        end

        sig do
          override.returns(
            {
              id: String,
              group_by: Metronome::Models::UsageListParams::BillableMetric::GroupBy
            }
          )
        end
        def to_hash
        end

        class GroupBy < Metronome::BaseModel
          sig { returns(String) }
          def key
          end

          sig { params(_: String).returns(String) }
          def key=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def values=(_)
          end

          sig { params(key: String, values: T::Array[String]).void }
          def initialize(key:, values: nil)
          end

          sig { override.returns({key: String, values: T::Array[String]}) }
          def to_hash
          end
        end
      end
    end
  end
end
