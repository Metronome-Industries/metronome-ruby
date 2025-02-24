# typed: strong

module Metronome
  module Models
    class ContractAddManualBalanceEntryParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Float) }
      def amount
      end

      sig { params(_: Float).returns(Float) }
      def amount=(_)
      end

      sig { returns(String) }
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(String) }
      def reason
      end

      sig { params(_: String).returns(String) }
      def reason=(_)
      end

      sig { returns(String) }
      def segment_id
      end

      sig { params(_: String).returns(String) }
      def segment_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def contract_id
      end

      sig { params(_: String).returns(String) }
      def contract_id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def timestamp
      end

      sig { params(_: Time).returns(Time) }
      def timestamp=(_)
      end

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
