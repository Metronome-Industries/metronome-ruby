# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#list_balances
      class ContractListBalancesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute covering_date
        #   Return only balances that have access schedules that "cover" the provided date
        #
        #   @return [Time, nil]
        optional :covering_date, Time

        # @!attribute effective_before
        #   Include only balances that have any access before the provided date (exclusive)
        #
        #   @return [Time, nil]
        optional :effective_before, Time

        # @!attribute include_archived
        #   Include archived credits and credits from archived contracts.
        #
        #   @return [Boolean, nil]
        optional :include_archived, MetronomeSDK::Internal::Type::Boolean

        # @!attribute include_balance
        #   Include the balance of credits and commits in the response. Setting this flag
        #   may cause the query to be slower.
        #
        #   @return [Boolean, nil]
        optional :include_balance, MetronomeSDK::Internal::Type::Boolean

        # @!attribute include_contract_balances
        #   Include balances on the contract level.
        #
        #   @return [Boolean, nil]
        optional :include_contract_balances, MetronomeSDK::Internal::Type::Boolean

        # @!attribute include_ledgers
        #   Include ledgers in the response. Setting this flag may cause the query to be
        #   slower.
        #
        #   @return [Boolean, nil]
        optional :include_ledgers, MetronomeSDK::Internal::Type::Boolean

        # @!attribute next_page
        #   The next page token from a previous response.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute starting_at
        #   Include only balances that have any access on or after the provided date
        #
        #   @return [Time, nil]
        optional :starting_at, Time

        # @!method initialize(customer_id:, id: nil, covering_date: nil, effective_before: nil, include_archived: nil, include_balance: nil, include_contract_balances: nil, include_ledgers: nil, next_page: nil, starting_at: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractListBalancesParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param id [String]
        #
        #   @param covering_date [Time] Return only balances that have access schedules that "cover" the provided date
        #
        #   @param effective_before [Time] Include only balances that have any access before the provided date (exclusive)
        #
        #   @param include_archived [Boolean] Include archived credits and credits from archived contracts.
        #
        #   @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag ma
        #   ...
        #
        #   @param include_contract_balances [Boolean] Include balances on the contract level.
        #
        #   @param include_ledgers [Boolean] Include ledgers in the response. Setting this flag may cause the query to be slo
        #   ...
        #
        #   @param next_page [String] The next page token from a previous response.
        #
        #   @param starting_at [Time] Include only balances that have any access on or after the provided date
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
