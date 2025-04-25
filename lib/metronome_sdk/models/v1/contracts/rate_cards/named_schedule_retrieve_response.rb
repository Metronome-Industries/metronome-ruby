# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules#retrieve
          class NamedScheduleRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveResponse::Data>]
            required :data,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveResponse::Data] }

            # @!method initialize(data:)
            #   @param data [Array<MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveResponse::Data>]

            class Data < MetronomeSDK::Internal::Type::BaseModel
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
