# frozen_string_literal: true

module Metronome
  module Models
    class UsageListWithGroupsParams < Metronome::BaseModel
      # @!attribute billable_metric_id
      #
      #   @return [String]
      required :billable_metric_id, String

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute window_size
      #   A window_size of "day" or "hour" will return the usage for the specified period segmented into daily or hourly aggregates. A window_size of "none" will return a single usage aggregate for the entirety of the specified period.
      #
      #   @return [Symbol, Metronome::Models::UsageListWithGroupsParams::WindowSize]
      required :window_size, enum: -> { Metronome::Models::UsageListWithGroupsParams::WindowSize }

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

      # @!attribute current_period
      #   If true, will return the usage for the current billing period. Will return an error if the customer is currently uncontracted or starting_on and ending_before are specified when this is true.
      #
      #   @return [Boolean]
      optional :current_period, Metronome::BooleanModel

      # @!attribute ending_before
      #
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute group_by
      #
      #   @return [Metronome::Models::UsageListWithGroupsParams::GroupBy]
      optional :group_by, -> { Metronome::Models::UsageListWithGroupsParams::GroupBy }

      # @!attribute starting_on
      #
      #   @return [Time]
      optional :starting_on, Time

      # @!parse
      #   # @param billable_metric_id [String]
      #   #
      #   # @param customer_id [String]
      #   #
      #   # @param window_size [String] A window_size of "day" or "hour" will return the usage for the specified period
      #   #   segmented into daily or hourly aggregates. A window_size of "none" will return a
      #   #   single usage aggregate for the entirety of the specified period.
      #   #
      #   # @param limit [Integer] Max number of results that should be returned
      #   #
      #   # @param next_page [String] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param current_period [Boolean] If true, will return the usage for the current billing period. Will return an
      #   #   error if the customer is currently uncontracted or starting_on and ending_before
      #   #   are specified when this is true.
      #   #
      #   # @param ending_before [String]
      #   #
      #   # @param group_by [Metronome::Models::UsageListWithGroupsParams::GroupBy]
      #   #
      #   # @param starting_on [String]
      #   #
      #   def initialize(
      #     billable_metric_id:,
      #     customer_id:,
      #     window_size:,
      #     limit: nil,
      #     next_page: nil,
      #     current_period: nil,
      #     ending_before: nil,
      #     group_by: nil,
      #     starting_on: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # A window_size of "day" or "hour" will return the usage for the specified period segmented into daily or hourly aggregates. A window_size of "none" will return a single usage aggregate for the entirety of the specified period.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :HOUR
      #   # ...
      # in :DAY
      #   # ...
      # in :NONE
      #   # ...
      # end
      # ```
      class WindowSize < Metronome::Enum
        HOUR = :HOUR
        DAY = :DAY
        NONE = :NONE

        finalize!
      end

      class GroupBy < Metronome::BaseModel
        # @!attribute key
        #   The name of the group_by key to use
        #
        #   @return [String]
        required :key, String

        # @!attribute values
        #   Values of the group_by key to return in the query. Omit this if you'd like all values for the key returned.
        #
        #   @return [Array<String>]
        optional :values, Metronome::ArrayOf[String]

        # @!parse
        #   # @param key [String] The name of the group_by key to use
        #   #
        #   # @param values [Array<String>] Values of the group_by key to return in the query. Omit this if you'd like all
        #   #   values for the key returned.
        #   #
        #   def initialize(key:, values: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
