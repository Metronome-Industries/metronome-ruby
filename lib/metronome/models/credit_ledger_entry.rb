# frozen_string_literal: true

module Metronome
  module Models
    class CreditLedgerEntry < BaseModel
      # @!attribute [rw] amount
      #   an amount representing the change to the customer's credit balance
      #   @return [Float]
      required :amount, Float

      # @!attribute [rw] created_by
      #   @return [String]
      required :created_by, String

      # @!attribute [rw] credit_grant_id
      #   the credit grant this entry is related to
      #   @return [String]
      required :credit_grant_id, String

      # @!attribute [rw] effective_at
      #   @return [DateTime]
      required :effective_at, DateTime

      # @!attribute [rw] reason
      #   @return [String]
      required :reason, String

      # @!attribute [rw] running_balance
      #   the running balance for this credit type at the time of the ledger entry, including all preceding charges
      #   @return [Float]
      required :running_balance, Float

      # @!attribute [rw] invoice_id
      #   if this entry is a deduction, the Metronome ID of the invoice where the credit deduction was consumed; if this entry is a grant, the Metronome ID of the invoice where the grant's paid_amount was charged
      #   @return [String]
      optional :invoice_id, String
    end
  end
end
