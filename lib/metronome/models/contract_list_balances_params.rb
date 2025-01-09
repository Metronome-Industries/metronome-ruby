# frozen_string_literal: true

module Metronome
  module Models
    class ContractListBalancesParams < Metronome::BaseModel
      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute id
      #
      #   @return [String]
      optional :id, String

      # @!attribute covering_date
      #   Return only balances that have access schedules that "cover" the provided date
      #
      #   @return [Time]
      optional :covering_date, Time

      # @!attribute effective_before
      #   Include only balances that have any access before the provided date (exclusive)
      #
      #   @return [Time]
      optional :effective_before, Time

      # @!attribute include_archived
      #   Include credits from archived contracts.
      #
      #   @return [Boolean]
      optional :include_archived, Metronome::BooleanModel

      # @!attribute include_balance
      #   Include the balance of credits and commits in the response. Setting this flag may cause the query to be slower.
      #
      #   @return [Boolean]
      optional :include_balance, Metronome::BooleanModel

      # @!attribute include_contract_balances
      #   Include balances on the contract level.
      #
      #   @return [Boolean]
      optional :include_contract_balances, Metronome::BooleanModel

      # @!attribute include_ledgers
      #   Include ledgers in the response. Setting this flag may cause the query to be slower.
      #
      #   @return [Boolean]
      optional :include_ledgers, Metronome::BooleanModel

      # @!attribute next_page
      #   The next page token from a previous response.
      #
      #   @return [String]
      optional :next_page, String

      # @!attribute starting_at
      #   Include only balances that have any access on or after the provided date
      #
      #   @return [Time]
      optional :starting_at, Time

      # @!parse
      #   # @param customer_id [String]
      #   #
      #   # @param id [String]
      #   #
      #   # @param covering_date [String] Return only balances that have access schedules that "cover" the provided date
      #   #
      #   # @param effective_before [String] Include only balances that have any access before the provided date (exclusive)
      #   #
      #   # @param include_archived [Boolean] Include credits from archived contracts.
      #   #
      #   # @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag
      #   #   may cause the query to be slower.
      #   #
      #   # @param include_contract_balances [Boolean] Include balances on the contract level.
      #   #
      #   # @param include_ledgers [Boolean] Include ledgers in the response. Setting this flag may cause the query to be
      #   #   slower.
      #   #
      #   # @param next_page [String] The next page token from a previous response.
      #   #
      #   # @param starting_at [String] Include only balances that have any access on or after the provided date
      #   #
      #   def initialize(
      #     customer_id:,
      #     id: nil,
      #     covering_date: nil,
      #     effective_before: nil,
      #     include_archived: nil,
      #     include_balance: nil,
      #     include_contract_balances: nil,
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
