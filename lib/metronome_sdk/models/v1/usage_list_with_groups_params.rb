# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Usage#list_with_groups
      class UsageListWithGroupsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

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
        #   segmented into daily or hourly aggregates. A window_size of "none" will return a
        #   single usage aggregate for the entirety of the specified period.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::UsageListWithGroupsParams::WindowSize]
        required :window_size, enum: -> { MetronomeSDK::V1::UsageListWithGroupsParams::WindowSize }

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

        # @!attribute current_period
        #   If true, will return the usage for the current billing period. Will return an
        #   error if the customer is currently uncontracted or starting_on and ending_before
        #   are specified when this is true.
        #
        #   @return [Boolean, nil]
        optional :current_period, MetronomeSDK::Internal::Type::Boolean

        # @!attribute ending_before
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!attribute group_by
        #
        #   @return [MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy, nil]
        optional :group_by, -> { MetronomeSDK::V1::UsageListWithGroupsParams::GroupBy }

        # @!attribute starting_on
        #
        #   @return [Time, nil]
        optional :starting_on, Time

        # @!method initialize(billable_metric_id:, customer_id:, window_size:, limit: nil, next_page: nil, current_period: nil, ending_before: nil, group_by: nil, starting_on: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::UsageListWithGroupsParams} for more details.
        #
        #   @param billable_metric_id [String]
        #
        #   @param customer_id [String]
        #
        #   @param window_size [Symbol, MetronomeSDK::Models::V1::UsageListWithGroupsParams::WindowSize] A window_size of "day" or "hour" will return the usage for the specified period
        #
        #   @param limit [Integer] Max number of results that should be returned
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param current_period [Boolean] If true, will return the usage for the current billing period. Will return an er
        #
        #   @param ending_before [Time]
        #
        #   @param group_by [MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy]
        #
        #   @param starting_on [Time]
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # A window_size of "day" or "hour" will return the usage for the specified period
        # segmented into daily or hourly aggregates. A window_size of "none" will return a
        # single usage aggregate for the entirety of the specified period.
        module WindowSize
          extend MetronomeSDK::Internal::Type::Enum

          HOUR = :HOUR
          DAY = :DAY
          NONE = :NONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class GroupBy < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute key
          #   The name of the group_by key to use
          #
          #   @return [String]
          required :key, String

          # @!attribute values
          #   Values of the group_by key to return in the query. Omit this if you'd like all
          #   values for the key returned.
          #
          #   @return [Array<String>, nil]
          optional :values, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(key:, values: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy} for more details.
          #
          #   @param key [String] The name of the group_by key to use
          #
          #   @param values [Array<String>] Values of the group_by key to return in the query. Omit this if you'd like all v
        end
      end
    end
  end
end
