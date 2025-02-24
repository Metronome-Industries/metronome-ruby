# typed: strong

module Metronome
  module Models
    class ContractUpdateEndDateParams < Metronome::BaseModel
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
      def allow_ending_before_finalized_invoice
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def allow_ending_before_finalized_invoice=(_)
      end

      sig { returns(T.nilable(Time)) }
      def ending_before
      end

      sig { params(_: Time).returns(Time) }
      def ending_before=(_)
      end

      sig do
        params(
          contract_id: String,
          customer_id: String,
          allow_ending_before_finalized_invoice: T::Boolean,
          ending_before: Time,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        contract_id:,
        customer_id:,
        allow_ending_before_finalized_invoice: nil,
        ending_before: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            contract_id: String,
            customer_id: String,
            allow_ending_before_finalized_invoice: T::Boolean,
            ending_before: Time,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
