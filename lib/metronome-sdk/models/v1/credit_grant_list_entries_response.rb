# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CreditGrantListEntriesResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data>]
        required :data,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        required :next_page, String, nil?: true

        # @!parse
        #   # @param data [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data>]
        #   # @param next_page [String, nil]
        #   #
        #   def initialize(data:, next_page:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Data < MetronomeSDK::BaseModel
          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute ledgers
          #
          #   @return [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger>]
          required :ledgers,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger] }

          # @!parse
          #   # @param customer_id [String]
          #   # @param ledgers [Array<MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger>]
          #   #
          #   def initialize(customer_id:, ledgers:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class Ledger < MetronomeSDK::BaseModel
            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::CreditTypeData]
            required :credit_type, -> { MetronomeSDK::Models::CreditTypeData }

            # @!attribute ending_balance
            #   the effective balances at the end of the specified time window
            #
            #   @return [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance]
            required :ending_balance,
                     -> { MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance }

            # @!attribute entries
            #
            #   @return [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
            required :entries, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::CreditLedgerEntry] }

            # @!attribute pending_entries
            #
            #   @return [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
            required :pending_entries, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::CreditLedgerEntry] }

            # @!attribute starting_balance
            #
            #   @return [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance]
            required :starting_balance,
                     -> { MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance }

            # @!parse
            #   # @param credit_type [MetronomeSDK::Models::CreditTypeData]
            #   # @param ending_balance [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance]
            #   # @param entries [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
            #   # @param pending_entries [Array<MetronomeSDK::Models::V1::CreditLedgerEntry>]
            #   # @param starting_balance [MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance]
            #   #
            #   def initialize(credit_type:, ending_balance:, entries:, pending_entries:, starting_balance:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class EndingBalance < MetronomeSDK::BaseModel
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
              #   # @param effective_at [Time]
              #   # @param excluding_pending [Float]
              #   # @param including_pending [Float]
              #   #
              #   def initialize(effective_at:, excluding_pending:, including_pending:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class StartingBalance < MetronomeSDK::BaseModel
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
              #   # @param effective_at [Time]
              #   # @param excluding_pending [Float]
              #   # @param including_pending [Float]
              #   #
              #   def initialize(effective_at:, excluding_pending:, including_pending:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
