# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CreditLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   an amount representing the change to the customer's credit balance
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute created_by
        #
        #   @return [String]
        required :created_by, String

        # @!attribute credit_grant_id
        #   the credit grant this entry is related to
        #
        #   @return [String]
        required :credit_grant_id, String

        # @!attribute effective_at
        #
        #   @return [Time]
        required :effective_at, Time

        # @!attribute reason
        #
        #   @return [String]
        required :reason, String

        # @!attribute running_balance
        #   the running balance for this credit type at the time of the ledger entry,
        #   including all preceding charges
        #
        #   @return [Float]
        required :running_balance, Float

        # @!attribute invoice_id
        #   if this entry is a deduction, the Metronome ID of the invoice where the credit
        #   deduction was consumed; if this entry is a grant, the Metronome ID of the
        #   invoice where the grant's paid_amount was charged
        #
        #   @return [String, nil]
        optional :invoice_id, String, nil?: true

        # @!method initialize(amount:, created_by:, credit_grant_id:, effective_at:, reason:, running_balance:, invoice_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CreditLedgerEntry} for more details.
        #
        #   @param amount [Float] an amount representing the change to the customer's credit balance
        #
        #   @param created_by [String]
        #
        #   @param credit_grant_id [String] the credit grant this entry is related to
        #
        #   @param effective_at [Time]
        #
        #   @param reason [String]
        #
        #   @param running_balance [Float] the running balance for this credit type at the time of the ledger entry, includ
        #
        #   @param invoice_id [String, nil] if this entry is a deduction, the Metronome ID of the invoice where the credit d
      end
    end
  end
end
