# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules#update
          class NamedScheduleUpdateParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            # @!attribute contract_id
            #   ID of the contract whose named schedule is to be updated
            #
            #   @return [String]
            required :contract_id, String

            # @!attribute customer_id
            #   ID of the customer whose named schedule is to be updated
            #
            #   @return [String]
            required :customer_id, String

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

            # @!method initialize(contract_id:, customer_id:, schedule_name:, starting_at:, value:, ending_before: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleUpdateParams} for
            #   more details.
            #
            #   @param contract_id [String] ID of the contract whose named schedule is to be updated
            #
            #   @param customer_id [String] ID of the customer whose named schedule is to be updated
            #
            #   @param schedule_name [String] The identifier for the schedule to be updated
            #
            #   @param starting_at [Time]
            #
            #   @param value [Object] The value to set for the named schedule. The structure of this object is specifi
            #   ...
            #
            #   @param ending_before [Time]
            #
            #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
