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
      end
    end
  end
end
