# frozen_string_literal: true

module Metronome
  module Models
    class ContractListBalancesParams < Metronome::BaseModel
      # @!attribute [rw] customer_id
      #   @return [String]
      required :customer_id, String

      # @!attribute [rw] id
      #   @return [String]
      optional :id, String

      # @!attribute [rw] covering_date
      #   Return only balances that have access schedules that "cover" the provided date
      #   @return [Time]
      optional :covering_date, Time

      # @!attribute [rw] effective_before
      #   Include only balances that have any access before the provided date (exclusive)
      #   @return [Time]
      optional :effective_before, Time

      # @!attribute [rw] include_archived
      #   Include credits from archived contracts.
      #   @return [Boolean]
      optional :include_archived, Metronome::BooleanModel

      # @!attribute [rw] include_contract_balances
      #   Include balances on the contract level.
      #   @return [Boolean]
      optional :include_contract_balances, Metronome::BooleanModel

      # @!attribute [rw] include_ledgers
      #   Include ledgers in the response. Setting this flag may cause the query to be slower.
      #   @return [Boolean]
      optional :include_ledgers, Metronome::BooleanModel

      # @!attribute [rw] next_page
      #   The next page token from a previous response.
      #   @return [String]
      optional :next_page, String

      # @!attribute [rw] starting_at
      #   Include only balances that have any access on or after the provided date
      #   @return [Time]
      optional :starting_at, Time
    end
  end
end
