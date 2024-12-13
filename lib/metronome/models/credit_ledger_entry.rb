# frozen_string_literal: true

module Metronome
  module Models
    class CreditLedgerEntry < Metronome::BaseModel
      # @!attribute amount
      #   an amount representing the change to the customer's credit balance
      #   @return [Float]
      required :amount, Float

      # @!attribute created_by
      #   @return [String]
      required :created_by, String

      # @!attribute credit_grant_id
      #   the credit grant this entry is related to
      #   @return [String]
      required :credit_grant_id, String

      # @!attribute effective_at
      #   @return [Time]
      required :effective_at, Time

      # @!attribute reason
      #   @return [String]
      required :reason, String

      # @!attribute running_balance
      #   the running balance for this credit type at the time of the ledger entry, including all preceding charges
      #   @return [Float]
      required :running_balance, Float

      # @!attribute invoice_id
      #   if this entry is a deduction, the Metronome ID of the invoice where the credit deduction was consumed; if this entry is a grant, the Metronome ID of the invoice where the grant's paid_amount was charged
      #   @return [String]
      optional :invoice_id, String

      # @!parse
      #   # Create a new instance of CreditLedgerEntry from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Float] :amount an amount representing the change to the customer's credit balance
      #   #   @option data [String] :created_by
      #   #   @option data [String] :credit_grant_id the credit grant this entry is related to
      #   #   @option data [String] :effective_at
      #   #   @option data [String] :reason
      #   #   @option data [Float] :running_balance the running balance for this credit type at the time of the ledger entry,
      #   #     including all preceding charges
      #   #   @option data [String, nil] :invoice_id if this entry is a deduction, the Metronome ID of the invoice where the credit
      #   #     deduction was consumed; if this entry is a grant, the Metronome ID of the
      #   #     invoice where the grant's paid_amount was charged
      #   def initialize(data = {}) = super
    end
  end
end
