# typed: strong

module Metronome
  module Models
    class UsageListWithGroupsResponse < Metronome::BaseModel
      Shape = T.type_alias do
        {
          ending_before: Time,
          group_key: T.nilable(String),
          group_value: T.nilable(String),
          starting_on: Time,
          value: T.nilable(Float)
        }
      end

      sig { returns(Time) }
      attr_accessor :ending_before

      sig { returns(T.nilable(String)) }
      attr_accessor :group_key

      sig { returns(T.nilable(String)) }
      attr_accessor :group_value

      sig { returns(Time) }
      attr_accessor :starting_on

      sig { returns(T.nilable(Float)) }
      attr_accessor :value

      sig do
        params(
          ending_before: Time,
          group_key: T.nilable(String),
          group_value: T.nilable(String),
          starting_on: Time,
          value: T.nilable(Float)
        ).void
      end
      def initialize(ending_before:, group_key:, group_value:, starting_on:, value:); end

      sig { returns(Metronome::Models::UsageListWithGroupsResponse::Shape) }
      def to_h; end
    end
  end
end
