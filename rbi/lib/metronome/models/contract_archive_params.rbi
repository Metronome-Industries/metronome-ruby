# typed: strong

module Metronome
  module Models
    class ContractArchiveParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {contract_id: String, customer_id: String, void_invoices: T::Boolean},
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :contract_id

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T::Boolean) }
      attr_accessor :void_invoices

      sig do
        params(
          contract_id: String,
          customer_id: String,
          void_invoices: T::Boolean,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(contract_id:, customer_id:, void_invoices:, request_options: {}); end

      sig { returns(Metronome::Models::ContractArchiveParams::Shape) }
      def to_h; end
    end
  end
end
