# frozen_string_literal: true

module Metronome
  module Models
    class AuditLogListParams < Metronome::BaseModel
      # @!attribute [r] ending_before
      #   RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
      #
      #   @return [Time, nil]
      optional :ending_before, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :ending_before

      # @!attribute [r] limit
      #   Max number of results that should be returned
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String, nil]
      optional :next_page, String

      # @!parse
      #   # @return [String]
      #   attr_writer :next_page

      # @!attribute [r] resource_id
      #   Optional parameter that can be used to filter which audit logs are returned. If you specify resource_id, you must also specify resource_type.
      #
      #   @return [String, nil]
      optional :resource_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :resource_id

      # @!attribute [r] resource_type
      #   Optional parameter that can be used to filter which audit logs are returned. If you specify resource_type, you must also specify resource_id.
      #
      #   @return [String, nil]
      optional :resource_type, String

      # @!parse
      #   # @return [String]
      #   attr_writer :resource_type

      # @!attribute [r] sort
      #   Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
      #
      #   @return [Symbol, Metronome::Models::AuditLogListParams::Sort, nil]
      optional :sort, enum: -> { Metronome::Models::AuditLogListParams::Sort }

      # @!parse
      #   # @return [Symbol, Metronome::Models::AuditLogListParams::Sort]
      #   attr_writer :sort

      # @!attribute [r] starting_on
      #   RFC 3339 timestamp of the earliest audit log to return. Cannot be used with 'next_page'.
      #
      #   @return [Time, nil]
      optional :starting_on, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :starting_on

      # @!parse
      #   # @param ending_before [String] RFC 3339 timestamp (exclusive). Cannot be used with 'next_page'.
      #   #
      #   # @param limit [Integer] Max number of results that should be returned
      #   #
      #   # @param next_page [String] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param resource_id [String] Optional parameter that can be used to filter which audit logs are returned. If
      #   #   you specify resource_id, you must also specify resource_type.
      #   #
      #   # @param resource_type [String] Optional parameter that can be used to filter which audit logs are returned. If
      #   #   you specify resource_type, you must also specify resource_id.
      #   #
      #   # @param sort [String] Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
      #   #
      #   # @param starting_on [String] RFC 3339 timestamp of the earliest audit log to return. Cannot be used with
      #   #   'next_page'.
      #   #
      #   def initialize(
      #     ending_before: nil,
      #     limit: nil,
      #     next_page: nil,
      #     resource_id: nil,
      #     resource_type: nil,
      #     sort: nil,
      #     starting_on: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # Sort order by timestamp, e.g. date_asc or date_desc. Defaults to date_asc.
      #
      # @example
      # ```ruby
      # case sort
      # in :date_asc
      #   # ...
      # in :date_desc
      #   # ...
      # end
      # ```
      class Sort < Metronome::Enum
        DATE_ASC = :date_asc
        DATE_DESC = :date_desc

        finalize!
      end
    end
  end
end
