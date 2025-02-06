# typed: strong

module Metronome
  module Models
    class ContractScheduleProServicesInvoiceResponse < Metronome::BaseModel
      sig { returns(T::Array[Metronome::Models::Customers::Invoice]) }
      attr_accessor :data

      sig { params(data: T::Array[Metronome::Models::Customers::Invoice]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Metronome::Models::Customers::Invoice]}) }
      def to_hash
      end
    end
  end
end
