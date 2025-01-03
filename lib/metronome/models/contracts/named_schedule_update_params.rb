# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class NamedScheduleUpdateParams < Metronome::BaseModel
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
        #   The value to set for the named schedule. The structure of this object is specific to the named schedule.
        #
        #   @return [Object]
        required :value, Metronome::Unknown

        # @!attribute ending_before
        #
        #   @return [Time]
        optional :ending_before, Time

        # @!parse
        #   # @param rate_card_id [String] ID of the rate card whose named schedule is to be updated
        #   #
        #   # @param schedule_name [String] The identifier for the schedule to be updated
        #   #
        #   # @param starting_at [String]
        #   #
        #   # @param value [Object] The value to set for the named schedule. The structure of this object is
        #   #   specific to the named schedule.
        #   #
        #   # @param ending_before [String]
        #   #
        #   def initialize(rate_card_id:, schedule_name:, starting_at:, value:, ending_before: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
