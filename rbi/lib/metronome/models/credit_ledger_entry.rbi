# typed: strong

module Metronome
  module Models
    class CreditLedgerEntry < Metronome::BaseModel
      sig { returns(Float) }
      def amount
      end

      sig { params(_: Float).returns(Float) }
      def amount=(_)
      end

      sig { returns(String) }
      def created_by
      end

      sig { params(_: String).returns(String) }
      def created_by=(_)
      end

      sig { returns(String) }
      def credit_grant_id
      end

      sig { params(_: String).returns(String) }
      def credit_grant_id=(_)
      end

      sig { returns(Time) }
      def effective_at
      end

      sig { params(_: Time).returns(Time) }
      def effective_at=(_)
      end

      sig { returns(String) }
      def reason
      end

      sig { params(_: String).returns(String) }
      def reason=(_)
      end

      sig { returns(Float) }
      def running_balance
      end

      sig { params(_: Float).returns(Float) }
      def running_balance=(_)
      end

      sig { returns(T.nilable(String)) }
      def invoice_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def invoice_id=(_)
      end

      sig do
        params(
          amount: Float,
          created_by: String,
          credit_grant_id: String,
          effective_at: Time,
          reason: String,
          running_balance: Float,
          invoice_id: T.nilable(String)
        ).void
      end
      def initialize(
        amount:,
        created_by:,
        credit_grant_id:,
        effective_at:,
        reason:,
        running_balance:,
        invoice_id: nil
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            created_by: String,
            credit_grant_id: String,
            effective_at: Time,
            reason: String,
            running_balance: Float,
            invoice_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
