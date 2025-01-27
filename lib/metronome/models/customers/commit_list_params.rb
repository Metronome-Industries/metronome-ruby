# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CommitListParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute [r] commit_id
        #
        #   @return [String, nil]
        optional :commit_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :commit_id

        # @!attribute [r] covering_date
        #   Include only commits that have access schedules that "cover" the provided date
        #
        #   @return [Time, nil]
        optional :covering_date, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :covering_date

        # @!attribute [r] effective_before
        #   Include only commits that have any access before the provided date (exclusive)
        #
        #   @return [Time, nil]
        optional :effective_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :effective_before

        # @!attribute [r] include_archived
        #   Include commits from archived contracts.
        #
        #   @return [Boolean, nil]
        optional :include_archived, Metronome::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_archived

        # @!attribute [r] include_balance
        #   Include the balance in the response. Setting this flag may cause the query to be
        #     slower.
        #
        #   @return [Boolean, nil]
        optional :include_balance, Metronome::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_balance

        # @!attribute [r] include_contract_commits
        #   Include commits on the contract level.
        #
        #   @return [Boolean, nil]
        optional :include_contract_commits, Metronome::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_contract_commits

        # @!attribute [r] include_ledgers
        #   Include commit ledgers in the response. Setting this flag may cause the query to
        #     be slower.
        #
        #   @return [Boolean, nil]
        optional :include_ledgers, Metronome::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_ledgers

        # @!attribute [r] next_page
        #   The next page token from a previous response.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!parse
        #   # @return [String]
        #   attr_writer :next_page

        # @!attribute [r] starting_at
        #   Include only commits that have any access on or after the provided date
        #
        #   @return [Time, nil]
        optional :starting_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :starting_at

        # @!parse
        #   # @param customer_id [String]
        #   # @param commit_id [String]
        #   # @param covering_date [Time]
        #   # @param effective_before [Time]
        #   # @param include_archived [Boolean]
        #   # @param include_balance [Boolean]
        #   # @param include_contract_commits [Boolean]
        #   # @param include_ledgers [Boolean]
        #   # @param next_page [String]
        #   # @param starting_at [Time]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     customer_id:,
        #     commit_id: nil,
        #     covering_date: nil,
        #     effective_before: nil,
        #     include_archived: nil,
        #     include_balance: nil,
        #     include_contract_commits: nil,
        #     include_ledgers: nil,
        #     next_page: nil,
        #     starting_at: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
