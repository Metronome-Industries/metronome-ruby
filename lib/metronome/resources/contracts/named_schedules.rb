# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      class NamedSchedules
        # @param client [Metronome::Client]
        def initialize(client:)
          @client = client
        end

        # Get a named schedule for the given rate card. This endpoint's availability is
        #   dependent on your client's configuration.
        #
        # @param params [Hash{Symbol => Object}, Metronome::Models::Contracts::NamedScheduleRetrieveParams] Attributes to send in this request.
        #
        #   @option params [String] :rate_card_id ID of the rate card whose named schedule is to be retrieved
        #
        #   @option params [String] :schedule_name The identifier for the schedule to be retrieved
        #
        #   @option params [Time] :covering_date If provided, at most one schedule segment will be returned (the one that covers
        #     this date). If not provided, all segments will be returned.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::Contracts::NamedScheduleRetrieveResponse]
        def retrieve(params = {}, opts = {})
          parsed = Metronome::Models::Contracts::NamedScheduleRetrieveParams.dump(params)
          req = {
            method: :post,
            path: "contract-pricing/rate-cards/getNamedSchedule",
            body: parsed,
            model: Metronome::Models::Contracts::NamedScheduleRetrieveResponse
          }
          @client.request(req, opts)
        end

        # Update a named schedule for the given rate card. This endpoint's availability is
        #   dependent on your client's configuration.
        #
        # @param params [Hash{Symbol => Object}, Metronome::Models::Contracts::NamedScheduleUpdateParams] Attributes to send in this request.
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
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        def update(params = {}, opts = {})
          parsed = Metronome::Models::Contracts::NamedScheduleUpdateParams.dump(params)
          req = {
            method: :post,
            path: "contract-pricing/rate-cards/updateNamedSchedule",
            body: parsed,
            model: NilClass
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
