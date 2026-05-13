# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractListSeatBalancesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::ContractListSeatBalancesParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The contract ID to retrieve seat balances for
        sig { returns(String) }
        attr_accessor :contract_id

        # The customer ID to retrieve seat balances for
        sig { returns(String) }
        attr_accessor :customer_id

        # Include only commits or credits with access that cover this specific date
        # (cannot be used with starting_at or ending_before).
        sig { returns(T.nilable(Time)) }
        attr_reader :covering_date

        sig { params(covering_date: Time).void }
        attr_writer :covering_date

        # Page token from a previous response to retrieve the next page
        sig { returns(T.nilable(String)) }
        attr_reader :cursor

        sig { params(cursor: String).void }
        attr_writer :cursor

        # Include only commits or credits with access effective on or before this date
        # (cannot be used with covering_date).
        sig { returns(T.nilable(Time)) }
        attr_reader :effective_before

        sig { params(effective_before: Time).void }
        attr_writer :effective_before

        # Include credits and commits in the response
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_credits_and_commits

        sig { params(include_credits_and_commits: T::Boolean).void }
        attr_writer :include_credits_and_commits

        # Include ledger entries for each commit and commit. `include_credits_and_commits`
        # must be set to `true` for `include_ledgers=true` to apply.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_ledgers

        sig { params(include_ledgers: T::Boolean).void }
        attr_writer :include_ledgers

        # Maximum number of seats to return. Range: 1-100. Default: 25. When
        # `include_credits_and_commits = true`, if the total commits/credits across all
        # seats exceeds 100, a limit of 100 applies to the total credits and commits.
        # Seats are included greedily to maximize the number of seats returned. Example:
        # if seat 1 has 98 commits and seat 2 has 10 commits, both seats will be returned
        # (total: 108 commits). Each returned seat includes all of its associated credits
        # and commits.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Optional filter to only include specific seats.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :seat_ids

        sig { params(seat_ids: T::Array[String]).void }
        attr_writer :seat_ids

        # Include only commits or credits with access effective on or after this date
        # (cannot be used with covering_date).
        sig { returns(T.nilable(Time)) }
        attr_reader :starting_at

        sig { params(starting_at: Time).void }
        attr_writer :starting_at

        # Optional filter to only include seats from specific subscriptions. If
        # subscriptions ids are not mapped to SEAT_BASED subscriptions, error will be
        # returned.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :subscription_ids

        sig { params(subscription_ids: T::Array[String]).void }
        attr_writer :subscription_ids

        sig do
          params(
            contract_id: String,
            customer_id: String,
            covering_date: Time,
            cursor: String,
            effective_before: Time,
            include_credits_and_commits: T::Boolean,
            include_ledgers: T::Boolean,
            limit: Integer,
            seat_ids: T::Array[String],
            starting_at: Time,
            subscription_ids: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The contract ID to retrieve seat balances for
          contract_id:,
          # The customer ID to retrieve seat balances for
          customer_id:,
          # Include only commits or credits with access that cover this specific date
          # (cannot be used with starting_at or ending_before).
          covering_date: nil,
          # Page token from a previous response to retrieve the next page
          cursor: nil,
          # Include only commits or credits with access effective on or before this date
          # (cannot be used with covering_date).
          effective_before: nil,
          # Include credits and commits in the response
          include_credits_and_commits: nil,
          # Include ledger entries for each commit and commit. `include_credits_and_commits`
          # must be set to `true` for `include_ledgers=true` to apply.
          include_ledgers: nil,
          # Maximum number of seats to return. Range: 1-100. Default: 25. When
          # `include_credits_and_commits = true`, if the total commits/credits across all
          # seats exceeds 100, a limit of 100 applies to the total credits and commits.
          # Seats are included greedily to maximize the number of seats returned. Example:
          # if seat 1 has 98 commits and seat 2 has 10 commits, both seats will be returned
          # (total: 108 commits). Each returned seat includes all of its associated credits
          # and commits.
          limit: nil,
          # Optional filter to only include specific seats.
          seat_ids: nil,
          # Include only commits or credits with access effective on or after this date
          # (cannot be used with covering_date).
          starting_at: nil,
          # Optional filter to only include seats from specific subscriptions. If
          # subscriptions ids are not mapped to SEAT_BASED subscriptions, error will be
          # returned.
          subscription_ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              contract_id: String,
              customer_id: String,
              covering_date: Time,
              cursor: String,
              effective_before: Time,
              include_credits_and_commits: T::Boolean,
              include_ledgers: T::Boolean,
              limit: Integer,
              seat_ids: T::Array[String],
              starting_at: Time,
              subscription_ids: T::Array[String],
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
