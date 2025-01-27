# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class NamedScheduleRetrieveParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

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

        # @!attribute [r] covering_date
        #   If provided, at most one schedule segment will be returned (the one that covers
        #     this date). If not provided, all segments will be returned.
        #
        #   @return [Time, nil]
        optional :covering_date, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :covering_date

        # @!parse
        #   # @param customer_id [String]
        #   # @param schedule_name [String]
        #   # @param covering_date [Time]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(customer_id:, schedule_name:, covering_date: nil, request_options: {}, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
