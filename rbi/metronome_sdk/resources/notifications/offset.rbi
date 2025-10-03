# typed: strong

module MetronomeSDK
  module Resources
    class Notifications
      class Offset
        # List offset lifecycle event notification configurations. These are user-created
        # notifications that trigger at a specified time offset relative to lifecycle
        # events. Returns a maximum of 400 results per request.
        sig do
          params(
            archive_filter:
              MetronomeSDK::Notifications::OffsetListParams::ArchiveFilter::OrSymbol,
            cursor: String,
            limit: Float,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(MetronomeSDK::Models::Notifications::OffsetListResponse)
        end
        def list(
          # Filter options for the notification configurations. If not provided, defaults to
          # NOT_ARCHIVED.
          archive_filter: nil,
          cursor: nil,
          limit: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
