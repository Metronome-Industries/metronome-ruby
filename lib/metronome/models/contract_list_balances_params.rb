# frozen_string_literal: true

module Metronome
  module Models
    class ContractListBalancesParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute [r] id
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] covering_date
      #   Return only balances that have access schedules that "cover" the provided date
      #
      #   @return [Time, nil]
      optional :covering_date, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :covering_date

      # @!attribute [r] effective_before
      #   Include only balances that have any access before the provided date (exclusive)
      #
      #   @return [Time, nil]
      optional :effective_before, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :effective_before

      # @!attribute [r] include_archived
      #   Include credits from archived contracts.
      #
      #   @return [Boolean, nil]
      optional :include_archived, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_archived

      # @!attribute [r] include_balance
      #   Include the balance of credits and commits in the response. Setting this flag
      #     may cause the query to be slower.
      #
      #   @return [Boolean, nil]
      optional :include_balance, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_balance

      # @!attribute [r] include_contract_balances
      #   Include balances on the contract level.
      #
      #   @return [Boolean, nil]
      optional :include_contract_balances, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_contract_balances

      # @!attribute [r] include_ledgers
      #   Include ledgers in the response. Setting this flag may cause the query to be
      #     slower.
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
      #   Include only balances that have any access on or after the provided date
      #
      #   @return [Time, nil]
      optional :starting_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :starting_at

      # @!parse
      #   # @param customer_id [String]
      #   # @param id [String]
      #   # @param covering_date [String]
      #   # @param effective_before [String]
      #   # @param include_archived [Boolean]
      #   # @param include_balance [Boolean]
      #   # @param include_contract_balances [Boolean]
      #   # @param include_ledgers [Boolean]
      #   # @param next_page [String]
      #   # @param starting_at [String]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
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
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
