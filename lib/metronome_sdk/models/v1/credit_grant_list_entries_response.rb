# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CreditGrants#list_entries
      class CreditGrantListEntriesResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute ledgers
        #
        #   @return [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger>]
        required :ledgers,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger] }

        # @!method initialize(customer_id:, ledgers:)
        #   @param customer_id [String]
        #   @param ledgers [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger>]

        class Ledger < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute credit_type
          #
          #   @return [MetronomeSDK::Models::CreditTypeData]
          required :credit_type, -> { MetronomeSDK::CreditTypeData }

          # @!attribute ending_balance
          #   the effective balances at the end of the specified time window
          #
          #   @return [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::EndingBalance]
          required :ending_balance,
                   -> { MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::EndingBalance }

          # @!attribute entries
          #
          #   @return [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
          required :entries, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::CreditLedgerEntry] }

          # @!attribute pending_entries
          #
          #   @return [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
          required :pending_entries,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::CreditLedgerEntry] }

          # @!attribute starting_balance
          #
          #   @return [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::StartingBalance]
          required :starting_balance,
                   -> { MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::StartingBalance }

          # @!method initialize(credit_type:, ending_balance:, entries:, pending_entries:, starting_balance:)
          #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
          #
          #   @param ending_balance [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::EndingBalance] the effective balances at the end of the specified time window
          #
          #   @param entries [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
          #
          #   @param pending_entries [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
          #
          #   @param starting_balance [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::StartingBalance]

          # @see MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger#ending_balance
          class EndingBalance < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute effective_at
            #   the ending_before request parameter (if supplied) or the current billing
            #   period's end date
            #
            #   @return [Time]
            required :effective_at, Time

            # @!attribute excluding_pending
            #   the ending balance, including the balance of all grants that have not expired
            #   before the effective_at date and deductions that happened before the
            #   effective_at date
            #
            #   @return [Float]
            required :excluding_pending, Float

            # @!attribute including_pending
            #   the excluding_pending balance plus any pending invoice deductions and
            #   expirations that will happen by the effective_at date
            #
            #   @return [Float]
            required :including_pending, Float

            # @!method initialize(effective_at:, excluding_pending:, including_pending:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::EndingBalance}
            #   for more details.
            #
            #   the effective balances at the end of the specified time window
            #
            #   @param effective_at [Time] the ending_before request parameter (if supplied) or the current billing period'
            #
            #   @param excluding_pending [Float] the ending balance, including the balance of all grants that have not expired be
            #
            #   @param including_pending [Float] the excluding_pending balance plus any pending invoice deductions and expiration
          end

          # @see MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger#starting_balance
          class StartingBalance < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute effective_at
            #   the starting_on request parameter (if supplied) or the first credit grant's
            #   effective_at date
            #
            #   @return [Time]
            required :effective_at, Time

            # @!attribute excluding_pending
            #   the starting balance, including all posted grants, deductions, and expirations
            #   that happened at or before the effective_at timestamp
            #
            #   @return [Float]
            required :excluding_pending, Float

            # @!attribute including_pending
            #   the excluding_pending balance plus any pending activity that has not been posted
            #   at the time of the query
            #
            #   @return [Float]
            required :including_pending, Float

            # @!method initialize(effective_at:, excluding_pending:, including_pending:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::StartingBalance}
            #   for more details.
            #
            #   @param effective_at [Time] the starting_on request parameter (if supplied) or the first credit grant's effe
            #
            #   @param excluding_pending [Float] the starting balance, including all posted grants, deductions, and expirations t
            #
            #   @param including_pending [Float] the excluding_pending balance plus any pending activity that has not been posted
          end
        end
      end
    end
  end
end
