# frozen_string_literal: true

module Metronome
  module Resources
    class Services
      # Fetches a list of services used by Metronome and the associated IP addresses. IP
      #   addresses are not necessarily unique between services. In most cases, IP
      #   addresses will appear in the list at least 30 days before they are used for the
      #   first time.
      #
      # @param params [Metronome::Models::ServiceListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Metronome::Models::ServiceListResponse]
      #
      def list(params = {})
        @client.request(
          method: :get,
          path: "services",
          model: Metronome::Models::ServiceListResponse,
          options: params[:request_options]
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
