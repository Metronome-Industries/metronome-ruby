# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class NamedScheduleUpdateParams < Metronome::BaseModel
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
        #   The value to set for the named schedule. The structure of this object is specific to the named schedule.
        #
        #   @return [Object]
        required :value, Metronome::Unknown

        # @!attribute ending_before
        #
        #   @return [Time]
        optional :ending_before, Time
      end
    end
  end
end
