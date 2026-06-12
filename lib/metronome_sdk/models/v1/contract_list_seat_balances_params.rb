# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#list_seat_balances
      class ContractListSeatBalancesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute contract_id
        #   The contract ID to retrieve seat balances for
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute customer_id
        #   The customer ID to retrieve seat balances for
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute covering_date
        #   Include only commits or credits with access that cover this specific date
        #   (cannot be used with starting_at or ending_before).
        #
        #   @return [Time, nil]
        optional :covering_date, Time

        # @!attribute cursor
        #   Page token from a previous response to retrieve the next page
        #
        #   @return [String, nil]
        optional :cursor, String

        # @!attribute effective_before
        #   Include only commits or credits with access effective on or before this date
        #   (cannot be used with covering_date).
        #
        #   @return [Time, nil]
        optional :effective_before, Time

        # @!attribute include_credits_and_commits
        #   Include credits and commits in the response
        #
        #   @return [Boolean, nil]
        optional :include_credits_and_commits, MetronomeSDK::Internal::Type::Boolean

        # @!attribute include_ledgers
        #   Include ledger entries for each commit and commit. `include_credits_and_commits`
        #   must be set to `true` for `include_ledgers=true` to apply.
        #
        #   @return [Boolean, nil]
        optional :include_ledgers, MetronomeSDK::Internal::Type::Boolean

        # @!attribute limit
        #   Maximum number of seats to return. Range: 1-100. Default: 25. When
        #   `include_credits_and_commits = true`, if the total commits/credits across all
        #   seats exceeds 100, a limit of 100 applies to the total credits and commits.
        #   Seats are included greedily to maximize the number of seats returned. Example:
        #   if seat 1 has 98 commits and seat 2 has 10 commits, both seats will be returned
        #   (total: 108 commits). Each returned seat includes all of its associated credits
        #   and commits.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute seat_ids
        #   Optional filter to only include specific seats.
        #
        #   @return [Array<String>, nil]
        optional :seat_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute skip_missing_seat_ids
        #   When true, any seat_ids not found in contract subscriptions will be silently
        #   omitted from the response instead of returning a 400 error.
        #
        #   @return [Boolean, nil]
        optional :skip_missing_seat_ids, MetronomeSDK::Internal::Type::Boolean

        # @!attribute starting_at
        #   Include only commits or credits with access effective on or after this date
        #   (cannot be used with covering_date).
        #
        #   @return [Time, nil]
        optional :starting_at, Time

        # @!attribute subscription_ids
        #   Optional filter to only include seats from specific subscriptions. If
        #   subscriptions ids are not mapped to SEAT_BASED subscriptions, error will be
        #   returned.
        #
        #   @return [Array<String>, nil]
        optional :subscription_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(contract_id:, customer_id:, covering_date: nil, cursor: nil, effective_before: nil, include_credits_and_commits: nil, include_ledgers: nil, limit: nil, seat_ids: nil, skip_missing_seat_ids: nil, starting_at: nil, subscription_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractListSeatBalancesParams} for more details.
        #
        #   @param contract_id [String] The contract ID to retrieve seat balances for
        #
        #   @param customer_id [String] The customer ID to retrieve seat balances for
        #
        #   @param covering_date [Time] Include only commits or credits with access that cover this specific date (canno
        #
        #   @param cursor [String] Page token from a previous response to retrieve the next page
        #
        #   @param effective_before [Time] Include only commits or credits with access effective on or before this date (ca
        #
        #   @param include_credits_and_commits [Boolean] Include credits and commits in the response
        #
        #   @param include_ledgers [Boolean] Include ledger entries for each commit and commit. `include_credits_and_commits`
        #
        #   @param limit [Integer] Maximum number of seats to return. Range: 1-100. Default: 25.
        #
        #   @param seat_ids [Array<String>] Optional filter to only include specific seats.
        #
        #   @param skip_missing_seat_ids [Boolean] When true, any seat_ids not found in contract subscriptions will be silently omi
        #
        #   @param starting_at [Time] Include only commits or credits with access effective on or after this date (can
        #
        #   @param subscription_ids [Array<String>] Optional filter to only include seats from specific subscriptions. If subscripti
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
