# frozen_string_literal: true

module Metronome
  module Resources
    class PricingUnits
      # List all pricing units (known in the API by the legacy term "credit types").
      #
      # @param params [Metronome::Models::PricingUnitListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :limit Max number of results that should be returned
      #
      #   @option params [String] :next_page Cursor that indicates where the next page of results should start.
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::CursorPage<Metronome::Models::PricingUnitListResponse>]
      #
      def list(params = {})
        parsed, options = Metronome::Models::PricingUnitListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "credit-types/list",
          query: parsed,
          page: Metronome::CursorPage,
          model: Metronome::Models::PricingUnitListResponse,
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
