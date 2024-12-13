# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListEntriesResponse < Metronome::BaseModel
      # @!attribute data
      #   @return [Array<Metronome::Models::CreditGrantListEntriesResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CreditGrantListEntriesResponse::Data })

      # @!attribute next_page
      #   @return [String]
      required :next_page, String

      class Data < Metronome::BaseModel
        # @!attribute customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute ledgers
        #   @return [Array<Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger>]
        required :ledgers,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger
                   }
                 )

        class Ledger < Metronome::BaseModel
          # @!attribute credit_type
          #   @return [Metronome::Models::CreditTypeData]
          required :credit_type, -> { Metronome::Models::CreditTypeData }

          # @!attribute ending_balance
          #   the effective balances at the end of the specified time window
          #   @return [Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance]
          required :ending_balance,
                   -> { Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance }

          # @!attribute entries
          #   @return [Array<Metronome::Models::CreditLedgerEntry>]
          required :entries, Metronome::ArrayOf.new(-> { Metronome::Models::CreditLedgerEntry })

          # @!attribute pending_entries
          #   @return [Array<Metronome::Models::CreditLedgerEntry>]
          required :pending_entries, Metronome::ArrayOf.new(-> { Metronome::Models::CreditLedgerEntry })

          # @!attribute starting_balance
          #   @return [Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance]
          required :starting_balance,
                   -> { Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance }

          class EndingBalance < Metronome::BaseModel
            # @!attribute effective_at
            #   the ending_before request parameter (if supplied) or the current billing period's end date
            #   @return [Time]
            required :effective_at, Time

            # @!attribute excluding_pending
            #   the ending balance, including the balance of all grants that have not expired before the effective_at date and deductions that happened before the effective_at date
            #   @return [Float]
            required :excluding_pending, Float

            # @!attribute including_pending
            #   the excluding_pending balance plus any pending invoice deductions and expirations that will happen by the effective_at date
            #   @return [Float]
            required :including_pending, Float

            # @!parse
            #   # Create a new instance of EndingBalance from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :effective_at the ending_before request parameter (if supplied) or the current billing
            #   #     period's end date
            #   #   @option data [Float] :excluding_pending the ending balance, including the balance of all grants that have not expired
            #   #     before the effective_at date and deductions that happened before the
            #   #     effective_at date
            #   #   @option data [Float] :including_pending the excluding_pending balance plus any pending invoice deductions and
            #   #     expirations that will happen by the effective_at date
            #   def initialize(data = {}) = super
          end

          class StartingBalance < Metronome::BaseModel
            # @!attribute effective_at
            #   the starting_on request parameter (if supplied) or the first credit grant's effective_at date
            #   @return [Time]
            required :effective_at, Time

            # @!attribute excluding_pending
            #   the starting balance, including all posted grants, deductions, and expirations that happened at or before the effective_at timestamp
            #   @return [Float]
            required :excluding_pending, Float

            # @!attribute including_pending
            #   the excluding_pending balance plus any pending activity that has not been posted at the time of the query
            #   @return [Float]
            required :including_pending, Float

            # @!parse
            #   # Create a new instance of StartingBalance from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :effective_at the starting_on request parameter (if supplied) or the first credit grant's
            #   #     effective_at date
            #   #   @option data [Float] :excluding_pending the starting balance, including all posted grants, deductions, and expirations
            #   #     that happened at or before the effective_at timestamp
            #   #   @option data [Float] :including_pending the excluding_pending balance plus any pending activity that has not been posted
            #   #     at the time of the query
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Ledger from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Object] :credit_type
          #   #   @option data [Object] :ending_balance the effective balances at the end of the specified time window
          #   #   @option data [Array<Object>] :entries
          #   #   @option data [Array<Object>] :pending_entries
          #   #   @option data [Object] :starting_balance
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :customer_id
        #   #   @option data [Array<Object>] :ledgers
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of CreditGrantListEntriesResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :data
      #   #   @option data [String] :next_page
      #   def initialize(data = {}) = super
    end
  end
end
