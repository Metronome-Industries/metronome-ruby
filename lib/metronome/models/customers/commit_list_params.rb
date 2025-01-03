# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CommitListParams < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute commit_id
        #
        #   @return [String]
        optional :commit_id, String

        # @!attribute covering_date
        #   Include only commits that have access schedules that "cover" the provided date
        #
        #   @return [Time]
        optional :covering_date, Time

        # @!attribute effective_before
        #   Include only commits that have any access before the provided date (exclusive)
        #
        #   @return [Time]
        optional :effective_before, Time

        # @!attribute include_archived
        #   Include commits from archived contracts.
        #
        #   @return [Boolean]
        optional :include_archived, Metronome::BooleanModel

        # @!attribute include_contract_commits
        #   Include commits on the contract level.
        #
        #   @return [Boolean]
        optional :include_contract_commits, Metronome::BooleanModel

        # @!attribute include_ledgers
        #   Include commit ledgers in the response. Setting this flag may cause the query to be slower.
        #
        #   @return [Boolean]
        optional :include_ledgers, Metronome::BooleanModel

        # @!attribute next_page
        #   The next page token from a previous response.
        #
        #   @return [String]
        optional :next_page, String

        # @!attribute starting_at
        #   Include only commits that have any access on or after the provided date
        #
        #   @return [Time]
        optional :starting_at, Time

        # @!parse
        #   # @param customer_id [String]
        #   #
        #   # @param commit_id [String]
        #   #
        #   # @param covering_date [String] Include only commits that have access schedules that "cover" the provided date
        #   #
        #   # @param effective_before [String] Include only commits that have any access before the provided date (exclusive)
        #   #
        #   # @param include_archived [Boolean] Include commits from archived contracts.
        #   #
        #   # @param include_contract_commits [Boolean] Include commits on the contract level.
        #   #
        #   # @param include_ledgers [Boolean] Include commit ledgers in the response. Setting this flag may cause the query to
        #   #   be slower.
        #   #
        #   # @param next_page [String] The next page token from a previous response.
        #   #
        #   # @param starting_at [String] Include only commits that have any access on or after the provided date
        #   #
        #   def initialize(
        #     customer_id:,
        #     commit_id: nil,
        #     covering_date: nil,
        #     effective_before: nil,
        #     include_archived: nil,
        #     include_contract_commits: nil,
        #     include_ledgers: nil,
        #     next_page: nil,
        #     starting_at: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
