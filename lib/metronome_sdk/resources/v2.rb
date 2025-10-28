# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V2
      # @return [MetronomeSDK::Resources::V2::Contracts]
      attr_reader :contracts

      # @api private
      #
      # @param client [MetronomeSDK::Client]
      def initialize(client:)
        @client = client
        @contracts = MetronomeSDK::Resources::V2::Contracts.new(client: client)
      end
    end
  end
end
