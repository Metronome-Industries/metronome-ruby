# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V2
      class Notifications
        # @return [MetronomeSDK::Resources::V2::Notifications::Offset]
        attr_reader :offset

        # @return [MetronomeSDK::Resources::V2::Notifications::System]
        attr_reader :system_

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
          @offset = MetronomeSDK::Resources::V2::Notifications::Offset.new(client: client)
          @system_ = MetronomeSDK::Resources::V2::Notifications::System.new(client: client)
        end
      end
    end
  end
end
