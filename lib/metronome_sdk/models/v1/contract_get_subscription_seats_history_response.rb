# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#get_subscription_seats_history
      class ContractGetSubscriptionSeatsHistoryResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsHistoryResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsHistoryResponse::Data] }

        # @!attribute next_page
        #   Cursor for the next page of results
        #
        #   @return [String, nil]
        required :next_page, String, nil?: true

        # @!method initialize(data:, next_page:)
        #   @param data [Array<MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsHistoryResponse::Data>]
        #
        #   @param next_page [String, nil] Cursor for the next page of results

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute assigned_seat_ids
          #   Array of seat IDs that are assigned in this period
          #
          #   @return [Array<String>]
          required :assigned_seat_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute ending_before
          #   The end time of this seat schedule period (null if ongoing)
          #
          #   @return [Time, nil]
          required :ending_before, Time, nil?: true

          # @!attribute starting_at
          #   The start time of this seat schedule period
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute total_quantity
          #   Total number of assigned and unassigned seats in this period
          #
          #   @return [Integer]
          required :total_quantity, Integer

          # @!method initialize(assigned_seat_ids:, ending_before:, starting_at:, total_quantity:)
          #   @param assigned_seat_ids [Array<String>] Array of seat IDs that are assigned in this period
          #
          #   @param ending_before [Time, nil] The end time of this seat schedule period (null if ongoing)
          #
          #   @param starting_at [Time] The start time of this seat schedule period
          #
          #   @param total_quantity [Integer] Total number of assigned and unassigned seats in this period
        end
      end
    end
  end
end
