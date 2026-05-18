# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractListSeatBalancesResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractListSeatBalancesResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          returns(
            MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Pagination
          )
        end
        attr_reader :pagination

        sig do
          params(
            pagination:
              MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Pagination::OrHash
          ).void
        end
        attr_writer :pagination

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::OrHash
              ],
            pagination:
              MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Pagination::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, pagination:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data
                ],
              pagination:
                MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Pagination
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Balance
              ]
            )
          end
          attr_accessor :balances

          # The unique identifier for the seat
          sig { returns(String) }
          attr_accessor :seat_id

          # Array of commits applicable to this seat with their balances
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit
                ]
              )
            )
          end
          attr_accessor :commits

          # Array of credits applicable to this seat with their balances
          sig do
            returns(
              T.nilable(
                T::Array[
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit
                ]
              )
            )
          end
          attr_reader :credits

          sig do
            params(
              credits:
                T::Array[
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::OrHash
                ]
            ).void
          end
          attr_writer :credits

          sig do
            params(
              balances:
                T::Array[
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Balance::OrHash
                ],
              seat_id: String,
              commits:
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::OrHash
                  ]
                ),
              credits:
                T::Array[
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            balances:,
            # The unique identifier for the seat
            seat_id:,
            # Array of commits applicable to this seat with their balances
            commits: nil,
            # Array of credits applicable to this seat with their balances
            credits: nil
          )
          end

          sig do
            override.returns(
              {
                balances:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Balance
                  ],
                seat_id: String,
                commits:
                  T.nilable(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit
                    ]
                  ),
                credits:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit
                  ]
              }
            )
          end
          def to_hash
          end

          class Balance < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Balance,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The total balance across all commits and credits for this seat, of this credit
            # type.
            sig { returns(Float) }
            attr_accessor :balance

            sig { returns(String) }
            attr_accessor :credit_type_id

            # The total initial balances of all commits and credits for this seat, of this
            # credit type.
            sig { returns(Float) }
            attr_accessor :starting_balance

            sig do
              params(
                balance: Float,
                credit_type_id: String,
                starting_balance: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # The total balance across all commits and credits for this seat, of this credit
              # type.
              balance:,
              credit_type_id:,
              # The total initial balances of all commits and credits for this seat, of this
              # credit type.
              starting_balance:
            )
            end

            sig do
              override.returns(
                {
                  balance: Float,
                  credit_type_id: String,
                  starting_balance: Float
                }
              )
            end
            def to_hash
            end
          end

          class Commit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The commit or credit ID
            sig { returns(String) }
            attr_accessor :id

            # The current balance for this commit for this specific seat
            sig { returns(Float) }
            attr_accessor :balance

            # The datetime when the commit becomes active
            sig { returns(Time) }
            attr_accessor :start_date

            # The datetime when the commit expires
            sig { returns(T.nilable(Time)) }
            attr_accessor :end_date

            # Transaction history for this commit for this seat (only included if
            # include_ledgers=true)
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry
                  ]
                )
              )
            end
            attr_reader :ledger_entries

            sig do
              params(
                ledger_entries:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::OrHash
                  ]
              ).void
            end
            attr_writer :ledger_entries

            sig do
              params(
                id: String,
                balance: Float,
                start_date: Time,
                end_date: T.nilable(Time),
                ledger_entries:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The commit or credit ID
              id:,
              # The current balance for this commit for this specific seat
              balance:,
              # The datetime when the commit becomes active
              start_date:,
              # The datetime when the commit expires
              end_date: nil,
              # Transaction history for this commit for this seat (only included if
              # include_ledgers=true)
              ledger_entries: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  balance: Float,
                  start_date: Time,
                  end_date: T.nilable(Time),
                  ledger_entries:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry
                    ]
                }
              )
            end
            def to_hash
            end

            class LedgerEntry < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Amount of the ledger entry
              sig { returns(Float) }
              attr_accessor :amount

              # The datetime when the ledger is created
              sig { returns(Time) }
              attr_accessor :timestamp

              # Commit ledger type
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  amount: Float,
                  timestamp: Time,
                  type:
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Amount of the ledger entry
                amount:,
                # The datetime when the ledger is created
                timestamp:,
                # Commit ledger type
                type:
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              # Commit ledger type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PREPAID_COMMIT_SEGMENT_START =
                  T.let(
                    :PREPAID_COMMIT_SEGMENT_START,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                  )
                PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
                  T.let(
                    :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                  )
                PREPAID_COMMIT_ROLLOVER =
                  T.let(
                    :PREPAID_COMMIT_ROLLOVER,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                  )
                PREPAID_COMMIT_EXPIRATION =
                  T.let(
                    :PREPAID_COMMIT_EXPIRATION,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                  )
                PREPAID_COMMIT_CANCELED =
                  T.let(
                    :PREPAID_COMMIT_CANCELED,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                  )
                PREPAID_COMMIT_CREDITED =
                  T.let(
                    :PREPAID_COMMIT_CREDITED,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                  )
                PREPAID_COMMIT_MANUAL =
                  T.let(
                    :PREPAID_COMMIT_MANUAL,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                  )
                PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT =
                  T.let(
                    :PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Commit::LedgerEntry::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Credit < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            # The credit ID
            sig { returns(String) }
            attr_accessor :id

            # The current balance for this credit for this specific seat
            sig { returns(Float) }
            attr_accessor :balance

            # The datetime when the credit becomes active
            sig { returns(Time) }
            attr_accessor :start_date

            # The datetime when the credit expires
            sig { returns(T.nilable(Time)) }
            attr_accessor :end_date

            # Transaction history for this credit for this seat (only included if
            # include_ledgers=true)
            sig do
              returns(
                T.nilable(
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry
                  ]
                )
              )
            end
            attr_reader :ledger_entries

            sig do
              params(
                ledger_entries:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::OrHash
                  ]
              ).void
            end
            attr_writer :ledger_entries

            sig do
              params(
                id: String,
                balance: Float,
                start_date: Time,
                end_date: T.nilable(Time),
                ledger_entries:
                  T::Array[
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The credit ID
              id:,
              # The current balance for this credit for this specific seat
              balance:,
              # The datetime when the credit becomes active
              start_date:,
              # The datetime when the credit expires
              end_date: nil,
              # Transaction history for this credit for this seat (only included if
              # include_ledgers=true)
              ledger_entries: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  balance: Float,
                  start_date: Time,
                  end_date: T.nilable(Time),
                  ledger_entries:
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry
                    ]
                }
              )
            end
            def to_hash
            end

            class LedgerEntry < MetronomeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry,
                    MetronomeSDK::Internal::AnyHash
                  )
                end

              # Amount of the ledger entry
              sig { returns(Float) }
              attr_accessor :amount

              # The datetime when the ledger is created
              sig { returns(Time) }
              attr_accessor :timestamp

              # Credit ledger type
              sig do
                returns(
                  MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  amount: Float,
                  timestamp: Time,
                  type:
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Amount of the ledger entry
                amount:,
                # The datetime when the ledger is created
                timestamp:,
                # Credit ledger type
                type:
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    timestamp: Time,
                    type:
                      MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              # Credit ledger type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CREDIT_SEGMENT_START =
                  T.let(
                    :CREDIT_SEGMENT_START,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                  )
                CREDIT_AUTOMATED_INVOICE_DEDUCTION =
                  T.let(
                    :CREDIT_AUTOMATED_INVOICE_DEDUCTION,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                  )
                CREDIT_EXPIRATION =
                  T.let(
                    :CREDIT_EXPIRATION,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                  )
                CREDIT_CANCELED =
                  T.let(
                    :CREDIT_CANCELED,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                  )
                CREDIT_CREDITED =
                  T.let(
                    :CREDIT_CREDITED,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                  )
                CREDIT_MANUAL =
                  T.let(
                    :CREDIT_MANUAL,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                  )
                CREDIT_SEAT_BASED_ADJUSTMENT =
                  T.let(
                    :CREDIT_SEAT_BASED_ADJUSTMENT,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                  )
                CREDIT_ROLLOVER =
                  T.let(
                    :CREDIT_ROLLOVER,
                    MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Data::Credit::LedgerEntry::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        class Pagination < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractListSeatBalancesResponse::Pagination,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Number of seats available to fetch in the next page
          sig { returns(Float) }
          attr_accessor :seats_available_for_next_page

          # Number of seats included in this response
          sig { returns(Float) }
          attr_accessor :seats_included

          # Token to retrieve the next page of results. Null if no more pages available
          sig { returns(T.nilable(String)) }
          attr_accessor :next_page

          sig do
            params(
              seats_available_for_next_page: Float,
              seats_included: Float,
              next_page: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Number of seats available to fetch in the next page
            seats_available_for_next_page:,
            # Number of seats included in this response
            seats_included:,
            # Token to retrieve the next page of results. Null if no more pages available
            next_page: nil
          )
          end

          sig do
            override.returns(
              {
                seats_available_for_next_page: Float,
                seats_included: Float,
                next_page: T.nilable(String)
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
