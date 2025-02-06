# typed: strong

module Metronome
  module Models
    class ContractAddManualBalanceEntryParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Float) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(String) }
      attr_accessor :reason

      sig { returns(String) }
      attr_accessor :segment_id

      sig { returns(T.nilable(String)) }
      attr_reader :contract_id

      sig { params(contract_id: String).void }
      attr_writer :contract_id

      sig { returns(T.nilable(Time)) }
      attr_reader :timestamp

      sig { params(timestamp: Time).void }
      attr_writer :timestamp

      sig do
        params(
          id: String,
          amount: Float,
          customer_id: String,
          reason: String,
          segment_id: String,
          contract_id: String,
          timestamp: Time,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        id:,
        amount:,
        customer_id:,
        reason:,
        segment_id:,
        contract_id: nil,
        timestamp: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            customer_id: String,
            reason: String,
            segment_id: String,
            contract_id: String,
            timestamp: Time,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
