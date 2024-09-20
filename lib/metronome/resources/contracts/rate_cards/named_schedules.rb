# frozen_string_literal: true

module Metronome
  module Resources
    class Contracts
      class RateCards
        class NamedSchedules
          def initialize(client:)
            @client = client
          end

          # Get a named schedule for the given contract. This endpoint's availability is
          #   dependent on your client's configuration.
          # 
          # @param params [Hash] Attributes to send in this request.
          # @option params [String] :contract_id ID of the contract whose named schedule is to be retrieved
          # @option params [String] :customer_id ID of the customer whose named schedule is to be retrieved
          # @option params [String] :schedule_name The identifier for the schedule to be retrieved
          # @option params [DateTime] :covering_date If provided, at most one schedule segment will be returned (the one that covers
          #   this date). If not provided, all segments will be returned.
          # 
          # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
          # 
          # @return [Metronome::Models::NamedScheduleRetrieveResponse]
          def retrieve(params = {}, opts = {})
            req = {}
            req[:method] = :post
            req[:path] = "/contracts/getNamedSchedule"
            req[:body] = params
            req[:model] = Metronome::Models::NamedScheduleRetrieveResponse
            @client.request(req, opts)
          end

          # Update a named schedule for the given contract. This endpoint's availability is
          #   dependent on your client's configuration.
          # 
          # @param params [Hash] Attributes to send in this request.
          # @option params [String] :contract_id ID of the contract whose named schedule is to be updated
          # @option params [String] :customer_id ID of the customer whose named schedule is to be updated
          # @option params [String] :schedule_name The identifier for the schedule to be updated
          # @option params [DateTime] :starting_at
          # @option params [Object] :value The value to set for the named schedule. The structure of this object is
          #   specific to the named schedule.
          # @option params [DateTime] :ending_before
          # 
          # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
          # 
          # @return [nil]
          def update(params = {}, opts = {})
            req = {}
            req[:method] = :post
            req[:path] = "/contracts/updateNamedSchedule"
            req[:body] = params
            req[:model] = NilClass
            @client.request(req, opts)
          end
        end
      end
    end
  end
end
