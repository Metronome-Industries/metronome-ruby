# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class AuditLogs
        # Some parameter documentations has been truncated, see
        # {MetronomeSDK::Models::V1::AuditLogListParams} for more details.
        #
        # Retrieves a range of audit logs. If no further audit logs are currently
        # available, the data array will be empty. As new audit logs are created,
        # subsequent requests using the same next_page value will be in the returned data
        # array, ensuring a continuous and uninterrupted reading of audit logs.
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
        # ...
        #
        # @param resource_type [String] Optional parameter that can be used to filter which audit logs are returned. If
        # ...
        #
        # @param sort [Symbol, MetronomeSDK::Models::V1::AuditLogListParams::Sort] Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
        #
        # @param starting_on [Time] RFC 3339 timestamp of the earliest audit log to return. Cannot be used with 'nex
        # ...
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::AuditLogListResponse>]
        #
        # @see MetronomeSDK::Models::V1::AuditLogListParams
        def list(params = {})
          parsed, options = MetronomeSDK::Models::V1::AuditLogListParams.dump_request(params)
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
