# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules#list
          class NamedScheduleListResponse < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute contract_id
            #   ID of the contract this named schedule belongs to.
            #
            #   @return [String]
            required :contract_id, String

            # @!attribute schedule_name
            #   Name of the schedule.
            #
            #   @return [String]
            required :schedule_name, String

            # @!attribute segments
            #
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse::Segment>]
            required :segments,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse::Segment] }

            # @!attribute properties
            #   Properties on this named schedule.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :properties, MetronomeSDK::Internal::Type::HashOf[String]

            # @!method initialize(contract_id:, schedule_name:, segments:, properties: nil)
            #   @param contract_id [String] ID of the contract this named schedule belongs to.
            #
            #   @param schedule_name [String] Name of the schedule.
            #
            #   @param segments [Array<MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleListResponse::Segment>]
            #
            #   @param properties [Hash{Symbol=>String}] Properties on this named schedule.

            class Segment < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute value
              #
              #   @return [Object]
              required :value, MetronomeSDK::Internal::Type::Unknown

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!method initialize(starting_at:, value:, ending_before: nil)
              #   @param starting_at [Time]
              #   @param value [Object]
              #   @param ending_before [Time]
            end
          end
        end
      end
    end
  end
end
