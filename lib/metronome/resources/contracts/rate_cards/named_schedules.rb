# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      class RateCards
        class NamedSchedules
          # Get a named schedule for the given contract. This endpoint's availability is
          #   dependent on your client's configuration.
          #
          # @param params [Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :contract_id ID of the contract whose named schedule is to be retrieved
          #
          #   @option params [String] :customer_id ID of the customer whose named schedule is to be retrieved
          #
          #   @option params [String] :schedule_name The identifier for the schedule to be retrieved
          #
          #   @option params [Time] :covering_date If provided, at most one schedule segment will be returned (the one that covers
          #     this date). If not provided, all segments will be returned.
          #
          #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
          #
          # @return [Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveResponse]
          #
          def retrieve(params)
            parsed, options = Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "contracts/getNamedSchedule",
              body: parsed,
              model: Metronome::Models::Contracts::RateCards::NamedScheduleRetrieveResponse,
              options: options
            )
          end

          # Update a named schedule for the given contract. This endpoint's availability is
          #   dependent on your client's configuration.
          #
          # @param params [Metronome::Models::Contracts::RateCards::NamedScheduleUpdateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [String] :contract_id ID of the contract whose named schedule is to be updated
          #
          #   @option params [String] :customer_id ID of the customer whose named schedule is to be updated
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
          #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
          #
          # @return [nil]
          #
          def update(params)
            parsed, options = Metronome::Models::Contracts::RateCards::NamedScheduleUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "contracts/updateNamedSchedule",
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
end
