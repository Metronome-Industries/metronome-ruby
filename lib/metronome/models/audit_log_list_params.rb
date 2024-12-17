# frozen_string_literal: true

module Metronome
  module Models
    class AuditLogListParams < Metronome::BaseModel
      # @!attribute ending_before
      #   RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
      #
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute limit
      #   Max number of results that should be returned
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String]
      optional :next_page, String

      # @!attribute resource_id
      #   Optional parameter that can be used to filter which audit logs are returned. If you specify resource_id, you must also specify resource_type.
      #
      #   @return [String]
      optional :resource_id, String

      # @!attribute resource_type
      #   Optional parameter that can be used to filter which audit logs are returned. If you specify resource_type, you must also specify resource_id.
      #
      #   @return [String]
      optional :resource_type, String

      # @!attribute sort
      #   Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
      #
      #   @return [Symbol, Metronome::Models::AuditLogListParams::Sort]
      optional :sort, enum: -> { Metronome::Models::AuditLogListParams::Sort }

      # @!attribute starting_on
      #   RFC 3339 timestamp of the earliest audit log to return. Cannot be used with 'next_page'.
      #
      #   @return [Time]
      optional :starting_on, Time

      # @!parse
      #   # @param ending_before [String, nil] RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
      #   #
      #   # @param limit [Integer, nil] Max number of results that should be returned
      #   #
      #   # @param next_page [String, nil] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param resource_id [String, nil] Optional parameter that can be used to filter which audit logs are returned. If
      #   #   you specify resource_id, you must also specify resource_type.
      #   #
      #   # @param resource_type [String, nil] Optional parameter that can be used to filter which audit logs are returned. If
      #   #   you specify resource_type, you must also specify resource_id.
      #   #
      #   # @param sort [String, nil] Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
      #   #
      #   # @param starting_on [String, nil] RFC 3339 timestamp of the earliest audit log to return. Cannot be used with
      #   #   'next_page'.
      #   #
      #   def initialize(
      #     ending_before: nil,
      #     limit: nil,
      #     next_page: nil,
      #     resource_id: nil,
      #     resource_type: nil,
      #     sort: nil,
      #     starting_on: nil
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :date_asc
      #   # ...
      # in :date_desc
      #   # ...
      # end
      # ```
      class Sort < Metronome::Enum
        DATE_ASC = :date_asc
        DATE_DESC = :date_desc
      end
    end
  end
end
