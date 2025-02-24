# typed: strong

module Metronome
  module Models
    class ContractCreateHistoricalInvoicesResponse < Metronome::BaseModel
      sig { returns(T::Array[Metronome::Models::Customers::Invoice]) }
      def data
      end

      sig do
        params(_: T::Array[Metronome::Models::Customers::Invoice])
          .returns(T::Array[Metronome::Models::Customers::Invoice])
      end
      def data=(_)
      end

      sig { params(data: T::Array[Metronome::Models::Customers::Invoice]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Metronome::Models::Customers::Invoice]}) }
      def to_hash
      end
    end
  end
end
