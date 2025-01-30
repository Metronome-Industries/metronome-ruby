# typed: strong

module Metronome
  module Models
    class CreditGrantListEntriesResponse < Metronome::BaseModel
      Shape = T.type_alias do
        {
          data: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data],
          next_page: T.nilable(String)
        }
      end

      sig { returns(T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_page

      sig do
        params(
          data: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data],
          next_page: T.nilable(String)
        ).void
      end
      def initialize(data:, next_page:); end

      sig { returns(Metronome::Models::CreditGrantListEntriesResponse::Shape) }
      def to_h; end

      class Data < Metronome::BaseModel
        Shape = T.type_alias do
          {
            customer_id: String,
            ledgers: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger]
          }
        end

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger]) }
        attr_accessor :ledgers

        sig do
          params(
            customer_id: String,
            ledgers: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger]
          ).void
        end
        def initialize(customer_id:, ledgers:); end

        sig { returns(Metronome::Models::CreditGrantListEntriesResponse::Data::Shape) }
        def to_h; end

        class Ledger < Metronome::BaseModel
          Shape = T.type_alias do
            {
              credit_type: Metronome::Models::CreditTypeData,
              ending_balance: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance,
              entries: T::Array[Metronome::Models::CreditLedgerEntry],
              pending_entries: T::Array[Metronome::Models::CreditLedgerEntry],
              starting_balance: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance
            }
          end

          sig { returns(Metronome::Models::CreditTypeData) }
          attr_accessor :credit_type

          sig { returns(Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance) }
          attr_accessor :ending_balance

          sig { returns(T::Array[Metronome::Models::CreditLedgerEntry]) }
          attr_accessor :entries

          sig { returns(T::Array[Metronome::Models::CreditLedgerEntry]) }
          attr_accessor :pending_entries

          sig { returns(Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance) }
          attr_accessor :starting_balance

          sig do
            params(
              credit_type: Metronome::Models::CreditTypeData,
              ending_balance: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance,
              entries: T::Array[Metronome::Models::CreditLedgerEntry],
              pending_entries: T::Array[Metronome::Models::CreditLedgerEntry],
              starting_balance: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance
            ).void
          end
          def initialize(credit_type:, ending_balance:, entries:, pending_entries:, starting_balance:); end

          sig { returns(Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::Shape) }
          def to_h; end

          class EndingBalance < Metronome::BaseModel
            Shape = T.type_alias { {effective_at: Time, excluding_pending: Float, including_pending: Float} }

            sig { returns(Time) }
            attr_accessor :effective_at

            sig { returns(Float) }
            attr_accessor :excluding_pending

            sig { returns(Float) }
            attr_accessor :including_pending

            sig { params(effective_at: Time, excluding_pending: Float, including_pending: Float).void }
            def initialize(effective_at:, excluding_pending:, including_pending:); end

            sig do
              returns(Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance::Shape)
            end
            def to_h; end
          end

          class StartingBalance < Metronome::BaseModel
            Shape = T.type_alias { {effective_at: Time, excluding_pending: Float, including_pending: Float} }

            sig { returns(Time) }
            attr_accessor :effective_at

            sig { returns(Float) }
            attr_accessor :excluding_pending

            sig { returns(Float) }
            attr_accessor :including_pending

            sig { params(effective_at: Time, excluding_pending: Float, including_pending: Float).void }
            def initialize(effective_at:, excluding_pending:, including_pending:); end

            sig do
              returns(Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance::Shape)
            end
            def to_h; end
          end
        end
      end
    end
  end
end
