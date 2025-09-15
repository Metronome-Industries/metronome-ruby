# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class AuditLogs
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::AuditLogListParams} for more details.
        #
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
        # - `resource_type`: The type of resource affected (e.g., customer, contract,
        #   invoice)
        # - `resource_id`: The specific resource identifier
        # - `action`: The operation performed
        # - `next_page`: Cursor for continuous log retrieval
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
        # - Resource filtering: Must specify both `resource_type` and `resource_id`
        #   together
        # - Sort order: Default is `date_asc`; use `date_desc` for newest first
        #
        # @overload list(ending_before: nil, limit: nil, next_page: nil, resource_id: nil, resource_type: nil, sort: nil, starting_on: nil, request_options: {})
        #
        # @param ending_before [Time] RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
        #
        # @param limit [Integer] Max number of results that should be returned
        #
        # @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        # @param resource_id [String] Optional parameter that can be used to filter which audit logs are returned. If
        #
        # @param resource_type [String] Optional parameter that can be used to filter which audit logs are returned. If
        #
        # @param sort [Symbol, MetronomeSDK::Models::V1::AuditLogListParams::Sort] Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
        #
        # @param starting_on [Time] RFC 3339 timestamp of the earliest audit log to return. Cannot be used with 'nex
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::AuditLogListResponse>]
        #
        # @see MetronomeSDK::Models::V1::AuditLogListParams
        def list(params = {})
          parsed, options = MetronomeSDK::V1::AuditLogListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/auditLogs",
            query: parsed,
            page: MetronomeSDK::Internal::CursorPage,
            model: MetronomeSDK::Models::V1::AuditLogListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
