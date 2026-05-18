# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#list_seat_balances
      class ContractListSeatBalancesResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data] }

        # @!attribute pagination
        #
        #   @return [MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Pagination]
        required :pagination, -> { MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Pagination }

        # @!method initialize(data:, pagination:)
        #   @param data [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data>]
        #   @param pagination [MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Pagination]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute balances
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Balance>]
          required :balances,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Balance] }

          # @!attribute seat_id
          #   The unique identifier for the seat
          #
          #   @return [String]
          required :seat_id, String

          # @!attribute commits
          #   Array of commits applicable to this seat with their balances
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit>, nil]
          optional :commits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit] },
                   nil?: true

          # @!attribute credits
          #   Array of credits applicable to this seat with their balances
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit>, nil]
          optional :credits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit] }

          # @!method initialize(balances:, seat_id:, commits: nil, credits: nil)
          #   @param balances [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Balance>]
          #
          #   @param seat_id [String] The unique identifier for the seat
          #
          #   @param commits [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit>, nil] Array of commits applicable to this seat with their balances
          #
          #   @param credits [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit>] Array of credits applicable to this seat with their balances

          class Balance < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute balance
            #   The total balance across all commits and credits for this seat, of this credit
            #   type.
            #
            #   @return [Float]
            required :balance, Float

            # @!attribute credit_type_id
            #
            #   @return [String]
            required :credit_type_id, String

            # @!attribute starting_balance
            #   The total initial balances of all commits and credits for this seat, of this
            #   credit type.
            #
            #   @return [Float]
            required :starting_balance, Float

            # @!method initialize(balance:, credit_type_id:, starting_balance:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Balance} for
            #   more details.
            #
            #   @param balance [Float] The total balance across all commits and credits for this seat, of this credit t
            #
            #   @param credit_type_id [String]
            #
            #   @param starting_balance [Float] The total initial balances of all commits and credits for this seat, of this cre
          end

          class Commit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The commit or credit ID
            #
            #   @return [String]
            required :id, String

            # @!attribute balance
            #   The current balance for this commit for this specific seat
            #
            #   @return [Float]
            required :balance, Float

            # @!attribute start_date
            #   The datetime when the commit becomes active
            #
            #   @return [Time]
            required :start_date, Time

            # @!attribute end_date
            #   The datetime when the commit expires
            #
            #   @return [Time, nil]
            optional :end_date, Time, nil?: true

            # @!attribute ledger_entries
            #   Transaction history for this commit for this seat (only included if
            #   include_ledgers=true)
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry>, nil]
            optional :ledger_entries,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry] }

            # @!method initialize(id:, balance:, start_date:, end_date: nil, ledger_entries: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit} for
            #   more details.
            #
            #   @param id [String] The commit or credit ID
            #
            #   @param balance [Float] The current balance for this commit for this specific seat
            #
            #   @param start_date [Time] The datetime when the commit becomes active
            #
            #   @param end_date [Time, nil] The datetime when the commit expires
            #
            #   @param ledger_entries [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry>] Transaction history for this commit for this seat (only included if include_ledg

            class LedgerEntry < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount
              #   Amount of the ledger entry
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute timestamp
              #   The datetime when the ledger is created
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute type
              #   Commit ledger type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type }

              # @!method initialize(amount:, timestamp:, type:)
              #   @param amount [Float] Amount of the ledger entry
              #
              #   @param timestamp [Time] The datetime when the ledger is created
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type] Commit ledger type

              # Commit ledger type
              #
              # @see MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START
                PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
                PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER
                PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION
                PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED
                PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED
                PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL
                PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT = :PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Credit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The credit ID
            #
            #   @return [String]
            required :id, String

            # @!attribute balance
            #   The current balance for this credit for this specific seat
            #
            #   @return [Float]
            required :balance, Float

            # @!attribute start_date
            #   The datetime when the credit becomes active
            #
            #   @return [Time]
            required :start_date, Time

            # @!attribute end_date
            #   The datetime when the credit expires
            #
            #   @return [Time, nil]
            optional :end_date, Time, nil?: true

            # @!attribute ledger_entries
            #   Transaction history for this credit for this seat (only included if
            #   include_ledgers=true)
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry>, nil]
            optional :ledger_entries,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry] }

            # @!method initialize(id:, balance:, start_date:, end_date: nil, ledger_entries: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit} for
            #   more details.
            #
            #   @param id [String] The credit ID
            #
            #   @param balance [Float] The current balance for this credit for this specific seat
            #
            #   @param start_date [Time] The datetime when the credit becomes active
            #
            #   @param end_date [Time, nil] The datetime when the credit expires
            #
            #   @param ledger_entries [Array<MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry>] Transaction history for this credit for this seat (only included if include_ledg

            class LedgerEntry < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount
              #   Amount of the ledger entry
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute timestamp
              #   The datetime when the ledger is created
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute type
              #   Credit ledger type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type }

              # @!method initialize(amount:, timestamp:, type:)
              #   @param amount [Float] Amount of the ledger entry
              #
              #   @param timestamp [Time] The datetime when the ledger is created
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type] Credit ledger type

              # Credit ledger type
              #
              # @see MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START
                CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION
                CREDIT_EXPIRATION = :CREDIT_EXPIRATION
                CREDIT_CANCELED = :CREDIT_CANCELED
                CREDIT_CREDITED = :CREDIT_CREDITED
                CREDIT_MANUAL = :CREDIT_MANUAL
                CREDIT_SEAT_BASED_ADJUSTMENT = :CREDIT_SEAT_BASED_ADJUSTMENT
                CREDIT_ROLLOVER = :CREDIT_ROLLOVER

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end

        # @see MetronomeSDK::Models::V1::ContractListSeatBalancesResponse#pagination
        class Pagination < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute seats_available_for_next_page
          #   Number of seats available to fetch in the next page
          #
          #   @return [Float]
          required :seats_available_for_next_page, Float

          # @!attribute seats_included
          #   Number of seats included in this response
          #
          #   @return [Float]
          required :seats_included, Float

          # @!attribute next_page
          #   Token to retrieve the next page of results. Null if no more pages available
          #
          #   @return [String, nil]
          optional :next_page, String, nil?: true

          # @!method initialize(seats_available_for_next_page:, seats_included:, next_page: nil)
          #   @param seats_available_for_next_page [Float] Number of seats available to fetch in the next page
          #
          #   @param seats_included [Float] Number of seats included in this response
          #
          #   @param next_page [String, nil] Token to retrieve the next page of results. Null if no more pages available
        end
      end
    end
  end
end
