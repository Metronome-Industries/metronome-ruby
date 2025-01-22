# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # credit_grant_list_entries_response => {
    #   data: -> { Metronome::ArrayOf[Metronome::Models::CreditGrantListEntriesResponse::Data] === _1 },
    #   next_page: String
    # }
    # ```
    class CreditGrantListEntriesResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::CreditGrantListEntriesResponse::Data>]
      required :data, -> { Metronome::ArrayOf[Metronome::Models::CreditGrantListEntriesResponse::Data] }

      # @!attribute next_page
      #
      #   @return [String, nil]
      required :next_page, String, nil?: true

      # @!parse
      #   # @param data [Array<Metronome::Models::CreditGrantListEntriesResponse::Data>]
      #   # @param next_page [String, nil]
      #   #
      #   def initialize(data:, next_page:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   customer_id: String,
      #   ledgers: -> { Metronome::ArrayOf[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger] === _1 }
      # }
      # ```
      class Data < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute ledgers
        #
        #   @return [Array<Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger>]
        required :ledgers,
                 -> { Metronome::ArrayOf[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger] }

        # @!parse
        #   # @param customer_id [String]
        #   # @param ledgers [Array<Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger>]
        #   #
        #   def initialize(customer_id:, ledgers:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # ledger => {
        #   credit_type: Metronome::Models::CreditTypeData,
        #   ending_balance: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance,
        #   entries: -> { Metronome::ArrayOf[Metronome::Models::CreditLedgerEntry] === _1 },
        #   pending_entries: -> { Metronome::ArrayOf[Metronome::Models::CreditLedgerEntry] === _1 },
        #   starting_balance: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance
        # }
        # ```
        class Ledger < Metronome::BaseModel
          # @!attribute credit_type
          #
          #   @return [Metronome::Models::CreditTypeData]
          required :credit_type, -> { Metronome::Models::CreditTypeData }

          # @!attribute ending_balance
          #   the effective balances at the end of the specified time window
          #
          #   @return [Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance]
          required :ending_balance,
                   -> { Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance }

          # @!attribute entries
          #
          #   @return [Array<Metronome::Models::CreditLedgerEntry>]
          required :entries, -> { Metronome::ArrayOf[Metronome::Models::CreditLedgerEntry] }

          # @!attribute pending_entries
          #
          #   @return [Array<Metronome::Models::CreditLedgerEntry>]
          required :pending_entries, -> { Metronome::ArrayOf[Metronome::Models::CreditLedgerEntry] }

          # @!attribute starting_balance
          #
          #   @return [Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance]
          required :starting_balance,
                   -> { Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance }

          # @!parse
          #   # @param credit_type [Metronome::Models::CreditTypeData]
          #   # @param ending_balance [Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance]
          #   # @param entries [Array<Metronome::Models::CreditLedgerEntry>]
          #   # @param pending_entries [Array<Metronome::Models::CreditLedgerEntry>]
          #   # @param starting_balance [Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance]
          #   #
          #   def initialize(credit_type:, ending_balance:, entries:, pending_entries:, starting_balance:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          # ```ruby
          # ending_balance => {
          #   effective_at: Time,
          #   excluding_pending: Float,
          #   including_pending: Float
          # }
          # ```
          class EndingBalance < Metronome::BaseModel
            # @!attribute effective_at
            #   the ending_before request parameter (if supplied) or the current billing
            #     period's end date
            #
            #   @return [Time]
            required :effective_at, Time

            # @!attribute excluding_pending
            #   the ending balance, including the balance of all grants that have not expired
            #     before the effective_at date and deductions that happened before the
            #     effective_at date
            #
            #   @return [Float]
            required :excluding_pending, Float

            # @!attribute including_pending
            #   the excluding_pending balance plus any pending invoice deductions and
            #     expirations that will happen by the effective_at date
            #
            #   @return [Float]
            required :including_pending, Float

            # @!parse
            #   # the effective balances at the end of the specified time window
            #   #
            #   # @param effective_at [String]
            #   # @param excluding_pending [Float]
            #   # @param including_pending [Float]
            #   #
            #   def initialize(effective_at:, excluding_pending:, including_pending:, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end

          # @example
          # ```ruby
          # starting_balance => {
          #   effective_at: Time,
          #   excluding_pending: Float,
          #   including_pending: Float
          # }
          # ```
          class StartingBalance < Metronome::BaseModel
            # @!attribute effective_at
            #   the starting_on request parameter (if supplied) or the first credit grant's
            #     effective_at date
            #
            #   @return [Time]
            required :effective_at, Time

            # @!attribute excluding_pending
            #   the starting balance, including all posted grants, deductions, and expirations
            #     that happened at or before the effective_at timestamp
            #
            #   @return [Float]
            required :excluding_pending, Float

            # @!attribute including_pending
            #   the excluding_pending balance plus any pending activity that has not been posted
            #     at the time of the query
            #
            #   @return [Float]
            required :including_pending, Float

            # @!parse
            #   # @param effective_at [String]
            #   # @param excluding_pending [Float]
            #   # @param including_pending [Float]
            #   #
            #   def initialize(effective_at:, excluding_pending:, including_pending:, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void
          end
        end
      end
    end
  end
end
