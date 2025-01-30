# typed: strong

module Metronome
  module Models
    class CreditLedgerEntry < Metronome::BaseModel
      Shape = T.type_alias do
        {
          amount: Float,
          created_by: String,
          credit_grant_id: String,
          effective_at: Time,
          reason: String,
          running_balance: Float,
          invoice_id: T.nilable(String)
        }
      end

      sig { returns(Float) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :created_by

      sig { returns(String) }
      attr_accessor :credit_grant_id

      sig { returns(Time) }
      attr_accessor :effective_at

      sig { returns(String) }
      attr_accessor :reason

      sig { returns(Float) }
      attr_accessor :running_balance

      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_id

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

      sig { returns(Metronome::Models::CreditLedgerEntry::Shape) }
      def to_h; end
    end
  end
end
