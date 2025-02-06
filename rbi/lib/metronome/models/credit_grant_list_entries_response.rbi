# typed: strong

module Metronome
  module Models
    class CreditGrantListEntriesResponse < Metronome::BaseModel
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
      def initialize(data:, next_page:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data],
            next_page: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Data < Metronome::BaseModel
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
        def initialize(customer_id:, ledgers:)
        end

        sig do
          override.returns(
            {
              customer_id: String,
              ledgers: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger]
            }
          )
        end
        def to_hash
        end

        class Ledger < Metronome::BaseModel
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
          def initialize(credit_type:, ending_balance:, entries:, pending_entries:, starting_balance:)
          end

          sig do
            override.returns(
              {
                credit_type: Metronome::Models::CreditTypeData,
                ending_balance: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance,
                entries: T::Array[Metronome::Models::CreditLedgerEntry],
                pending_entries: T::Array[Metronome::Models::CreditLedgerEntry],
                starting_balance: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance
              }
            )
          end
          def to_hash
          end

          class EndingBalance < Metronome::BaseModel
            sig { returns(Time) }
            attr_accessor :effective_at

            sig { returns(Float) }
            attr_accessor :excluding_pending

            sig { returns(Float) }
            attr_accessor :including_pending

            sig { params(effective_at: Time, excluding_pending: Float, including_pending: Float).void }
            def initialize(effective_at:, excluding_pending:, including_pending:)
            end

            sig { override.returns({effective_at: Time, excluding_pending: Float, including_pending: Float}) }
            def to_hash
            end
          end

          class StartingBalance < Metronome::BaseModel
            sig { returns(Time) }
            attr_accessor :effective_at

            sig { returns(Float) }
            attr_accessor :excluding_pending

            sig { returns(Float) }
            attr_accessor :including_pending

            sig { params(effective_at: Time, excluding_pending: Float, including_pending: Float).void }
            def initialize(effective_at:, excluding_pending:, including_pending:)
            end

            sig { override.returns({effective_at: Time, excluding_pending: Float, including_pending: Float}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
