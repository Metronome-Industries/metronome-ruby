# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CreditListParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute [r] covering_date
          #   Return only credits that have access schedules that "cover" the provided date
          #
          #   @return [Time, nil]
          optional :covering_date, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :covering_date

          # @!attribute [r] credit_id
          #
          #   @return [String, nil]
          optional :credit_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :credit_id

          # @!attribute [r] effective_before
          #   Include only credits that have any access before the provided date (exclusive)
          #
          #   @return [Time, nil]
          optional :effective_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :effective_before

          # @!attribute [r] include_archived
          #   Include archived credits and credits from archived contracts.
          #
          #   @return [Boolean, nil]
          optional :include_archived, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :include_archived

          # @!attribute [r] include_balance
          #   Include the balance in the response. Setting this flag may cause the query to be
          #     slower.
          #
          #   @return [Boolean, nil]
          optional :include_balance, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :include_balance

          # @!attribute [r] include_contract_credits
          #   Include credits on the contract level.
          #
          #   @return [Boolean, nil]
          optional :include_contract_credits, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :include_contract_credits

          # @!attribute [r] include_ledgers
          #   Include credit ledgers in the response. Setting this flag may cause the query to
          #     be slower.
          #
          #   @return [Boolean, nil]
          optional :include_ledgers, MetronomeSDK::BooleanModel

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
          #   Include only credits that have any access on or after the provided date
          #
          #   @return [Time, nil]
          optional :starting_at, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :starting_at

          # @!parse
          #   # @param customer_id [String]
          #   # @param covering_date [Time]
          #   # @param credit_id [String]
          #   # @param effective_before [Time]
          #   # @param include_archived [Boolean]
          #   # @param include_balance [Boolean]
          #   # @param include_contract_credits [Boolean]
          #   # @param include_ledgers [Boolean]
          #   # @param next_page [String]
          #   # @param starting_at [Time]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     customer_id:,
          #     covering_date: nil,
          #     credit_id: nil,
          #     effective_before: nil,
          #     include_archived: nil,
          #     include_balance: nil,
          #     include_contract_credits: nil,
          #     include_ledgers: nil,
          #     next_page: nil,
          #     starting_at: nil,
          #     request_options: {},
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
