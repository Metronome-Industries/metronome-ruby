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

            # Create a new instance of EndingBalance from a Hash of raw data.
            #
            # @overload initialize(effective_at: nil, excluding_pending: nil, including_pending: nil)
            # @param effective_at [String] the ending_before request parameter (if supplied) or the current billing
            #   period's end date
            # @param excluding_pending [Float] the ending balance, including the balance of all grants that have not expired
            #   before the effective_at date and deductions that happened before the
            #   effective_at date
            # @param including_pending [Float] the excluding_pending balance plus any pending invoice deductions and
            #   expirations that will happen by the effective_at date
            def initialize(data = {})
              super
            end
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

            # Create a new instance of StartingBalance from a Hash of raw data.
            #
            # @overload initialize(effective_at: nil, excluding_pending: nil, including_pending: nil)
            # @param effective_at [String] the starting_on request parameter (if supplied) or the first credit grant's
            #   effective_at date
            # @param excluding_pending [Float] the starting balance, including all posted grants, deductions, and expirations
            #   that happened at or before the effective_at timestamp
            # @param including_pending [Float] the excluding_pending balance plus any pending activity that has not been posted
            #   at the time of the query
            def initialize(data = {})
              super
            end
          end

          # Create a new instance of Ledger from a Hash of raw data.
          #
          # @overload initialize(credit_type: nil, ending_balance: nil, entries: nil, pending_entries: nil, starting_balance: nil)
          # @param credit_type [Object]
          # @param ending_balance [Object] the effective balances at the end of the specified time window
          # @param entries [Array<Object>]
          # @param pending_entries [Array<Object>]
          # @param starting_balance [Object]
          def initialize(data = {})
            super
          end
        end

        # Create a new instance of Data from a Hash of raw data.
        #
        # @overload initialize(customer_id: nil, ledgers: nil)
        # @param customer_id [String]
        # @param ledgers [Array<Object>]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of CreditGrantListEntriesResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil, next_page: nil)
      # @param data [Array<Object>]
      # @param next_page [String]
      def initialize(data = {})
        super
      end
    end
  end
end
