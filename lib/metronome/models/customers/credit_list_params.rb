# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CreditListParams < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute covering_date
        #   Return only credits that have access schedules that "cover" the provided date
        #
        #   @return [Time]
        optional :covering_date, Time

        # @!attribute credit_id
        #
        #   @return [String]
        optional :credit_id, String

        # @!attribute effective_before
        #   Include only credits that have any access before the provided date (exclusive)
        #
        #   @return [Time]
        optional :effective_before, Time

        # @!attribute include_archived
        #   Include credits from archived contracts.
        #
        #   @return [Boolean]
        optional :include_archived, Metronome::BooleanModel

        # @!attribute include_contract_credits
        #   Include credits on the contract level.
        #
        #   @return [Boolean]
        optional :include_contract_credits, Metronome::BooleanModel

        # @!attribute include_ledgers
        #   Include credit ledgers in the response. Setting this flag may cause the query to be slower.
        #
        #   @return [Boolean]
        optional :include_ledgers, Metronome::BooleanModel

        # @!attribute next_page
        #   The next page token from a previous response.
        #
        #   @return [String]
        optional :next_page, String

        # @!attribute starting_at
        #   Include only credits that have any access on or after the provided date
        #
        #   @return [Time]
        optional :starting_at, Time

        # @!parse
        #   # @param customer_id [String]
        #   #
        #   # @param covering_date [String, nil] Return only credits that have access schedules that "cover" the provided date
        #   #
        #   # @param credit_id [String, nil]
        #   #
        #   # @param effective_before [String, nil] Include only credits that have any access before the provided date (exclusive)
        #   #
        #   # @param include_archived [Boolean, nil] Include credits from archived contracts.
        #   #
        #   # @param include_contract_credits [Boolean, nil] Include credits on the contract level.
        #   #
        #   # @param include_ledgers [Boolean, nil] Include credit ledgers in the response. Setting this flag may cause the query to
        #   #   be slower.
        #   #
        #   # @param next_page [String, nil] The next page token from a previous response.
        #   #
        #   # @param starting_at [String, nil] Include only credits that have any access on or after the provided date
        #   #
        #   def initialize(
        #     customer_id:,
        #     covering_date: nil,
        #     credit_id: nil,
        #     effective_before: nil,
        #     include_archived: nil,
        #     include_contract_credits: nil,
        #     include_ledgers: nil,
        #     next_page: nil,
        #     starting_at: nil
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
