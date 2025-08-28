# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class AuditLogs
        # Get a comprehensive audit trail of all operations performed in your Metronome
        # account, whether initiated through the API, web interface, or automated
        # processes. This endpoint provides detailed logs of who did what and when,
        # enabling compliance reporting, security monitoring, and operational
        # troubleshooting across all interaction channels.
        #
        # ### Use this endpoint to:
        #
        # - Monitor all account activity for security and compliance purposes
        # - Track configuration changes regardless of source (API, UI, or system)
        # - Investigate issues by reviewing historical operations
        #
        # ### Key response fields:
        #
        # An array of AuditLog objects containing:
        #
        # - id: Unique identifier for the audit log entry
        # - timestamp: When the action occurred (RFC 3339 format)
        # - actor: Information about who performed the action
        # - request: Details including request ID, IP address, and user agent
        # - resource_type: The type of resource affected (e.g., customer, contract,
        #   invoice)
        # - resource_id: The specific resource identifier
        # - action: The operation performed
        # - next_page: Cursor for continuous log retrieval
        #
        # ### Usage guidelines:
        #
        # - Continuous retrieval: The next_page token enables uninterrupted log
        #   streaming—save it between requests to ensure no logs are missed
        # - Empty responses: An empty data array means no new logs yet; continue polling
        #   with the same next_page token
        # - Date filtering:
        #   - `starting_on`: Earliest logs to return (inclusive)
        #   - `ending_before`: Latest logs to return (exclusive)
        #   - Cannot be used with `next_page`
        # - Resource filtering: Must specify both resource_type and resource_id together
        # - Sort order: Default is date_asc; use date_desc for newest first
        sig do
          params(
            ending_before: Time,
            limit: Integer,
            next_page: String,
            resource_id: String,
            resource_type: String,
            sort: MetronomeSDK::V1::AuditLogListParams::Sort::OrSymbol,
            starting_on: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::AuditLogListResponse
            ]
          )
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
