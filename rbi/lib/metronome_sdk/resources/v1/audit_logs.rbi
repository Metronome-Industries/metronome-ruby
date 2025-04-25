# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class AuditLogs
        # Retrieves a range of audit logs. If no further audit logs are currently
        # available, the data array will be empty. As new audit logs are created,
        # subsequent requests using the same next_page value will be in the returned data
        # array, ensuring a continuous and uninterrupted reading of audit logs.
        sig do
          params(
            ending_before: Time,
            limit: Integer,
            next_page: String,
            resource_id: String,
            resource_type: String,
            sort: MetronomeSDK::Models::V1::AuditLogListParams::Sort::OrSymbol,
            starting_on: Time,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Internal::CursorPage[MetronomeSDK::Models::V1::AuditLogListResponse])
        end
        def list(
          # RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
          ending_before: nil,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Optional parameter that can be used to filter which audit logs are returned. If
          # you specify resource_id, you must also specify resource_type.
          resource_id: nil,
          # Optional parameter that can be used to filter which audit logs are returned. If
          # you specify resource_type, you must also specify resource_id.
          resource_type: nil,
          # Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
          sort: nil,
          # RFC 3339 timestamp of the earliest audit log to return. Cannot be used with
          # 'next_page'.
          starting_on: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
