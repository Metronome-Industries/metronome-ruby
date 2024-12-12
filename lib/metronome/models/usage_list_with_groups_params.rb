# frozen_string_literal: true

module Metronome
  module Models
    class UsageListWithGroupsParams < Metronome::BaseModel
      # @!attribute [rw] billable_metric_id
      #   @return [String]
      required :billable_metric_id, String

      # @!attribute [rw] customer_id
      #   @return [String]
      required :customer_id, String

      # @!attribute [rw] window_size
      #   A window_size of "day" or "hour" will return the usage for the specified period segmented into daily or hourly aggregates. A window_size of "none" will return a single usage aggregate for the entirety of the specified period.
      #   @return [Symbol, Metronome::Models::UsageListWithGroupsParams::WindowSize]
      required :window_size, enum: -> { Metronome::Models::UsageListWithGroupsParams::WindowSize }

      # @!attribute [rw] limit
      #   Max number of results that should be returned
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute [rw] next_page
      #   Cursor that indicates where the next page of results should start.
      #   @return [String]
      optional :next_page, String

      # @!attribute [rw] current_period
      #   If true, will return the usage for the current billing period. Will return an error if the customer is currently uncontracted or starting_on and ending_before are specified when this is true.
      #   @return [Boolean]
      optional :current_period, Metronome::BooleanModel

      # @!attribute [rw] ending_before
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute [rw] group_by
      #   @return [Metronome::Models::UsageListWithGroupsParams::GroupBy]
      optional :group_by, -> { Metronome::Models::UsageListWithGroupsParams::GroupBy }

      # @!attribute [rw] starting_on
      #   @return [Time]
      optional :starting_on, Time

      # A window_size of "day" or "hour" will return the usage for the specified period segmented into daily or hourly aggregates. A window_size of "none" will return a single usage aggregate for the entirety of the specified period.
      class WindowSize < Metronome::Enum
        HOUR = :HOUR
        DAY = :DAY
        NONE = :NONE
      end

      class GroupBy < Metronome::BaseModel
        # @!attribute [rw] key
        #   The name of the group_by key to use
        #   @return [String]
        required :key, String

        # @!attribute [rw] values
        #   Values of the group_by key to return in the query. Omit this if you'd like all values for the key returned.
        #   @return [Array<String>]
        optional :values, Metronome::ArrayOf.new(String)

        # @!parse
        #   # Create a new instance of GroupBy from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :key The name of the group_by key to use
        #   #   @option data [Array<String>, nil] :values Values of the group_by key to return in the query. Omit this if you'd like all
        #   #     values for the key returned.
        #   def initialize(data = {}) = super
      end
    end
  end
end
