# typed: strong

module Metronome
  module Models
    class ContractRetrieveParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            contract_id: String,
            customer_id: String,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean
          },
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :contract_id

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_balance

      sig { params(include_balance: T::Boolean).void }
      attr_writer :include_balance

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_ledgers

      sig { params(include_ledgers: T::Boolean).void }
      attr_writer :include_ledgers

      sig do
        params(
          contract_id: String,
          customer_id: String,
          include_balance: T::Boolean,
          include_ledgers: T::Boolean,
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(
        contract_id:,
        customer_id:,
        include_balance: nil,
        include_ledgers: nil,
        request_options: {}
      )
      end

      sig { returns(Metronome::Models::ContractRetrieveParams::Shape) }
      def to_h; end
    end
  end
end
