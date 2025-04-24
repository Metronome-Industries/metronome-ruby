# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class NamedScheduleRetrieveResponse < MetronomeSDK::BaseModel
            # @!attribute data
            #
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveResponse::Data>]
            required :data,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveResponse::Data] }

            # @!parse
            #   # @param data [Array<MetronomeSDK::Models::V1::Contracts::RateCards::NamedScheduleRetrieveResponse::Data>]
            #   #
            #   def initialize(data:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Data < MetronomeSDK::BaseModel
              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute value
              #
              #   @return [Object]
              required :value, MetronomeSDK::Unknown

              # @!attribute [r] ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :ending_before

              # @!parse
              #   # @param starting_at [Time]
              #   # @param value [Object]
              #   # @param ending_before [Time]
              #   #
              #   def initialize(starting_at:, value:, ending_before: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
