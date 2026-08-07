# typed: strong

module MetronomeSDK
  module Resources
    class V2
      class Notifications
        sig { returns(MetronomeSDK::Resources::V2::Notifications::Offset) }
        attr_reader :offset

        sig { returns(MetronomeSDK::Resources::V2::Notifications::System) }
        attr_reader :system_

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
