# typed: strong

module Metronome
  module Models
    class ContractArchiveParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

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
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(contract_id:, customer_id:, void_invoices:, request_options: {})
      end

      sig do
        override.returns(
          {
            contract_id: String,
            customer_id: String,
            void_invoices: T::Boolean,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
