# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
        # an amount representing the change to the customer's credit balance
        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :created_by

        # the credit grant this entry is related to
        sig { returns(String) }
        attr_accessor :credit_grant_id

        sig { returns(Time) }
        attr_accessor :effective_at

        sig { returns(String) }
        attr_accessor :reason

        # the running balance for this credit type at the time of the ledger entry,
        # including all preceding charges
        sig { returns(Float) }
        attr_accessor :running_balance

        # if this entry is a deduction, the Metronome ID of the invoice where the credit
        # deduction was consumed; if this entry is a grant, the Metronome ID of the
        # invoice where the grant's paid_amount was charged
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
          )
            .returns(T.attached_class)
        end
        def self.new(
          # an amount representing the change to the customer's credit balance
          amount:,
          created_by:,
          # the credit grant this entry is related to
          credit_grant_id:,
          effective_at:,
          reason:,
          # the running balance for this credit type at the time of the ledger entry,
          # including all preceding charges
          running_balance:,
          # if this entry is a deduction, the Metronome ID of the invoice where the credit
          # deduction was consumed; if this entry is a grant, the Metronome ID of the
          # invoice where the grant's paid_amount was charged
          invoice_id: nil
        ); end
        sig do
          override
            .returns(
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
        def to_hash; end
      end
    end
  end
end
