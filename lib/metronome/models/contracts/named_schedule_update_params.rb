# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class NamedScheduleUpdateParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

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
        #     specific to the named schedule.
        #
        #   @return [Object]
        required :value, Metronome::Unknown

        # @!attribute [r] ending_before
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :ending_before

        # @!parse
        #   # @param rate_card_id [String]
        #   # @param schedule_name [String]
        #   # @param starting_at [Time]
        #   # @param value [Object]
        #   # @param ending_before [Time]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(rate_card_id:, schedule_name:, starting_at:, value:, ending_before: nil, request_options: {}, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
