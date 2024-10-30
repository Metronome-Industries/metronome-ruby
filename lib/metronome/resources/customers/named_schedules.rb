# frozen_string_literal: true

module Metronome
  module Resources
    class Customers
      class NamedSchedules
        # @param client [Metronome::Client]
        def initialize(client:)
          @client = client
        end

        # Get a named schedule for the given customer. This endpoint's availability is
        #   dependent on your client's configuration.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :customer_id ID of the customer whose named schedule is to be retrieved
        #   @option params [String] :schedule_name The identifier for the schedule to be retrieved
        #   @option params [Time, nil] :covering_date If provided, at most one schedule segment will be returned (the one that covers
        #     this date). If not provided, all segments will be returned.
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Metronome::Models::NamedScheduleRetrieveResponse]
        def retrieve(params = {}, opts = {})
          req = {
            method: :post,
            path: "/customers/getNamedSchedule",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Metronome::Models::NamedScheduleRetrieveResponse
          }
          @client.request(req, opts)
        end

        # Update a named schedule for the given customer. This endpoint's availability is
        #   dependent on your client's configuration.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :customer_id ID of the customer whose named schedule is to be updated
        #   @option params [String] :schedule_name The identifier for the schedule to be updated
        #   @option params [Time] :starting_at
        #   @option params [Object] :value The value to set for the named schedule. The structure of this object is
        #     specific to the named schedule.
        #   @option params [Time, nil] :ending_before
        #
        # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [nil]
        def update(params = {}, opts = {})
          req = {
            method: :post,
            path: "/customers/updateNamedSchedule",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: NilClass
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
