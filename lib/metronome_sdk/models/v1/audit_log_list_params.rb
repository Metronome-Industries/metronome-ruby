# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::AuditLogs#list
      class AuditLogListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute ending_before
        #   RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!attribute limit
        #   Max number of results that should be returned
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute resource_id
        #   Optional parameter that can be used to filter which audit logs are returned. If
        #   you specify resource_id, you must also specify resource_type.
        #
        #   @return [String, nil]
        optional :resource_id, String

        # @!attribute resource_type
        #   Optional parameter that can be used to filter which audit logs are returned. If
        #   you specify resource_type, you must also specify resource_id.
        #
        #   @return [String, nil]
        optional :resource_type, String

        # @!attribute sort
        #   Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
        #
        #   @return [Symbol, MetronomeSDK::V1::AuditLogListParams::Sort, nil]
        optional :sort, enum: -> { MetronomeSDK::V1::AuditLogListParams::Sort }

        # @!attribute starting_on
        #   RFC 3339 timestamp of the earliest audit log to return. Cannot be used with
        #   'next_page'.
        #
        #   @return [Time, nil]
        optional :starting_on, Time

        # @!method initialize(ending_before: nil, limit: nil, next_page: nil, resource_id: nil, resource_type: nil, sort: nil, starting_on: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::AuditLogListParams} for more details.
        #
        #   @param ending_before [Time] RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
        #
        #   @param limit [Integer] Max number of results that should be returned
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param resource_id [String] Optional parameter that can be used to filter which audit logs are returned. If
        #
        #   @param resource_type [String] Optional parameter that can be used to filter which audit logs are returned. If
        #
        #   @param sort [Symbol, MetronomeSDK::V1::AuditLogListParams::Sort] Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
        #
        #   @param starting_on [Time] RFC 3339 timestamp of the earliest audit log to return. Cannot be used with 'nex
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
        module Sort
          extend MetronomeSDK::Internal::Type::Enum

          DATE_ASC = :date_asc
          DATE_DESC = :date_desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
