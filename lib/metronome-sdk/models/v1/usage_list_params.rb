# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class UsageListParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute ending_before
        #
        #   @return [Time]
        required :ending_before, Time

        # @!attribute starting_on
        #
        #   @return [Time]
        required :starting_on, Time

        # @!attribute window_size
        #   A window_size of "day" or "hour" will return the usage for the specified period
        #     segmented into daily or hourly aggregates. A window_size of "none" will return a
        #     single usage aggregate for the entirety of the specified period.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::UsageListParams::WindowSize]
        required :window_size, enum: -> { MetronomeSDK::Models::V1::UsageListParams::WindowSize }

        # @!attribute [r] next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!parse
        #   # @return [String]
        #   attr_writer :next_page

        # @!attribute [r] billable_metrics
        #   A list of billable metrics to fetch usage for. If absent, all billable metrics
        #     will be returned.
        #
        #   @return [Array<MetronomeSDK::Models::V1::UsageListParams::BillableMetric>, nil]
        optional :billable_metrics,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::UsageListParams::BillableMetric] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::UsageListParams::BillableMetric>]
        #   attr_writer :billable_metrics

        # @!attribute [r] customer_ids
        #   A list of Metronome customer IDs to fetch usage for. If absent, usage for all
        #     customers will be returned.
        #
        #   @return [Array<String>, nil]
        optional :customer_ids, MetronomeSDK::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :customer_ids

        # @!parse
        #   # @param ending_before [Time]
        #   # @param starting_on [Time]
        #   # @param window_size [Symbol, MetronomeSDK::Models::V1::UsageListParams::WindowSize]
        #   # @param next_page [String]
        #   # @param billable_metrics [Array<MetronomeSDK::Models::V1::UsageListParams::BillableMetric>]
        #   # @param customer_ids [Array<String>]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     ending_before:,
        #     starting_on:,
        #     window_size:,
        #     next_page: nil,
        #     billable_metrics: nil,
        #     customer_ids: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        # @abstract
        #
        # A window_size of "day" or "hour" will return the usage for the specified period
        #   segmented into daily or hourly aggregates. A window_size of "none" will return a
        #   single usage aggregate for the entirety of the specified period.
        #
        # @example
        # ```ruby
        # case window_size
        # in :HOUR
        #   # ...
        # in :DAY
        #   # ...
        # in :NONE
        #   # ...
        # end
        # ```
        class WindowSize < MetronomeSDK::Enum
          HOUR = :HOUR
          DAY = :DAY
          NONE = :NONE

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        class BillableMetric < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute [r] group_by
          #
          #   @return [MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy, nil]
          optional :group_by, -> { MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy]
          #   attr_writer :group_by

          # @!parse
          #   # @param id [String]
          #   # @param group_by [MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy]
          #   #
          #   def initialize(id:, group_by: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class GroupBy < MetronomeSDK::BaseModel
            # @!attribute key
            #   The name of the group_by key to use
            #
            #   @return [String]
            required :key, String

            # @!attribute [r] values
            #   Values of the group_by key to return in the query. If this field is omitted, all
            #     available values will be returned, up to a maximum of 200.
            #
            #   @return [Array<String>, nil]
            optional :values, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :values

            # @!parse
            #   # @param key [String]
            #   # @param values [Array<String>]
            #   #
            #   def initialize(key:, values: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end
        end
      end
    end
  end
end
