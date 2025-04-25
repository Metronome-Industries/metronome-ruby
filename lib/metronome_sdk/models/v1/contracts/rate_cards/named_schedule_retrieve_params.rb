# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules#retrieve
          class NamedScheduleRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            # @!attribute contract_id
            #   ID of the contract whose named schedule is to be retrieved
            #
            #   @return [String]
            required :contract_id, String

            # @!attribute customer_id
            #   ID of the customer whose named schedule is to be retrieved
            #
            #   @return [String]
            required :customer_id, String

            # @!attribute schedule_name
            #   The identifier for the schedule to be retrieved
            #
            #   @return [String]
            required :schedule_name, String

            # @!attribute covering_date
            #   If provided, at most one schedule segment will be returned (the one that covers
            #   this date). If not provided, all segments will be returned.
            #
            #   @return [Time, nil]
            optional :covering_date, Time

            # @!method initialize(contract_id:, customer_id:, schedule_name:, covering_date: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveParams}
            #   for more details.
            #
            #   @param contract_id [String] ID of the contract whose named schedule is to be retrieved
            #
            #   @param customer_id [String] ID of the customer whose named schedule is to be retrieved
            #
            #   @param schedule_name [String] The identifier for the schedule to be retrieved
            #
            #   @param covering_date [Time] If provided, at most one schedule segment will be returned (the one that covers
            #   ...
            #
            #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
