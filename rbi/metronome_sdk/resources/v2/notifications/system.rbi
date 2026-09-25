# typed: strong

module MetronomeSDK
  module Resources
    class V2
      class Notifications
        class System
          # List available system notification types. You can enable these notifications
          # directly or use supported types to create offset notifications.
          sig do
            params(
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V2::Notifications::SystemListResponse
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
end
