# typed: strong

module Metronome
  module Models
    class ContractListBalancesResponse < Metronome::BaseModel
      Shape = T.type_alias do
        {
          data: T::Array[Metronome::Models::ContractListBalancesResponse::Data::Variants],
          next_page: T.nilable(String)
        }
      end

      sig { returns(T::Array[Metronome::Models::ContractListBalancesResponse::Data::Variants]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_page

      sig do
        params(
          data: T::Array[Metronome::Models::ContractListBalancesResponse::Data::Variants],
          next_page: T.nilable(String)
        ).void
      end
      def initialize(data:, next_page:); end

      sig { returns(Metronome::Models::ContractListBalancesResponse::Shape) }
      def to_h; end

      class Data < Metronome::Union
        abstract!

        Variants = T.type_alias { T.any(Metronome::Models::Commit, Metronome::Models::Credit) }

        sig do
          override.returns([[NilClass, Metronome::Models::Commit], [NilClass, Metronome::Models::Credit]])
        end
        private_class_method def self.variants; end
      end
    end
  end
end
