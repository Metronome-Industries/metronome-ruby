# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class Webhooks
      # @api private
      #
      # @param client [MetronomeSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
