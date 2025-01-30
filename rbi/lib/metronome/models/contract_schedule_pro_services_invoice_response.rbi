# typed: strong

module Metronome
  module Models
    class ContractScheduleProServicesInvoiceResponse < Metronome::BaseModel
      Shape = T.type_alias { {data: T::Array[Metronome::Models::Customers::Invoice]} }

      sig { returns(T::Array[Metronome::Models::Customers::Invoice]) }
      attr_accessor :data

      sig { params(data: T::Array[Metronome::Models::Customers::Invoice]).void }
      def initialize(data:); end

      sig { returns(Metronome::Models::ContractScheduleProServicesInvoiceResponse::Shape) }
      def to_h; end
    end
  end
end
