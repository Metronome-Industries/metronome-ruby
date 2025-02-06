# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      class NamedSchedules
        # Get a named schedule for the given rate card. This endpoint's availability is
        #   dependent on your client's configuration.
        #
        # @param params [Metronome::Models::Contracts::NamedScheduleRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :rate_card_id ID of the rate card whose named schedule is to be retrieved
        #
        #   @option params [String] :schedule_name The identifier for the schedule to be retrieved
        #
        #   @option params [Time] :covering_date If provided, at most one schedule segment will be returned (the one that covers
        #     this date). If not provided, all segments will be returned.
        #
        #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Metronome::Models::Contracts::NamedScheduleRetrieveResponse]
        #
        def retrieve(params)
          parsed, options = Metronome::Models::Contracts::NamedScheduleRetrieveParams.dump_request(params)
          @client.request(
            method: :post,
            path: "contract-pricing/rate-cards/getNamedSchedule",
            body: parsed,
            model: Metronome::Models::Contracts::NamedScheduleRetrieveResponse,
            options: options
          )
        end

        # Update a named schedule for the given rate card. This endpoint's availability is
        #   dependent on your client's configuration.
        #
        # @param params [Metronome::Models::Contracts::NamedScheduleUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :rate_card_id ID of the rate card whose named schedule is to be updated
        #
        #   @option params [String] :schedule_name The identifier for the schedule to be updated
        #
        #   @option params [Time] :starting_at
        #
        #   @option params [Object] :value The value to set for the named schedule. The structure of this object is
        #     specific to the named schedule.
        #
        #   @option params [Time] :ending_before
        #
        #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def update(params)
          parsed, options = Metronome::Models::Contracts::NamedScheduleUpdateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "contract-pricing/rate-cards/updateNamedSchedule",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @param client [Metronome::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
