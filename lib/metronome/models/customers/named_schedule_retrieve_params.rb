# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class NamedScheduleRetrieveParams < Metronome::BaseModel
        # @!attribute customer_id
        #   ID of the customer whose named schedule is to be retrieved
        #   @return [String]
        required :customer_id, String

        # @!attribute schedule_name
        #   The identifier for the schedule to be retrieved
        #   @return [String]
        required :schedule_name, String

        # @!attribute covering_date
        #   If provided, at most one schedule segment will be returned (the one that covers this date). If not provided, all segments will be returned.
        #   @return [Time]
        optional :covering_date, Time
      end
    end
  end
end
