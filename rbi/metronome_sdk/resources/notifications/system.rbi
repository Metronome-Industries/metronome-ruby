# typed: strong

module MetronomeSDK
  module Resources
    class Notifications
      class System
        # List available system lifecycle event types for notifications. These are
        # read-only event types that can be used when creating offset notifications.
        sig do
          params(request_options: MetronomeSDK::RequestOptions::OrHash).returns(
            MetronomeSDK::Models::Notifications::SystemListResponse
          )
        end
        def list(request_options: {})
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
