# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#get_subscription_seats_history
      class ContractGetSubscriptionSeatsHistoryParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute contract_id
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute subscription_id
        #
        #   @return [String]
        required :subscription_id, String

        # @!attribute covering_date
        #   Get the seats history segment for the covering date. Cannot be used with
        #   `starting_at` or `ending_before`.
        #
        #   @return [Time, nil]
        optional :covering_date, Time, nil?: true

        # @!attribute cursor
        #   Cursor for pagination. Use the value from the `next_page` field of the previous
        #   response to retrieve the next page of results.
        #
        #   @return [String, nil]
        optional :cursor, String, nil?: true

        # @!attribute ending_before
        #   Include seats history segments that are active at or before this timestamp. Use
        #   with `starting_at` to get a specific time range. If not set, there's no upper
        #   bound.
        #
        #   @return [Time, nil]
        optional :ending_before, Time, nil?: true

        # @!attribute limit
        #   Maximum number of seat schedule entries to return. Defaults to 10. Required
        #   range: 1 <= x <= 10.
        #
        #   @return [Integer, nil]
        optional :limit, Integer, nil?: true

        # @!attribute starting_at
        #   Include seats history segments that are active at or after this timestamp. Use
        #   with `ending_before` to get a specific time range. If not set, there's no lower
        #   bound.
        #
        #   @return [Time, nil]
        optional :starting_at, Time, nil?: true

        # @!method initialize(contract_id:, customer_id:, subscription_id:, covering_date: nil, cursor: nil, ending_before: nil, limit: nil, starting_at: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsHistoryParams} for more
        #   details.
        #
        #   @param contract_id [String]
        #
        #   @param customer_id [String]
        #
        #   @param subscription_id [String]
        #
        #   @param covering_date [Time, nil] Get the seats history segment for the covering date. Cannot be used with `starti
        #
        #   @param cursor [String, nil] Cursor for pagination. Use the value from the `next_page` field of the previous
        #
        #   @param ending_before [Time, nil] Include seats history segments that are active at or before this timestamp. Use
        #
        #   @param limit [Integer, nil] Maximum number of seat schedule entries to return. Defaults to 10. Required rang
        #
        #   @param starting_at [Time, nil] Include seats history segments that are active at or after this timestamp. Use w
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
