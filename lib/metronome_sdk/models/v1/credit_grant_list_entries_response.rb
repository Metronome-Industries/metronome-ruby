# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CreditGrants#list_entries
      class CreditGrantListEntriesResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        required :next_page, String, nil?: true

        # @!method initialize(data:, next_page:)
        #   @param data [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data>]
        #   @param next_page [String, nil]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute ledgers
          #
          #   @return [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger>]
          required :ledgers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger] }

          # @!method initialize(customer_id:, ledgers:)
          #   @param customer_id [String]
          #   @param ledgers [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger>]

          class Ledger < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::CreditType]
            required :credit_type,
                     -> { MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::CreditType }

            # @!attribute ending_balance
            #   the effective balances at the end of the specified time window
            #
            #   @return [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance]
            required :ending_balance,
                     -> { MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance }

            # @!attribute entries
            #
            #   @return [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::Entry>]
            required :entries,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::Entry] }

            # @!attribute pending_entries
            #
            #   @return [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::PendingEntry>]
            required :pending_entries,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::PendingEntry] }

            # @!attribute starting_balance
            #
            #   @return [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance]
            required :starting_balance,
                     -> { MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance }

            # @!method initialize(credit_type:, ending_balance:, entries:, pending_entries:, starting_balance:)
            #   @param credit_type [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::CreditType]
            #
            #   @param ending_balance [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance] the effective balances at the end of the specified time window
            #
            #   @param entries [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::Entry>]
            #
            #   @param pending_entries [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::PendingEntry>]
            #
            #   @param starting_balance [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance]

            # @see MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger#credit_type
            class CreditType < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!method initialize(id:, name:)
              #   @param id [String]
              #   @param name [String]
            end

            # @see MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger#ending_balance
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
              #   {MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance}
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

            class Entry < MetronomeSDK::Internal::Type::BaseModel
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
              #   {MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::Entry}
              #   for more details.
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

            class PendingEntry < MetronomeSDK::Internal::Type::BaseModel
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
              #   {MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::PendingEntry}
              #   for more details.
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

            # @see MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger#starting_balance
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
              #   {MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance}
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
end
