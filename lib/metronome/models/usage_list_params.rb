# frozen_string_literal: true

module Metronome
  module Models
    class UsageListParams < Metronome::BaseModel
      # @!attribute ending_before
      #
      #   @return [Time]
      required :ending_before, Time

      # @!attribute starting_on
      #
      #   @return [Time]
      required :starting_on, Time

      # @!attribute window_size
      #   A window_size of "day" or "hour" will return the usage for the specified period segmented into daily or hourly aggregates. A window_size of "none" will return a single usage aggregate for the entirety of the specified period.
      #
      #   @return [Symbol, Metronome::Models::UsageListParams::WindowSize]
      required :window_size, enum: -> { Metronome::Models::UsageListParams::WindowSize }

      # @!attribute next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String]
      optional :next_page, String

      # @!attribute billable_metrics
      #   A list of billable metrics to fetch usage for. If absent, all billable metrics will be returned.
      #
      #   @return [Array<Metronome::Models::UsageListParams::BillableMetric>]
      optional :billable_metrics,
               Metronome::ArrayOf.new(-> { Metronome::Models::UsageListParams::BillableMetric })

      # @!attribute customer_ids
      #   A list of Metronome customer IDs to fetch usage for. If absent, usage for all customers will be returned.
      #
      #   @return [Array<String>]
      optional :customer_ids, Metronome::ArrayOf.new(String)

      # A window_size of "day" or "hour" will return the usage for the specified period segmented into daily or hourly aggregates. A window_size of "none" will return a single usage aggregate for the entirety of the specified period.
      class WindowSize < Metronome::Enum
        HOUR = :HOUR
        DAY = :DAY
        NONE = :NONE
      end

      class BillableMetric < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute group_by
        #
        #   @return [Metronome::Models::UsageListParams::BillableMetric::GroupBy]
        optional :group_by, -> { Metronome::Models::UsageListParams::BillableMetric::GroupBy }

        # @!parse
        #   # @param id [String]
        #   # @param group_by [Object, nil]
        #   #
        #   def initialize(id:, group_by: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class GroupBy < Metronome::BaseModel
          # @!attribute key
          #   The name of the group_by key to use
          #
          #   @return [String]
          required :key, String

          # @!attribute values
          #   Values of the group_by key to return in the query. If this field is omitted, all available values will be returned, up to a maximum of 200.
          #
          #   @return [Array<String>]
          optional :values, Metronome::ArrayOf.new(String)

          # @!parse
          #   # @param key [String] The name of the group_by key to use
          #   #
          #   # @param values [Array<String>, nil] Values of the group_by key to return in the query. If this field is omitted, all
          #   #   available values will be returned, up to a maximum of 200.
          #   #
          #   def initialize(key:, values: nil) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
