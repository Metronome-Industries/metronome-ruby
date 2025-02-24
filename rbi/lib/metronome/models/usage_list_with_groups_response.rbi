# typed: strong

module Metronome
  module Models
    class UsageListWithGroupsResponse < Metronome::BaseModel
      sig { returns(Time) }
      def ending_before
      end

      sig { params(_: Time).returns(Time) }
      def ending_before=(_)
      end

      sig { returns(T.nilable(String)) }
      def group_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def group_key=(_)
      end

      sig { returns(T.nilable(String)) }
      def group_value
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def group_value=(_)
      end

      sig { returns(Time) }
      def starting_on
      end

      sig { params(_: Time).returns(Time) }
      def starting_on=(_)
      end

      sig { returns(T.nilable(Float)) }
      def value
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def value=(_)
      end

      sig do
        params(
          ending_before: Time,
          group_key: T.nilable(String),
          group_value: T.nilable(String),
          starting_on: Time,
          value: T.nilable(Float)
        ).void
      end
      def initialize(ending_before:, group_key:, group_value:, starting_on:, value:)
      end

      sig do
        override.returns(
          {
            ending_before: Time,
            group_key: T.nilable(String),
            group_value: T.nilable(String),
            starting_on: Time,
            value: T.nilable(Float)
          }
        )
      end
      def to_hash
      end
    end
  end
end
