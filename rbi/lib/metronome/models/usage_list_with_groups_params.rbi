# typed: strong

module Metronome
  module Models
    class UsageListWithGroupsParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            billable_metric_id: String,
            customer_id: String,
            window_size: Symbol,
            limit: Integer,
            next_page: String,
            current_period: T::Boolean,
            ending_before: Time,
            group_by: Metronome::Models::UsageListWithGroupsParams::GroupBy,
            starting_on: Time
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :billable_metric_id

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(Symbol) }
      attr_accessor :window_size

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :current_period

      sig { params(current_period: T::Boolean).void }
      attr_writer :current_period

      sig { returns(T.nilable(Time)) }
      attr_reader :ending_before

      sig { params(ending_before: Time).void }
      attr_writer :ending_before

      sig { returns(T.nilable(Metronome::Models::UsageListWithGroupsParams::GroupBy)) }
      attr_reader :group_by

      sig { params(group_by: Metronome::Models::UsageListWithGroupsParams::GroupBy).void }
      attr_writer :group_by

      sig { returns(T.nilable(Time)) }
      attr_reader :starting_on

      sig { params(starting_on: Time).void }
      attr_writer :starting_on

      sig do
        params(
          billable_metric_id: String,
          customer_id: String,
          window_size: Symbol,
          limit: Integer,
          next_page: String,
          current_period: T::Boolean,
          ending_before: Time,
          group_by: Metronome::Models::UsageListWithGroupsParams::GroupBy,
          starting_on: Time,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(
        billable_metric_id:,
        customer_id:,
        window_size:,
        limit: nil,
        next_page: nil,
        current_period: nil,
        ending_before: nil,
        group_by: nil,
        starting_on: nil,
        request_options: {}
      ); end

      sig { returns(Metronome::Models::UsageListWithGroupsParams::Shape) }
      def to_h; end

      class WindowSize < Metronome::Enum
        abstract!

        HOUR = :HOUR
        DAY = :DAY
        NONE = :NONE

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class GroupBy < Metronome::BaseModel
        Shape = T.type_alias { {key: String, values: T::Array[String]} }

        sig { returns(String) }
        attr_accessor :key

        sig { returns(T::Array[String]) }
        attr_reader :values

        sig { params(values: T::Array[String]).void }
        attr_writer :values

        sig { params(key: String, values: T::Array[String]).void }
        def initialize(key:, values: nil); end

        sig { returns(Metronome::Models::UsageListWithGroupsParams::GroupBy::Shape) }
        def to_h; end
      end
    end
  end
end
