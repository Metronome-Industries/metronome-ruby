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
      #   @return [Time]
      required :effective_at, Time

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

      # Create a new instance of CreditLedgerEntry from a Hash of raw data.
      #
      # @overload initialize(amount: nil, created_by: nil, credit_grant_id: nil, effective_at: nil, reason: nil, running_balance: nil, invoice_id: nil)
      # @param amount [Float] an amount representing the change to the customer's credit balance
      # @param created_by [String]
      # @param credit_grant_id [String] the credit grant this entry is related to
      # @param effective_at [String]
      # @param reason [String]
      # @param running_balance [Float] the running balance for this credit type at the time of the ledger entry,
      #   including all preceding charges
      # @param invoice_id [String] if this entry is a deduction, the Metronome ID of the invoice where the credit
      #   deduction was consumed; if this entry is a grant, the Metronome ID of the
      #   invoice where the grant's paid_amount was charged
      def initialize(data = {})
        super
      end
    end
  end
end
