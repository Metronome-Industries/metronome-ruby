# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules#list
          class NamedScheduleListParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            # @!attribute customer_id
            #   ID of the customer to list contract named schedules for
            #
            #   @return [String]
            required :customer_id, String

            # @!attribute contract_id
            #   Optional ID of a contract to scope the results to a single contract
            #
            #   @return [String, nil]
            optional :contract_id, String

            # @!attribute covering_date
            #   If provided, result contains at most one segment covering this date for each
            #   schedule.
            #
            #   @return [Time, nil]
            optional :covering_date, Time

            # @!attribute limit
            #   Maximum number of named schedules to return.
            #
            #   @return [Integer, nil]
            optional :limit, Integer

            # @!attribute next_page
            #   Cursor for pagination. Use the value from a previous response's next_page.
            #
            #   @return [String, nil]
            optional :next_page, String

            # @!attribute properties
            #   Optional key-value filters. A schedule matches when it contains at least this
            #   subset of properties.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :properties, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute schedule_name
            #   Optional filter to scope the results to a single schedule name
            #
            #   @return [String, nil]
            optional :schedule_name, String

            # @!method initialize(customer_id:, contract_id: nil, covering_date: nil, limit: nil, next_page: nil, properties: nil, schedule_name: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListParams} for
            #   more details.
            #
            #   @param customer_id [String] ID of the customer to list contract named schedules for
            #
            #   @param contract_id [String] Optional ID of a contract to scope the results to a single contract
            #
            #   @param covering_date [Time] If provided, result contains at most one segment covering this date for each sch
            #
            #   @param limit [Integer] Maximum number of named schedules to return.
            #
            #   @param next_page [String] Cursor for pagination. Use the value from a previous response's next_page.
            #
            #   @param properties [Hash{Symbol=>String}] Optional key-value filters. A schedule matches when it contains at least this su
            #
            #   @param schedule_name [String] Optional filter to scope the results to a single schedule name
            #
            #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
