# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class NamedScheduleRetrieveParams < Metronome::BaseModel
        # @!attribute rate_card_id
        #   ID of the rate card whose named schedule is to be retrieved
        #
        #   @return [String]
        required :rate_card_id, String

        # @!attribute schedule_name
        #   The identifier for the schedule to be retrieved
        #
        #   @return [String]
        required :schedule_name, String

        # @!attribute covering_date
        #   If provided, at most one schedule segment will be returned (the one that covers this date). If not provided, all segments will be returned.
        #
        #   @return [Time]
        optional :covering_date, Time

        # @!parse
        #   # @param rate_card_id [String] ID of the rate card whose named schedule is to be retrieved
        #   #
        #   # @param schedule_name [String] The identifier for the schedule to be retrieved
        #   #
        #   # @param covering_date [String, nil] If provided, at most one schedule segment will be returned (the one that covers
        #   #   this date). If not provided, all segments will be returned.
        #   #
        #   def initialize(rate_card_id:, schedule_name:, covering_date: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
