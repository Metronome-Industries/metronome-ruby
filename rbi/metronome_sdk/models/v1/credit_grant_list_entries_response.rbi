# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantListEntriesResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::CreditGrantListEntriesResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger
            ]
          )
        end
        attr_accessor :ledgers

        sig do
          params(
            customer_id: String,
            ledgers:
              T::Array[
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(customer_id:, ledgers:)
        end

        sig do
          override.returns(
            {
              customer_id: String,
              ledgers:
                T::Array[
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger
                ]
            }
          )
        end
        def to_hash
        end

        class Ledger < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::CreditType
            )
          end
          attr_reader :credit_type

          sig do
            params(
              credit_type:
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::CreditType::OrHash
            ).void
          end
          attr_writer :credit_type

          # the effective balances at the end of the specified time window
          sig do
            returns(
              MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::EndingBalance
            )
          end
          attr_reader :ending_balance

          sig do
            params(
              ending_balance:
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::EndingBalance::OrHash
            ).void
          end
          attr_writer :ending_balance

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::Entry
              ]
            )
          end
          attr_accessor :entries

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::PendingEntry
              ]
            )
          end
          attr_accessor :pending_entries

          sig do
            returns(
              MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::StartingBalance
            )
          end
          attr_reader :starting_balance

          sig do
            params(
              starting_balance:
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::StartingBalance::OrHash
            ).void
          end
          attr_writer :starting_balance

          sig do
            params(
              credit_type:
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::CreditType::OrHash,
              ending_balance:
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::EndingBalance::OrHash,
              entries:
                T::Array[
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::Entry::OrHash
                ],
              pending_entries:
                T::Array[
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::PendingEntry::OrHash
                ],
              starting_balance:
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::StartingBalance::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            credit_type:,
            # the effective balances at the end of the specified time window
            ending_balance:,
            entries:,
            pending_entries:,
            starting_balance:
          )
          end

          sig do
            override.returns(
              {
                credit_type:
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::CreditType,
                ending_balance:
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::EndingBalance,
                entries:
                  T::Array[
                    MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::Entry
                  ],
                pending_entries:
                  T::Array[
                    MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::PendingEntry
                  ],
                starting_balance:
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::StartingBalance
              }
            )
          end
          def to_hash
          end

          class CreditType < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::CreditType,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :name

            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(id:, name:)
            end

            sig { override.returns({ id: String, name: String }) }
            def to_hash
            end
          end

          class EndingBalance < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::EndingBalance,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # the ending_before request parameter (if supplied) or the current billing
            # period's end date
            sig { returns(Time) }
            attr_accessor :effective_at

            # the ending balance, including the balance of all grants that have not expired
            # before the effective_at date and deductions that happened before the
            # effective_at date
            sig { returns(Float) }
            attr_accessor :excluding_pending

            # the excluding_pending balance plus any pending invoice deductions and
            # expirations that will happen by the effective_at date
            sig { returns(Float) }
            attr_accessor :including_pending

            # the effective balances at the end of the specified time window
            sig do
              params(
                effective_at: Time,
                excluding_pending: Float,
                including_pending: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # the ending_before request parameter (if supplied) or the current billing
              # period's end date
              effective_at:,
              # the ending balance, including the balance of all grants that have not expired
              # before the effective_at date and deductions that happened before the
              # effective_at date
              excluding_pending:,
              # the excluding_pending balance plus any pending invoice deductions and
              # expirations that will happen by the effective_at date
              including_pending:
            )
            end

            sig do
              override.returns(
                {
                  effective_at: Time,
                  excluding_pending: Float,
                  including_pending: Float
                }
              )
            end
            def to_hash
            end
          end

          class Entry < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::Entry,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # an amount representing the change to the customer's credit balance
            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(String) }
            attr_accessor :created_by

            # the credit grant this entry is related to
            sig { returns(String) }
            attr_accessor :credit_grant_id

            sig { returns(Time) }
            attr_accessor :effective_at

            sig { returns(String) }
            attr_accessor :reason

            # the running balance for this credit type at the time of the ledger entry,
            # including all preceding charges
            sig { returns(Float) }
            attr_accessor :running_balance

            # if this entry is a deduction, the Metronome ID of the invoice where the credit
            # deduction was consumed; if this entry is a grant, the Metronome ID of the
            # invoice where the grant's paid_amount was charged
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_id

            sig do
              params(
                amount: Float,
                created_by: String,
                credit_grant_id: String,
                effective_at: Time,
                reason: String,
                running_balance: Float,
                invoice_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # an amount representing the change to the customer's credit balance
              amount:,
              created_by:,
              # the credit grant this entry is related to
              credit_grant_id:,
              effective_at:,
              reason:,
              # the running balance for this credit type at the time of the ledger entry,
              # including all preceding charges
              running_balance:,
              # if this entry is a deduction, the Metronome ID of the invoice where the credit
              # deduction was consumed; if this entry is a grant, the Metronome ID of the
              # invoice where the grant's paid_amount was charged
              invoice_id: nil
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  created_by: String,
                  credit_grant_id: String,
                  effective_at: Time,
                  reason: String,
                  running_balance: Float,
                  invoice_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class PendingEntry < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::PendingEntry,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # an amount representing the change to the customer's credit balance
            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(String) }
            attr_accessor :created_by

            # the credit grant this entry is related to
            sig { returns(String) }
            attr_accessor :credit_grant_id

            sig { returns(Time) }
            attr_accessor :effective_at

            sig { returns(String) }
            attr_accessor :reason

            # the running balance for this credit type at the time of the ledger entry,
            # including all preceding charges
            sig { returns(Float) }
            attr_accessor :running_balance

            # if this entry is a deduction, the Metronome ID of the invoice where the credit
            # deduction was consumed; if this entry is a grant, the Metronome ID of the
            # invoice where the grant's paid_amount was charged
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_id

            sig do
              params(
                amount: Float,
                created_by: String,
                credit_grant_id: String,
                effective_at: Time,
                reason: String,
                running_balance: Float,
                invoice_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # an amount representing the change to the customer's credit balance
              amount:,
              created_by:,
              # the credit grant this entry is related to
              credit_grant_id:,
              effective_at:,
              reason:,
              # the running balance for this credit type at the time of the ledger entry,
              # including all preceding charges
              running_balance:,
              # if this entry is a deduction, the Metronome ID of the invoice where the credit
              # deduction was consumed; if this entry is a grant, the Metronome ID of the
              # invoice where the grant's paid_amount was charged
              invoice_id: nil
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  created_by: String,
                  credit_grant_id: String,
                  effective_at: Time,
                  reason: String,
                  running_balance: Float,
                  invoice_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class StartingBalance < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Ledger::StartingBalance,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # the starting_on request parameter (if supplied) or the first credit grant's
            # effective_at date
            sig { returns(Time) }
            attr_accessor :effective_at

            # the starting balance, including all posted grants, deductions, and expirations
            # that happened at or before the effective_at timestamp
            sig { returns(Float) }
            attr_accessor :excluding_pending

            # the excluding_pending balance plus any pending activity that has not been posted
            # at the time of the query
            sig { returns(Float) }
            attr_accessor :including_pending

            sig do
              params(
                effective_at: Time,
                excluding_pending: Float,
                including_pending: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # the starting_on request parameter (if supplied) or the first credit grant's
              # effective_at date
              effective_at:,
              # the starting balance, including all posted grants, deductions, and expirations
              # that happened at or before the effective_at timestamp
              excluding_pending:,
              # the excluding_pending balance plus any pending activity that has not been posted
              # at the time of the query
              including_pending:
            )
            end

            sig do
              override.returns(
                {
                  effective_at: Time,
                  excluding_pending: Float,
                  including_pending: Float
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
