# frozen_string_literal: true

module Metronome
  module Resources
    class Services
      # @param client [Metronome::Client]
      def initialize(client:)
        @client = client
      end

      # Fetches a list of services used by Metronome and the associated IP addresses. IP
      #   addresses are not necessarily unique between services. In most cases, IP
      #   addresses will appear in the list at least 30 days before they are used for the
      #   first time.
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::ServiceListResponse]
      def list(opts = {})
        req = {
          method: :get,
          path: "/services",
          model: Metronome::Models::ServiceListResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
