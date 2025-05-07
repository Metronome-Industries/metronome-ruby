# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantListEntriesResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::OrHash
              ],
            next_page: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(data:, next_page:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data
                ],
              next_page: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger
              ]
            )
          end
          attr_accessor :ledgers

          sig do
            params(
              customer_id: String,
              ledgers:
                T::Array[
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::OrHash
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
                    MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger
                  ]
              }
            )
          end
          def to_hash
          end

          class Ledger < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
              end

            sig { returns(MetronomeSDK::CreditTypeData) }
            attr_reader :credit_type

            sig do
              params(credit_type: MetronomeSDK::CreditTypeData::OrHash).void
            end
            attr_writer :credit_type

            # the effective balances at the end of the specified time window
            sig do
              returns(
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance
              )
            end
            attr_reader :ending_balance

            sig do
              params(
                ending_balance:
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance::OrHash
              ).void
            end
            attr_writer :ending_balance

            sig { returns(T::Array[MetronomeSDK::V1::CreditLedgerEntry]) }
            attr_accessor :entries

            sig { returns(T::Array[MetronomeSDK::V1::CreditLedgerEntry]) }
            attr_accessor :pending_entries

            sig do
              returns(
                MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance
              )
            end
            attr_reader :starting_balance

            sig do
              params(
                starting_balance:
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance::OrHash
              ).void
            end
            attr_writer :starting_balance

            sig do
              params(
                credit_type: MetronomeSDK::CreditTypeData::OrHash,
                ending_balance:
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance::OrHash,
                entries: T::Array[MetronomeSDK::V1::CreditLedgerEntry::OrHash],
                pending_entries:
                  T::Array[MetronomeSDK::V1::CreditLedgerEntry::OrHash],
                starting_balance:
                  MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance::OrHash
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
                  credit_type: MetronomeSDK::CreditTypeData,
                  ending_balance:
                    MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::EndingBalance,
                  entries: T::Array[MetronomeSDK::V1::CreditLedgerEntry],
                  pending_entries:
                    T::Array[MetronomeSDK::V1::CreditLedgerEntry],
                  starting_balance:
                    MetronomeSDK::Models::V1::CreditGrantListEntriesResponse::Data::Ledger::StartingBalance
                }
              )
            end
            def to_hash
            end

            class EndingBalance < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
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

            class StartingBalance < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(T.self_type, MetronomeSDK::Internal::AnyHash)
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
end
