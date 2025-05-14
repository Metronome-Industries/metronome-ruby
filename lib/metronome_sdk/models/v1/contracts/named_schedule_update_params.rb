# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::NamedSchedules#update
        class NamedScheduleUpdateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute rate_card_id
          #   ID of the rate card whose named schedule is to be updated
          #
          #   @return [String]
          required :rate_card_id, String

          # @!attribute schedule_name
          #   The identifier for the schedule to be updated
          #
          #   @return [String]
          required :schedule_name, String

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute value
          #   The value to set for the named schedule. The structure of this object is
          #   specific to the named schedule.
          #
          #   @return [Object]
          required :value, MetronomeSDK::Internal::Type::Unknown

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!method initialize(rate_card_id:, schedule_name:, starting_at:, value:, ending_before: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Contracts::NamedScheduleUpdateParams} for more
          #   details.
          #
          #   @param rate_card_id [String] ID of the rate card whose named schedule is to be updated
          #
          #   @param schedule_name [String] The identifier for the schedule to be updated
          #
          #   @param starting_at [Time]
          #
          #   @param value [Object] The value to set for the named schedule. The structure of this object is specifi
          #
          #   @param ending_before [Time]
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
