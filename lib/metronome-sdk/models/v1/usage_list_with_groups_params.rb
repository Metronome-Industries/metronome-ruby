# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class UsageListWithGroupsParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute billable_metric_id
        #
        #   @return [String]
        required :billable_metric_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute window_size
        #   A window_size of "day" or "hour" will return the usage for the specified period
        #     segmented into daily or hourly aggregates. A window_size of "none" will return a
        #     single usage aggregate for the entirety of the specified period.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::UsageListWithGroupsParams::WindowSize]
        required :window_size, enum: -> { MetronomeSDK::Models::V1::UsageListWithGroupsParams::WindowSize }

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

        # @!attribute [r] current_period
        #   If true, will return the usage for the current billing period. Will return an
        #     error if the customer is currently uncontracted or starting_on and ending_before
        #     are specified when this is true.
        #
        #   @return [Boolean, nil]
        optional :current_period, MetronomeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :current_period

        # @!attribute [r] ending_before
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :ending_before

        # @!attribute [r] group_by
        #
        #   @return [MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy, nil]
        optional :group_by, -> { MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy }

        # @!parse
        #   # @return [MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy]
        #   attr_writer :group_by

        # @!attribute [r] starting_on
        #
        #   @return [Time, nil]
        optional :starting_on, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :starting_on

        # @!parse
        #   # @param billable_metric_id [String]
        #   # @param customer_id [String]
        #   # @param window_size [Symbol, MetronomeSDK::Models::V1::UsageListWithGroupsParams::WindowSize]
        #   # @param limit [Integer]
        #   # @param next_page [String]
        #   # @param current_period [Boolean]
        #   # @param ending_before [Time]
        #   # @param group_by [MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy]
        #   # @param starting_on [Time]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
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

        class GroupBy < MetronomeSDK::BaseModel
          # @!attribute key
          #   The name of the group_by key to use
          #
          #   @return [String]
          required :key, String

          # @!attribute [r] values
          #   Values of the group_by key to return in the query. Omit this if you'd like all
          #     values for the key returned.
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
