# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class AuditLogs
        # Retrieves a range of audit logs. If no further audit logs are currently
        #   available, the data array will be empty. As new audit logs are created,
        #   subsequent requests using the same next_page value will be in the returned data
        #   array, ensuring a continuous and uninterrupted reading of audit logs.
        #
        # @param params [MetronomeSDK::Models::V1::AuditLogListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Time] :ending_before RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
        #
        #   @option params [Integer] :limit Max number of results that should be returned
        #
        #   @option params [String] :next_page Cursor that indicates where the next page of results should start.
        #
        #   @option params [String] :resource_id Optional parameter that can be used to filter which audit logs are returned. If
        #     you specify resource_id, you must also specify resource_type.
        #
        #   @option params [String] :resource_type Optional parameter that can be used to filter which audit logs are returned. If
        #     you specify resource_type, you must also specify resource_id.
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::AuditLogListParams::Sort] :sort Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
        #
        #   @option params [Time] :starting_on RFC 3339 timestamp of the earliest audit log to return. Cannot be used with
        #     'next_page'.
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::CursorPage<MetronomeSDK::Models::V1::AuditLogListResponse>]
        #
        def list(params = {})
          parsed, options = MetronomeSDK::Models::V1::AuditLogListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "v1/auditLogs",
            query: parsed,
            page: MetronomeSDK::CursorPage,
            model: MetronomeSDK::Models::V1::AuditLogListResponse,
            options: options
          )
        end

        # @param client [MetronomeSDK::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
