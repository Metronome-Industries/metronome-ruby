# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Usage#list
      class UsageListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

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
        #   segmented into daily or hourly aggregates. A window_size of "none" will return a
        #   single usage aggregate for the entirety of the specified period.
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::UsageListParams::WindowSize]
        required :window_size, enum: -> { MetronomeSDK::V1::UsageListParams::WindowSize }

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute billable_metrics
        #   A list of billable metrics to fetch usage for. If absent, all billable metrics
        #   will be returned.
        #
        #   @return [Array<MetronomeSDK::Models::V1::UsageListParams::BillableMetric>, nil]
        optional :billable_metrics,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::UsageListParams::BillableMetric]
                 }

        # @!attribute customer_ids
        #   A list of Metronome customer IDs to fetch usage for. If absent, usage for all
        #   customers will be returned.
        #
        #   @return [Array<String>, nil]
        optional :customer_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(ending_before:, starting_on:, window_size:, next_page: nil, billable_metrics: nil, customer_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::UsageListParams} for more details.
        #
        #   @param ending_before [Time]
        #
        #   @param starting_on [Time]
        #
        #   @param window_size [Symbol, MetronomeSDK::Models::V1::UsageListParams::WindowSize] A window_size of "day" or "hour" will return the usage for the specified period
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param billable_metrics [Array<MetronomeSDK::Models::V1::UsageListParams::BillableMetric>] A list of billable metrics to fetch usage for. If absent, all billable metrics w
        #
        #   @param customer_ids [Array<String>] A list of Metronome customer IDs to fetch usage for. If absent, usage for all cu
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

        class BillableMetric < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute group_by
          #
          #   @return [MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy, nil]
          optional :group_by, -> { MetronomeSDK::V1::UsageListParams::BillableMetric::GroupBy }

          # @!method initialize(id:, group_by: nil)
          #   @param id [String]
          #   @param group_by [MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy]

          # @see MetronomeSDK::Models::V1::UsageListParams::BillableMetric#group_by
          class GroupBy < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute key
            #   The name of the group_by key to use
            #
            #   @return [String]
            required :key, String

            # @!attribute values
            #   Values of the group_by key to return in the query. If this field is omitted, all
            #   available values will be returned, up to a maximum of 200.
            #
            #   @return [Array<String>, nil]
            optional :values, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(key:, values: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy} for more
            #   details.
            #
            #   @param key [String] The name of the group_by key to use
            #
            #   @param values [Array<String>] Values of the group_by key to return in the query. If this field is omitted, all
          end
        end
      end
    end
  end
end
