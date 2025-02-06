# typed: strong

module Metronome
  module Models
    class ContractListBalancesResponse < Metronome::BaseModel
      sig { returns(T::Array[T.any(Metronome::Models::Commit, Metronome::Models::Credit)]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_page

      sig do
        params(
          data: T::Array[T.any(Metronome::Models::Commit, Metronome::Models::Credit)],
          next_page: T.nilable(String)
        ).void
      end
      def initialize(data:, next_page:); end

      sig do
        override.returns(
          {
            data: T::Array[T.any(Metronome::Models::Commit, Metronome::Models::Credit)],
            next_page: T.nilable(String)
          }
        )
      end
      def to_hash; end

      class Data < Metronome::Union
        abstract!

        sig do
          override.returns([[NilClass, Metronome::Models::Commit], [NilClass, Metronome::Models::Credit]])
        end
        private_class_method def self.variants; end
      end
    end
  end
end
