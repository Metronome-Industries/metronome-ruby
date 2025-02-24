# typed: strong

module Metronome
  module Models
    class ContractListBalancesResponse < Metronome::BaseModel
      sig { returns(T::Array[T.any(Metronome::Models::Commit, Metronome::Models::Credit)]) }
      def data
      end

      sig do
        params(_: T::Array[T.any(Metronome::Models::Commit, Metronome::Models::Credit)])
          .returns(T::Array[T.any(Metronome::Models::Commit, Metronome::Models::Credit)])
      end
      def data=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_page
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def next_page=(_)
      end

      sig do
        params(
          data: T::Array[T.any(Metronome::Models::Commit, Metronome::Models::Credit)],
          next_page: T.nilable(String)
        )
          .void
      end
      def initialize(data:, next_page:)
      end

      sig do
        override
          .returns(
            {data: T::Array[T.any(Metronome::Models::Commit, Metronome::Models::Credit)], next_page: T.nilable(String)}
          )
      end
      def to_hash
      end

      class Data < Metronome::Union
        abstract!

        sig { override.returns([[NilClass, Metronome::Models::Commit], [NilClass, Metronome::Models::Credit]]) }
        private_class_method def self.variants
        end
      end
    end
  end
end
