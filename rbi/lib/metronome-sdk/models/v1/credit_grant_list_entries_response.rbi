# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantListEntriesResponse < MetronomeSDK::BaseModel
        sig { returns(T::Array[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data]) }
        def data
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data])
            .returns(T::Array[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data])
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
            data: T::Array[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data],
            next_page: T.nilable(String)
          )
            .void
        end
        def initialize(data:, next_page:)
        end

        sig do
          override
            .returns(
              {data: T::Array[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data], next_page: T.nilable(String)}
            )
        end
        def to_hash
        end

        class Data < MetronomeSDK::BaseModel
          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig { returns(T::Array[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger]) }
          def ledgers
          end

          sig do
            params(_: T::Array[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger])
              .returns(T::Array[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger])
          end
          def ledgers=(_)
          end

          sig do
            params(
              customer_id: String,
              ledgers: T::Array[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger]
            )
              .void
          end
          def initialize(customer_id:, ledgers:)
          end

          sig do
            override
              .returns(
                {
                  customer_id: String,
                  ledgers: T::Array[MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger]
                }
              )
          end
          def to_hash
          end

          class Ledger < MetronomeSDK::BaseModel
            sig { returns(MetronomeSDK::Models::CreditTypeData) }
            def credit_type
            end

            sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
            def credit_type=(_)
            end

            sig { returns(MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance) }
            def ending_balance
            end

            sig do
              params(_: MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance)
                .returns(MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance)
            end
            def ending_balance=(_)
            end

            sig { returns(T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry]) }
            def entries
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry])
                .returns(T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry])
            end
            def entries=(_)
            end

            sig { returns(T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry]) }
            def pending_entries
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry])
                .returns(T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry])
            end
            def pending_entries=(_)
            end

            sig { returns(MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance) }
            def starting_balance
            end

            sig do
              params(_: MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance)
                .returns(MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance)
            end
            def starting_balance=(_)
            end

            sig do
              params(
                credit_type: MetronomeSDK::Models::CreditTypeData,
                ending_balance: MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance,
                entries: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry],
                pending_entries: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry],
                starting_balance: MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance
              )
                .void
            end
            def initialize(credit_type:, ending_balance:, entries:, pending_entries:, starting_balance:)
            end

            sig do
              override
                .returns(
                  {
                    credit_type: MetronomeSDK::Models::CreditTypeData,
                    ending_balance: MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance,
                    entries: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry],
                    pending_entries: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry],
                    starting_balance: MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance
                  }
                )
            end
            def to_hash
            end

            class EndingBalance < MetronomeSDK::BaseModel
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

              sig do
                override.returns({effective_at: Time, excluding_pending: Float, including_pending: Float})
              end
              def to_hash
              end
            end

            class StartingBalance < MetronomeSDK::BaseModel
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

              sig do
                override.returns({effective_at: Time, excluding_pending: Float, including_pending: Float})
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
