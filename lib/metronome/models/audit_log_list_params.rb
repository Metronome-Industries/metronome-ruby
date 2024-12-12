# frozen_string_literal: true

module Metronome
  module Models
    class AuditLogListParams < Metronome::BaseModel
      # @!attribute [rw] ending_before
      #   RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute [rw] limit
      #   Max number of results that should be returned
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute [rw] next_page
      #   Cursor that indicates where the next page of results should start.
      #   @return [String]
      optional :next_page, String

      # @!attribute [rw] resource_id
      #   Optional parameter that can be used to filter which audit logs are returned. If you specify resource_id, you must also specify resource_type.
      #   @return [String]
      optional :resource_id, String

      # @!attribute [rw] resource_type
      #   Optional parameter that can be used to filter which audit logs are returned. If you specify resource_type, you must also specify resource_id.
      #   @return [String]
      optional :resource_type, String

      # @!attribute [rw] sort
      #   Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
      #   @return [Symbol, Metronome::Models::AuditLogListParams::Sort]
      optional :sort, enum: -> { Metronome::Models::AuditLogListParams::Sort }

      # @!attribute [rw] starting_on
      #   RFC 3339 timestamp of the earliest audit log to return. Cannot be used with 'next_page'.
      #   @return [Time]
      optional :starting_on, Time

      # Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
      class Sort < Metronome::Enum
        DATE_ASC = :date_asc
        DATE_DESC = :date_desc
      end
    end
  end
end
