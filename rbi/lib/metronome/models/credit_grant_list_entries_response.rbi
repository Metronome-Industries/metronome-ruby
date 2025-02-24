# typed: strong

module Metronome
  module Models
    class CreditGrantListEntriesResponse < Metronome::BaseModel
      sig { returns(T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data]) }
      def data
      end

      sig do
        params(_: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data])
          .returns(T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data])
      end
      def data=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_page
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def next_page=(_)
      end

      sig do
        params(
          data: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data],
          next_page: T.nilable(String)
        )
          .void
      end
      def initialize(data:, next_page:)
      end

      sig do
        override
          .returns(
            {data: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data], next_page: T.nilable(String)}
          )
      end
      def to_hash
      end

      class Data < Metronome::BaseModel
        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger]) }
        def ledgers
        end

        sig do
          params(_: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger])
            .returns(T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger])
        end
        def ledgers=(_)
        end

        sig do
          params(
            customer_id: String,
            ledgers: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger]
          )
            .void
        end
        def initialize(customer_id:, ledgers:)
        end

        sig do
          override
            .returns(
              {customer_id: String, ledgers: T::Array[Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger]}
            )
        end
        def to_hash
        end

        class Ledger < Metronome::BaseModel
          sig { returns(Metronome::Models::CreditTypeData) }
          def credit_type
          end

          sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
          def credit_type=(_)
          end

          sig { returns(Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance) }
          def ending_balance
          end

          sig do
            params(_: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance)
              .returns(Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance)
          end
          def ending_balance=(_)
          end

          sig { returns(T::Array[Metronome::Models::CreditLedgerEntry]) }
          def entries
          end

          sig do
            params(_: T::Array[Metronome::Models::CreditLedgerEntry])
              .returns(T::Array[Metronome::Models::CreditLedgerEntry])
          end
          def entries=(_)
          end

          sig { returns(T::Array[Metronome::Models::CreditLedgerEntry]) }
          def pending_entries
          end

          sig do
            params(_: T::Array[Metronome::Models::CreditLedgerEntry])
              .returns(T::Array[Metronome::Models::CreditLedgerEntry])
          end
          def pending_entries=(_)
          end

          sig { returns(Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance) }
          def starting_balance
          end

          sig do
            params(_: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance)
              .returns(Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance)
          end
          def starting_balance=(_)
          end

          sig do
            params(
              credit_type: Metronome::Models::CreditTypeData,
              ending_balance: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance,
              entries: T::Array[Metronome::Models::CreditLedgerEntry],
              pending_entries: T::Array[Metronome::Models::CreditLedgerEntry],
              starting_balance: Metronome::Models::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance
            )
              .void
          end
          def initialize(credit_type:, ending_balance:, entries:, pending_entries:, starting_balance:)
          end

          sig do
            override
              .returns(
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
            def effective_at
            end

            sig { params(_: Time).returns(Time) }
            def effective_at=(_)
            end

            sig { returns(Float) }
            def excluding_pending
            end

            sig { params(_: Float).returns(Float) }
            def excluding_pending=(_)
            end

            sig { returns(Float) }
            def including_pending
            end

            sig { params(_: Float).returns(Float) }
            def including_pending=(_)
            end

            sig { params(effective_at: Time, excluding_pending: Float, including_pending: Float).void }
            def initialize(effective_at:, excluding_pending:, including_pending:)
            end

            sig { override.returns({effective_at: Time, excluding_pending: Float, including_pending: Float}) }
            def to_hash
            end
          end

          class StartingBalance < Metronome::BaseModel
            sig { returns(Time) }
            def effective_at
            end

            sig { params(_: Time).returns(Time) }
            def effective_at=(_)
            end

            sig { returns(Float) }
            def excluding_pending
            end

            sig { params(_: Float).returns(Float) }
            def excluding_pending=(_)
            end

            sig { returns(Float) }
            def including_pending
            end

            sig { params(_: Float).returns(Float) }
            def including_pending=(_)
            end

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
