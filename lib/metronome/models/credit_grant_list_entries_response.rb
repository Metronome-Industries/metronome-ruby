# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListEntriesResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::CreditGrantListEntriesResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CreditGrantListEntriesResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] ledgers
        #   @return [Array<Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger>]
        required :ledgers,
                 Metronome::ArrayOf.new(
                   lambda {
                     Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger
                   }
                 )

        class Ledger < BaseModel
          # @!attribute [rw] credit_type
          #   @return [Metronome::Models::CreditTypeData]
          required :credit_type, -> { Metronome::Models::CreditTypeData }

          # @!attribute [rw] ending_balance
          #   the effective balances at the end of the specified time window
          #   @return [Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance]
          required :ending_balance,
                   -> { Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance }

          # @!attribute [rw] entries
          #   @return [Array<Metronome::Models::CreditLedgerEntry>]
          required :entries, Metronome::ArrayOf.new(-> { Metronome::Models::CreditLedgerEntry })

          # @!attribute [rw] pending_entries
          #   @return [Array<Metronome::Models::CreditLedgerEntry>]
          required :pending_entries, Metronome::ArrayOf.new(-> { Metronome::Models::CreditLedgerEntry })

          # @!attribute [rw] starting_balance
          #   @return [Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance]
          required :starting_balance,
                   -> { Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance }

          class EndingBalance < BaseModel
            # @!attribute [rw] effective_at
            #   the ending_before request parameter (if supplied) or the current billing period's end date
            #   @return [Time]
            required :effective_at, Time

            # @!attribute [rw] excluding_pending
            #   the ending balance, including the balance of all grants that have not expired before the effective_at date and deductions that happened before the effective_at date
            #   @return [Float]
            required :excluding_pending, Float

            # @!attribute [rw] including_pending
            #   the excluding_pending balance plus any pending invoice deductions and expirations that will happen by the effective_at date
            #   @return [Float]
            required :including_pending, Float
          end

          class StartingBalance < BaseModel
            # @!attribute [rw] effective_at
            #   the starting_on request parameter (if supplied) or the first credit grant's effective_at date
            #   @return [Time]
            required :effective_at, Time

            # @!attribute [rw] excluding_pending
            #   the starting balance, including all posted grants, deductions, and expirations that happened at or before the effective_at timestamp
            #   @return [Float]
            required :excluding_pending, Float

            # @!attribute [rw] including_pending
            #   the excluding_pending balance plus any pending activity that has not been posted at the time of the query
            #   @return [Float]
            required :including_pending, Float
          end
        end
      end
    end
  end
end
