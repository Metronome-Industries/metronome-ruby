# typed: strong

module Metronome
  module Models
    class ContractRetrieveParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def contract_id
      end

      sig { params(_: String).returns(String) }
      def contract_id=(_)
      end

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def include_balance
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_balance=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def include_ledgers
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_ledgers=(_)
      end

      sig do
        params(
          contract_id: String,
          customer_id: String,
          include_balance: T::Boolean,
          include_ledgers: T::Boolean,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
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

      sig do
        override.returns(
          {
            contract_id: String,
            customer_id: String,
            include_balance: T::Boolean,
            include_ledgers: T::Boolean,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
